import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:rentop/domain/core/api_failure.dart';
import 'package:rentop/domain/core/value_objects.dart';
import 'package:rentop/domain/repositories/i_auth_facade.dart';
import 'package:rentop/infrastructure/models/jwt.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: IAuthFacade)
class AuthFacade implements IAuthFacade {
  AuthFacade();

  final String basicAuth =
      'Basic ${base64.encode(utf8.encode('${dotenv.env['EMAIL']}:${dotenv.env['PASSWORD']}'))}';

  @override
  Future<Either<ApiFailure, Unit>> signUpWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
    required PhoneNumber phoneNumber,
    required FirstName firstName,
    required LastName lastName,
    required Username username,
  }) async {
    try {
      return right(unit);
    } catch (e) {
      return left(const ApiFailure.serverError());
    }
  }

  @override
  Future<Either<ApiFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    try {
      final emailAddressStr = emailAddress.getOrCrash();
      final passwordStr = password.getOrCrash();
      const String url = "https://rentop.co/wp-json/jwt-auth/v1/token";
      final Response response = await post(
        Uri.parse(url),
        body: {
          'username': emailAddressStr,
          'password': passwordStr,
        },
      );
      final result = JWT.fromJson(jsonDecode(response.body));
      if (response.statusCode == 200) {
        if (result.success! && result.data!.token != null) {
          final prefs = await SharedPreferences.getInstance();
          await prefs.setString('token', result.data!.token!);
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
  Future<Either<ApiFailure, Unit>> validateUserToken() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final String? token = prefs.getString('token');
      if (token != null && token.isNotEmpty) {
        const String url =
            'https://rentop.co/wp-json/jwt-auth/v1/token/validate';
        final Response response = await post(Uri.parse(url), headers: {
          'Authorization': 'Bearer $token',
        });
        if (response.statusCode == 200) {
          print(response.body);
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
  Future<void> signOut() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('token');
  }
}
