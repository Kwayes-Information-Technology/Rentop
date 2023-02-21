import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:rentop/domain/repositories/i_profile_repository.dart';
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
      final String basicAuth =
          'Basic ${base64.encode(utf8.encode('${dotenv.env['WOO_USERNAME']}:${dotenv.env['WOO_PASSWORD']}'))}';
      final Response response = await get(
        Uri.parse(
          "${dotenv.env['WOO_API_URL']}customers/$userId",
        ),
        headers: <String, String>{
          'authorization': basicAuth,
          "Content-Type": "application/json"
        },
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
}
