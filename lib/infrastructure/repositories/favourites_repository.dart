import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:rentop/domain/repositories/i_favourites_repository.dart';
import 'package:rentop/infrastructure/models/car.dart';

@LazySingleton(as: IFavouritesRepository)
class FavouritesRepository implements IFavouritesRepository {
  FavouritesRepository();

  @override
  Future<Option<CarRequestResponse>> getFavourites({
    required int pageNumber,
    required String favouritesId,
  }) async {
    String favouriteIdString = favouritesId;
    favouriteIdString = favouriteIdString.replaceAll("(", '');
    favouriteIdString = favouriteIdString.replaceAll(")", '');
    final String url =
        "${dotenv.env['RENTOP_API_URL']}cars?page=$pageNumber&favourites=$favouriteIdString";
    final Response response = await get(Uri.parse(url));
    if (response.statusCode == 200) {
      return optionOf(CarRequestResponse.fromData(jsonDecode(response.body)));
    } else {
      return optionOf(null);
    }
  }
}
