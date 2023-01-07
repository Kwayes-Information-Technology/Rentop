class CarSpecification {
  final String icon;
  final String name;
  final String id;

  CarSpecification({
    required this.icon,
    required this.name,
    required this.id,
  });
}

List<CarSpecification> tempCarSpecifications = [
  CarSpecification(
    icon: 'https://cdn-icons-png.flaticon.com/512/3347/3347701.png',
    name: 'Auto Transmission',
    id: 'auto-transmission',
  ),
  CarSpecification(
    icon: 'https://cdn-icons-png.flaticon.com/512/1042/1042311.png',
    name: 'Fits 4 Passengers',
    id: 'fits-4-passengers',
  ),
  CarSpecification(
    icon: 'https://cdn-icons-png.flaticon.com/512/1063/1063376.png',
    name: 'Fits 3 Bag(s)',
    id: 'fits-3-bag',
  ),
  CarSpecification(
    icon: 'https://cdn-icons-png.flaticon.com/512/3381/3381635.png',
    name: 'GCC Specs: Yes',
    id: 'gcc-specs',
  ),
];
