class CarCategory {
  final int id;
  final String name;
  final String slug;
  final String icon;

  CarCategory({
    required this.id,
    required this.name,
    required this.slug,
    required this.icon,
  });

  static List<CarCategory> fromData(List<dynamic> data) {
    final List<CarCategory> carCategories = [];
    for (final element in data) {
      carCategories.add(
        CarCategory(
          id: int.parse(element['term_id'].toString()),
          name: element['name'],
          slug: element['slug'],
          icon: "assets/images/icons/car_categories/${element['slug']}.png",
        ),
      );
    }
    return carCategories;
  }
}

// List<CarCategory> tempCarTypes = [
//   CarCategory(
//     icon: "http://rentop.co/wp-content/uploads/2022/08/car-150x150.png",
//     title: 'All',
//   ),
//   CarCategory(
//     icon: "http://rentop.co/wp-content/uploads/2023/01/noun-luxury-car.png",
//     title: 'Luxury cars',
//   ),
//   CarCategory(
//     icon: "http://rentop.co/wp-content/uploads/2023/01/suv-car.png",
//     title: "SUV",
//   ),
// ];
