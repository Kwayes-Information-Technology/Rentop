class CarFees {
  final double serviceFee;
  final double vat;

  CarFees({
    required this.serviceFee,
    required this.vat,
  });

  static CarFees fromData(Map<String, dynamic> data) {
    return CarFees(
      serviceFee:
          double.parse(double.parse(data['service_fee']).toStringAsFixed(2)),
      vat: double.parse(double.parse(data['tax_rate']).toStringAsFixed(2)),
    );
  }
}
