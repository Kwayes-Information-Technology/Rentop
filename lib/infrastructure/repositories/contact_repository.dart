import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:rentop/domain/core/api_failure.dart';
import 'package:rentop/domain/core/value_objects.dart';
import 'package:rentop/domain/repositories/i_contact_repository.dart';

@LazySingleton(as: IContactRepository)
class ContactRepository implements IContactRepository {
  ContactRepository();

  @override
  Future<Either<ApiFailure, Unit>> sendContactForm({
    required FirstName firstName,
    required LastName lastName,
    required EmailAddress email,
    required PhoneNumber phone,
    required String message,
  }) async {
    try {
      final firstNameStr = firstName.getOrCrash();
      final lastNameStr = lastName.getOrCrash();
      final emailStr = email.getOrCrash();
      final phoneStr = phone.getOrCrash();
      final data = {
        "firstName": firstNameStr,
        "lastName": lastNameStr,
        "email": emailStr,
        "phoneNumber": phoneStr,
        "message": message,
      };
      final Response response = await post(
        Uri.parse("${dotenv.env['RENTOP_API_URL']}contactForm"),
        headers: {"Content-Type": "application/json"},
        body: json.encode(data),
      );
      final responseBody = jsonDecode(response.body);
      if (responseBody['done'] == true) {
        return right(unit);
      } else {
        return left(const ApiFailure.serverError());
      }
    } catch (e) {
      return left(const ApiFailure.serverError());
    }
  }
}
