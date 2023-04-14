import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:rentop/domain/core/api_failure.dart';
import 'package:rentop/domain/repositories/i_messages_repository.dart';
import 'package:rentop/infrastructure/models/conversation.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: IMessagesRepository)
class MessagesRepository implements IMessagesRepository {
  MessagesRepository();

  @override
  Future<Option<ConversationRequestResponse>> getMessages({
    required int pageNumber,
  }) async {
    final prefs = await SharedPreferences.getInstance();
    final int? userId = prefs.getInt('userId');
    if (userId != null) {
      final Response response = await get(Uri.parse(
          "${dotenv.env['RENTOP_API_URL']}messages?id=$userId&page=$pageNumber"));
      if (response.statusCode == 200) {
        return optionOf(
            ConversationRequestResponse.fromData(jsonDecode(response.body)));
      } else {
        return optionOf(null);
      }
    } else {
      return optionOf(null);
    }
  }

  @override
  Future<Either<ApiFailure, Unit>> seenMessages({
    required int conversationId,
  }) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final int? userId = prefs.getInt('userId');
      if (userId != null) {
        final Response response = await post(Uri.parse(
            "${dotenv.env['RENTOP_API_URL']}messages/$conversationId/$userId"));
        if (jsonDecode(response.body)['done'] == true) {
          return right(unit);
        } else {
          return left(const ApiFailure.serverError());
        }
      } else {
        return left(const ApiFailure.serverError());
      }
    } catch (e) {
      return left(const ApiFailure.serverError());
    }
  }

  @override
  Future<Either<ApiFailure, Unit>> sendMessage({
    required int conversationId,
    required String message,
  }) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final int? userId = prefs.getInt('userId');
      if (userId != null) {
        final Response response = await put(Uri.parse(
            "${dotenv.env['RENTOP_API_URL']}messages/$conversationId/$userId?message=$message"));
        if (jsonDecode(response.body)['done'] == true) {
          return right(unit);
        } else {
          return left(const ApiFailure.serverError());
        }
      } else {
        return left(const ApiFailure.serverError());
      }
    } catch (e) {
      return left(const ApiFailure.serverError());
    }
  }

  @override
  Future<Either<ApiFailure, int>> createConversation({
    required int authorId,
    required int listingId,
    required String title,
    required String message,
  }) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final int? userId = prefs.getInt('userId');
      if (userId != null) {
        final data = {
          "user_id": userId,
          "author_id": authorId,
          "listing_id": listingId,
          "title": title,
          "message": message
        };
        final body = json.encode(data);
        final Response response = await post(
          Uri.parse("${dotenv.env['RENTOP_API_URL']}messages/create"),
          headers: {"Content-Type": "application/json"},
          body: body,
        );
        final responseBody = jsonDecode(response.body);
        if (responseBody['done'] == true) {
          return right(responseBody['conversation_id']);
        } else {
          return left(const ApiFailure.serverError());
        }
      } else {
        return left(const ApiFailure.serverError());
      }
    } catch (e) {
      return left(const ApiFailure.serverError());
    }
  }
}
