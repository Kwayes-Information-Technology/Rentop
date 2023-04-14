import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:rentop/domain/core/api_failure.dart';
import 'package:rentop/domain/core/reset_password_api_failure.dart';
import 'package:rentop/domain/core/value_objects.dart';
import 'package:rentop/domain/repositories/i_auth_facade.dart';
import 'package:rentop/infrastructure/models/jwt.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: IAuthFacade)
class AuthFacade implements IAuthFacade {
  AuthFacade();

  @override
  Future<Either<ResetPasswordApiFailure, Unit>> resetPassword({
    required EmailAddress emailAddress,
    required ResetCode code,
    required Password password,
  }) async {
    try {
      final emailAddressStr = emailAddress.getOrCrash();
      final codeStr = code.getOrCrash();
      final passwordStr = password.getOrCrash();

      final data = json.encode(<String, dynamic>{
        'email': emailAddressStr,
        'code': codeStr,
        'password': passwordStr,
      });

      final Response response = await post(
        Uri.parse("${dotenv.env['RESET_PASSWORD_API_URL']}set-password"),
        headers: <String, String>{
          "Content-Type": "application/json",
        },
        body: data,
      );
      if (response.statusCode == 200) {
        return right(unit);
      } else if (response.statusCode == 500) {
        final errorCode = jsonDecode(response.body)['code'];
        switch (errorCode) {
          case 'bad_email':
            return left(const ResetPasswordApiFailure.badEmail());
          case 'bad_request':
            return left(const ResetPasswordApiFailure.badRequest());
          default:
            return left(const ResetPasswordApiFailure.serverError());
        }
      } else {
        return left(const ResetPasswordApiFailure.serverError());
      }
    } catch (_) {
      return left(const ResetPasswordApiFailure.serverError());
    }
  }

  @override
  Future<Either<ResetPasswordApiFailure, Unit>> sendResetCode({
    required EmailAddress emailAddress,
  }) async {
    try {
      final emailAddressStr = emailAddress.getOrCrash();

      final data = json.encode(<String, dynamic>{
        'email': emailAddressStr,
      });

      final Response response = await post(
        Uri.parse("${dotenv.env['RESET_PASSWORD_API_URL']}reset-password"),
        headers: <String, String>{"Content-Type": "application/json"},
        body: data,
      );

      if (response.statusCode == 200) {
        return right(unit);
      } else if (response.statusCode == 500) {
        final errorCode = jsonDecode(response.body)['code'];
        switch (errorCode) {
          case 'bad_email':
            return left(const ResetPasswordApiFailure.badEmail());
          case 'bad_request':
            return left(const ResetPasswordApiFailure.badRequest());
          default:
            return left(const ResetPasswordApiFailure.serverError());
        }
      } else {
        return left(const ResetPasswordApiFailure.serverError());
      }
    } catch (e) {
      return left(const ResetPasswordApiFailure.serverError());
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
      const String url = "http://rentop.co/wp-json/jwt-auth/v1/token";
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
          await prefs.setInt('userId', result.data!.id!);
          await OneSignal.shared.setExternalUserId(result.data!.id!.toString());
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
    await prefs.remove('userId');
    await OneSignal.shared.removeExternalUserId();
  }

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
        await OneSignal.shared
            .setExternalUserId(jsonDecode(response.body)['id'].toString());
        return right(unit);
      } else {
        return left(const ApiFailure.serverError());
      }
    } catch (e) {
      return left(const ApiFailure.serverError());
    }
  }

  @override
  Future<Either<ResetPasswordApiFailure, Unit>> validateResetCode({
    required EmailAddress emailAddress,
    required ResetCode code,
  }) async {
    try {
      final emailAddressStr = emailAddress.getOrCrash();
      final codeStr = code.getOrCrash();

      final data = json.encode(<String, dynamic>{
        'email': emailAddressStr,
        'code': codeStr,
      });
      final Response response = await post(
        Uri.parse("${dotenv.env['RESET_PASSWORD_API_URL']}validate-code"),
        headers: <String, String>{
          "Content-Type": "application/json",
        },
        body: data,
      );

      if (response.statusCode == 200) {
        return right(unit);
      } else if (response.statusCode == 500) {
        final errorCode = jsonDecode(response.body)['code'];
        switch (errorCode) {
          case 'bad_email':
            return left(const ResetPasswordApiFailure.badEmail());
          case 'bad_request':
            return left(const ResetPasswordApiFailure.badRequest());
          default:
            return left(const ResetPasswordApiFailure.serverError());
        }
      } else {
        return left(const ResetPasswordApiFailure.serverError());
      }
    } catch (_) {
      return left(const ResetPasswordApiFailure.serverError());
    }
  }

  @override
  Future<Either<ApiFailure, Unit>> validateUserToken() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final String? token = prefs.getString('token');
      if (token != null && token.isNotEmpty) {
        const String url =
            'http://rentop.co/wp-json/jwt-auth/v1/token/validate';
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
}
