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
      final emailAddressStr = emailAddress.getOrCrash();
      final passwordStr = password.getOrCrash();
      final phoneNumberStr = phoneNumber.getOrCrash();
      final firstNameStr = firstName.getOrCrash();
      final lastNameStr = lastName.getOrCrash();
      final usernameStr = username.getOrCrash();

      final String basicAuth =
          'Basic ${base64.encode(utf8.encode('${dotenv.env['WOO_USERNAME']}:${dotenv.env['WOO_PASSWORD']}'))}';

      final data = json.encode(<String, dynamic>{
        'email': emailAddressStr,
        'username': usernameStr,
        'password': passwordStr,
        'first_name': firstNameStr,
        'last_name': lastNameStr,
        'billing': {
          'first_name': firstNameStr,
          'last_name': lastNameStr,
          'email': emailAddressStr,
          'phone': phoneNumberStr
        },
        'shipping': {
          'first_name': firstNameStr,
          'last_name': lastNameStr,
          'phone': phoneNumberStr
        }
      });

      final Response response = await post(
        Uri.parse("${dotenv.env['WOO_API_URL']}customers"),
        headers: <String, String>{
          'authorization': basicAuth,
          "Content-Type": "application/json"
        },
        body: data,
      );

      if (response.statusCode == 201) {
        return right(unit);
      } else {
        return left(const ApiFailure.serverError());
      }
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
          // print(response.body);
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
