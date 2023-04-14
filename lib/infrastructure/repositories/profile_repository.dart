import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:rentop/domain/core/api_failure.dart';
import 'package:rentop/domain/repositories/i_profile_repository.dart';
import 'package:rentop/infrastructure/models/car.dart';
import 'package:rentop/infrastructure/models/profile.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: IProfileRepository)
class ProfileRepository implements IProfileRepository {
  ProfileRepository();

  @override
  Future<Option<Profile>> getProfile() async {
    final prefs = await SharedPreferences.getInstance();
    final int? userId = prefs.getInt('userId');
    if (userId != null) {
      final Response response = await get(
        Uri.parse(
          "${dotenv.env['RENTOP_API_URL']}user/$userId",
        ),
      );
      if (response.statusCode == 200) {
        return optionOf(Profile.fromJson(jsonDecode(response.body)));
      } else {
        return optionOf(null);
      }
    } else {
      return optionOf(null);
    }
  }

  @override
  Future<Either<ApiFailure, Unit>> addFavourite({required String carId}) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final int? userId = prefs.getInt('userId');
      if (userId != null) {
        final Response response = await post(
          Uri.parse(
            "${dotenv.env['RENTOP_API_URL']}favourites/$userId/$carId",
          ),
        );
        if (response.statusCode == 200) {
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
  Future<Either<ApiFailure, Unit>> removeFavourite(
      {required String carId}) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final int? userId = prefs.getInt('userId');
      if (userId != null) {
        final Response response = await delete(
          Uri.parse(
            "${dotenv.env['RENTOP_API_URL']}favourites/$userId/$carId",
          ),
        );
        if (response.statusCode == 200) {
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
  Future<Either<ApiFailure, Unit>> updateBillingInfo({
    required String firstName,
    required String lastName,
    required String companyName,
    required String country,
    required String address1,
    required String address2,
    required String city,
    required String state,
    required String postcode,
    required String email,
    required String phoneNumber,
  }) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final int? userId = prefs.getInt('userId');
      if (userId != null) {
        final Response response = await post(
            Uri.parse(
              "${dotenv.env['RENTOP_API_URL']}user/$userId/billing",
            ),
            headers: {"Content-Type": "application/json"},
            body: json.encode({
              "billing_first_name": firstName,
              "billing_last_name": lastName,
              "billing_phone": phoneNumber,
              "billing_company": companyName,
              "billing_address_1": address1,
              "billing_address_2": address2,
              "billing_city": city,
              "billing_country": country,
              "billing_state": state,
              "billing_postcode": postcode,
              "billing_email": email,
            }));
        final responseBody = jsonDecode(response.body);
        if (responseBody['done'] == true) {
          return right(unit);
        } else {
          return left(const ApiFailure.serverError());
        }
      } else {
        return left(const ApiFailure.serverError());
      }
    } catch (e) {
      print(e.toString());
      return left(const ApiFailure.serverError());
    }
  }

  @override
  Future<Either<ApiFailure, Unit>> updateShippingInfo({
    required String firstName,
    required String lastName,
    required String companyName,
    required String country,
    required String address1,
    required String address2,
    required String city,
    required String state,
    required String postcode,
  }) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final int? userId = prefs.getInt('userId');
      if (userId != null) {
        final Response response = await post(
            Uri.parse(
              "${dotenv.env['RENTOP_API_URL']}user/$userId/shipping",
            ),
            headers: {"Content-Type": "application/json"},
            body: json.encode({
              "shipping_first_name": firstName,
              "shipping_last_name": lastName,
              "shipping_company": companyName,
              "shipping_address_1": address1,
              "shipping_address_2": address2,
              "shipping_city": city,
              "shipping_country": country,
              "shipping_state": state,
              "shipping_postcode": postcode,
            }));
        final responseBody = jsonDecode(response.body);
        if (responseBody['done'] == true) {
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
  Future<Either<ApiFailure, Unit>> updateAccountDetails({
    required String firstName,
    required String lastName,
    required String displayName,
  }) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final int? userId = prefs.getInt('userId');
      if (userId != null) {
        final Response response = await post(
          Uri.parse(
            "${dotenv.env['RENTOP_API_URL']}user/$userId/account",
          ),
          headers: {"Content-Type": "application/json"},
          body: json.encode({
            "first_name": firstName,
            "last_name": lastName,
            "display_name": displayName,
          }),
        );
        final responseBody = jsonDecode(response.body);
        if (responseBody['done'] == true) {
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
  Future<Option<List<Car>>> getFavourites() async {
    final prefs = await SharedPreferences.getInstance();
    final int? userId = prefs.getInt('userId');
    if (userId != null) {
      final Response response = await get(
          Uri.parse("${dotenv.env['RENTOP_API_URL']}favourites/$userId"));
      if (response.statusCode == 200) {
        return optionOf(Car.fromData(jsonDecode(response.body)['favourites']));
      } else {
        return optionOf(null);
      }
    } else {
      return optionOf(null);
    }
  }
}
