import 'package:rentop/infrastructure/models/billing.dart';
import 'package:rentop/infrastructure/models/meta_data.dart';
import 'package:rentop/infrastructure/models/shipping.dart';

class Profile {
  int? id;
  String? email;
  String? firstName;
  String? lastName;
  String? role;
  String? username;
  Billing? billing;
  Shipping? shipping;
  bool? isPayingCustomer;
  String? avater;
  List<MetaData>? metaData;

  Profile(
    this.id,
    this.email,
    this.firstName,
    this.lastName,
    this.role,
    this.username,
    this.avater,
    this.billing,
    this.isPayingCustomer,
    this.shipping,
    this.metaData,
  );

  Profile.fromJson(Map<String, dynamic> data) {
    id = data['id'];
    email = data['email'];
    firstName = data['first_name'];
    lastName = data['last_name'];
    role = data['role'];
    username = data['username'];
    billing =
        data['billing'] != null ? Billing.fromJson(data['billing']) : null;
    shipping =
        data['shipping'] != null ? Shipping.fromJson(data['shipping']) : null;
    isPayingCustomer = data['is_paying_customer'];
    avater = data['avatar_url'];
    if (data['meta_data'] != null) {
      metaData = <MetaData>[];
      data['meta_data'].forEach((v) {
        metaData!.add(MetaData.fromJson(v));
      });
    }
  }
}
