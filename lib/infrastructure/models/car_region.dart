class CarRegion {
  final int id;
  final String name;
  final String slug;

  CarRegion({
    required this.id,
    required this.name,
    required this.slug,
  });

  static List<CarRegion> fromData(List<dynamic> data) {
    final List<CarRegion> carRegions = [];
    for (final element in data) {
      carRegions.add(
        CarRegion(
          id: int.parse(element['term_id'].toString()),
          name: element['name'],
          slug: element['slug'],
        ),
      );
    }
    return carRegions;
  }
}
