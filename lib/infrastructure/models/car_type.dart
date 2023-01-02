class CarType {
  final String title;
  final String icon;

  CarType({
    required this.icon,
    required this.title,
  });
}

List<CarType> tempCarTypes = [
  CarType(
    icon: "https://rentop.co/wp-content/uploads/2022/08/car-150x150.png",
    title: 'All',
  ),
  CarType(
    icon: "https://rentop.co/wp-content/uploads/2023/01/noun-luxury-car.png",
    title: 'Luxury cars',
  ),
  CarType(
    icon: "https://rentop.co/wp-content/uploads/2023/01/suv-car.png",
    title: "SUV",
  ),
];
