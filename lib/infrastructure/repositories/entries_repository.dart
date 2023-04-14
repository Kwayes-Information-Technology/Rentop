import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:rentop/domain/repositories/i_entries_facade.dart';
import 'package:rentop/infrastructure/models/entry.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: IEntriesRepository)
class EntriesRepository implements IEntriesRepository {
  EntriesRepository();

  @override
  Future<Option<List<Entry>>> getEntries() async {
    final prefs = await SharedPreferences.getInstance();
    final int? userId = prefs.getInt('userId');
    if (userId != null) {
      final Response response =
          await get(Uri.parse("${dotenv.env['RENTOP_API_URL']}orders/$userId"));
      if (response.statusCode == 200) {
        return optionOf(Entry.fromData(jsonDecode(response.body)['orders']));
      } else {
        return optionOf(null);
      }
    } else {
      return optionOf(null);
    }
  }
}
