import 'package:rentop/infrastructure/models/car_specification.dart';

class Car {
  final int id;
  final int author;
  final List<String> images;
  final int price;
  final String name;
  final String content;
  final String location;
  final List<CarSpecification> carSpecifications;
  final double? rating;

  Car({
    required this.id,
    required this.author,
    required this.content,
    required this.images,
    required this.name,
    required this.price,
    required this.location,
    required this.carSpecifications,
    required this.rating,
  });

  static List<Car> fromData(List<dynamic> data) {
    final List<Car> cars = [];
    for (final element in data) {
      cars.add(
        Car(
          id: element['ID'],
          author: element['post_author'],
          images: [
            'https://rentop.co/wp-content/uploads/2022/08/0j63tx57lni8osqf1r9e2wkcbdgp4zma.jpeg',
            'https://rentop.co/wp-content/uploads/2022/08/ujngs6hw4l5vickx80repbz1397oa2mf.jpeg',
            'https://rentop.co/wp-content/uploads/2022/08/x27roh8dena9qcu5pswj30fv6igk1ztl.jpeg',
            'https://rentop.co/wp-content/uploads/2022/08/bo8gyq4m9kr620th1nja35cxdwfpsv7z.jpeg',
            'https://rentop.co/wp-content/uploads/2022/08/ogeuh9l4pijr5kzfq361tyx7wdnbs20a.jpeg'
          ],
          name: element['post_title'],
          content: element['post_content'],
          price: 100,
          location: 'Dubai - Emirates arabes units',
          carSpecifications: tempCarSpecifications,
          rating: 4.5,
        ),
      );
    }
    return cars;
  }
}

List<Car> tempCars = [
  Car(
    images: [
      'https://rentop.co/wp-content/uploads/2022/08/0j63tx57lni8osqf1r9e2wkcbdgp4zma.jpeg',
      'https://rentop.co/wp-content/uploads/2022/08/ujngs6hw4l5vickx80repbz1397oa2mf.jpeg',
      'https://rentop.co/wp-content/uploads/2022/08/x27roh8dena9qcu5pswj30fv6igk1ztl.jpeg',
      'https://rentop.co/wp-content/uploads/2022/08/bo8gyq4m9kr620th1nja35cxdwfpsv7z.jpeg',
      'https://rentop.co/wp-content/uploads/2022/08/ogeuh9l4pijr5kzfq361tyx7wdnbs20a.jpeg'
    ],
    name: 'SPORTAGE 2023',
    price: 100,
    location: 'Dubai - Emirates arabes units',
    carSpecifications: tempCarSpecifications,
    rating: 4.5,
    author: 4,
    content: '',
    id: 5,
  )
];
