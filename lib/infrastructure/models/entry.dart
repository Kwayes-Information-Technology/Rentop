import 'package:rentop/infrastructure/models/car.dart';

import 'package:rentop/infrastructure/models/order.dart';

class Entry {
  final Car car;
  final int author;
  final DateTime date;
  final DateTime checkin;
  final DateTime checkout;
  final String status;
  final Pricing pricing;
  final int id;
  final Order? order;

  Entry({
    required this.author,
    required this.car,
    required this.date,
    required this.id,
    required this.status,
    required this.checkin,
    required this.checkout,
    required this.pricing,
    required this.order,
  });

  static DateTime returnDateTimeFromTimeStamp(dynamic timestamp) {
    return DateTime.fromMillisecondsSinceEpoch(
      int.parse(timestamp) * 1000,
      isUtc: true,
    );
  }

  static List<Entry> fromData(List<dynamic> data) {
    final List<Entry> entries = [];
    for (final element in data) {
      entries.add(
        Entry(
          author: element['post_author'],
          car: Car.fromSingleData(element['listing']),
          date: DateTime.parse(element['post_date']),
          id: element['ID'],
          status: element['post_status'],
          checkin: returnDateTimeFromTimeStamp(element['rz_checkin_date']),
          checkout: returnDateTimeFromTimeStamp(element['rz_checkout_date']),
          pricing: Pricing.fromData(element['rz_pricing']),
          order: element['order'] != null
              ? Order.fromData(element['order'])
              : null,
        ),
      );
    }
    return entries;
  }
}

class Pricing {
  final int nights;
  final double base;
  final double longTerm;
  final List<RzAddons> addons;
  final double totalAddons;
  final String paymentProcessing;
  final String paymentProcessingTitle;
  final double total;
  final double dueNow;

  Pricing({
    required this.nights,
    required this.base,
    required this.longTerm,
    required this.addons,
    required this.totalAddons,
    required this.paymentProcessing,
    required this.paymentProcessingTitle,
    required this.total,
    required this.dueNow,
  });

  static Pricing fromData(Map<String, dynamic> data) {
    return Pricing(
      nights: data['nights'],
      base: double.parse(data['base'].toString()),
      longTerm: double.parse(data['long_term'].toString()),
      addons: RzAddons.fromData(data['addons']),
      totalAddons: double.parse(data['addons_total'].toString()),
      paymentProcessing: data['payment_processing'],
      paymentProcessingTitle: data['payment_processing_name'],
      total: double.parse(data['total'].toString()),
      dueNow: double.parse(data['processing'].toString()),
    );
  }
}

class RzAddons {
  final String key;
  final String name;
  final double price;

  RzAddons({
    required this.key,
    required this.name,
    required this.price,
  });

  static List<RzAddons> fromData(dynamic data) {
    if (data is List) {
      return [];
    } else {
      final List<RzAddons> addons = [];
      for (final element in data.entries) {
        addons.add(
          RzAddons(
            key: element.key,
            name: element.value['name'],
            price: double.parse(element.value['price'].toString()),
          ),
        );
      }
      return addons;
    }
  }
}
