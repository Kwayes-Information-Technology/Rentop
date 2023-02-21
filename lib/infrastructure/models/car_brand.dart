class CarBrand {
  final int id;
  final String name;
  final String slug;
  final String image;

  CarBrand({
    required this.id,
    required this.name,
    required this.slug,
    required this.image,
  });

  static List<CarBrand> fromData(List<dynamic> data) {
    final List<CarBrand> carBrands = [];
    for (final element in data) {
      carBrands.add(
        CarBrand(
          id: int.parse(element['term_id'].toString()),
          name: element['name'],
          slug: element['slug'],
          image: "assets/images/icons/car_brands/${element['slug']}.png",
        ),
      );
    }
    return carBrands;
  }
}

// List<CarBrand> tempCarBrands = [
//   CarBrand(
//     brand: 'Tesla',
//     brandUrl:
//         "https://www.freepnglogos.com/uploads/tesla-logo-png-silver-10.png",
//   ),
//   CarBrand(
//     brand: 'Rolls Royce',
//     brandUrl: "https://www.carlogos.org/logo/Rolls-Royce-logo-2048x2048.png",
//   ),
//   CarBrand(
//     brand: 'Nissan',
//     brandUrl:
//         "https://upload.wikimedia.org/wikipedia/commons/8/8c/Nissan_logo.png",
//   ),
// ];
