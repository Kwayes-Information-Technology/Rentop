import 'package:rentop/infrastructure/models/billing.dart';
import 'package:rentop/infrastructure/models/shipping.dart';

class Profile {
  int? id;
  String? firstName;
  String? lastName;
  String? displayName;
  String? role;
  String? userAvatar;
  String? userAvatarGravatar;
  Billing? billing;
  Shipping? shipping;

  Profile(
    this.id,
    this.firstName,
    this.lastName,
    this.displayName,
    this.role,
    this.userAvatar,
    this.userAvatarGravatar,
    this.billing,
    this.shipping,
  );

  Profile.fromJson(Map<String, dynamic> data) {
    id = int.tryParse(data['id'].toString());
    firstName = data['first_name'];
    lastName = data['last_name'];
    displayName = data['display_name'];
    role = data['rz_role'];
    userAvatar = data['user_avatar'] == "" || data['user_avatar'] == null
        ? null
        : data['user_avatar'];
    userAvatarGravatar = data['user_avatar_gavatar'];
    billing =
        data['billing'] != null ? Billing.fromJson(data['billing']) : null;
    shipping =
        data['shipping'] != null ? Shipping.fromJson(data['shipping']) : null;
  }
}
