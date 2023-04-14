import 'package:dartz/dartz.dart';
import 'package:rentop/domain/core/api_failure.dart';
import 'package:rentop/infrastructure/models/conversation.dart';

abstract class IMessagesRepository {
  Future<Option<ConversationRequestResponse>> getMessages({
    required int pageNumber,
  });
  Future<Either<ApiFailure, Unit>> sendMessage({
    required int conversationId,
    required String message,
  });
  Future<Either<ApiFailure, Unit>> seenMessages({
    required int conversationId,
  });
  Future<Either<ApiFailure, int>> createConversation({
    required int authorId,
    required int listingId,
    required String title,
    required String message,
  });
}
