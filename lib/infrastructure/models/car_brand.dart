class CarBrand {
  String brand;
  String brandUrl;

  CarBrand({
    required this.brand,
    required this.brandUrl,
  });
}

List<CarBrand> tempCarBrands = [
  CarBrand(
    brand: 'Tesla',
    brandUrl:
        "https://www.freepnglogos.com/uploads/tesla-logo-png-silver-10.png",
  ),
  CarBrand(
    brand: 'Rolls Royce',
    brandUrl: "https://www.carlogos.org/logo/Rolls-Royce-logo-2048x2048.png",
  ),
  CarBrand(
    brand: 'Nissan',
    brandUrl:
        "https://upload.wikimedia.org/wikipedia/commons/8/8c/Nissan_logo.png",
  ),
];
