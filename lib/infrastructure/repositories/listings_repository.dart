import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:rentop/domain/repositories/i_listings_facade.dart';
import 'package:rentop/infrastructure/models/listings.dart';

@LazySingleton(as: IListingsRepository)
class ListingsRepository implements IListingsRepository {
  ListingsRepository();

  @override
  Future<Option<Listings>> getListings() async {
    final Response response =
        await get(Uri.parse("${dotenv.env['RENTOP_API_URL']}listings"));
    if (response.statusCode == 200) {
      return optionOf(Listings.fromData(jsonDecode(response.body)));
    } else {
      return optionOf(null);
    }
  }
}
