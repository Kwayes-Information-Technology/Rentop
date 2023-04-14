class Billing {
  String? firstName;
  String? lastName;
  String? company;
  String? address1;
  String? address2;
  String? city;
  String? state;
  String? postcode;
  String? country;
  String? email;
  String? phone;

  Billing({
    this.firstName,
    this.lastName,
    this.company,
    this.address1,
    this.address2,
    this.city,
    this.state,
    this.postcode,
    this.country,
    this.email,
    this.phone,
  });

  Billing.fromJson(Map<String, dynamic> json) {
    firstName = json['billing_first_name'];
    lastName = json['billing_last_name'];
    company = json['billing_company'];
    address1 = json['billing_address_1'];
    address2 = json['billing_address_2'];
    city = json['billing_city'];
    state = json['billing_state'];
    postcode = json['billing_postcode'];
    country = json['billing_country'];
    email = json['billing_email'];
    phone = json['billing_phone'];
  }

  Billing.fromWOOCOMMERCE(Map<String, dynamic> data) {
    firstName = data['first_name'];
    lastName = data['last_name'];
    company = data['company'];
    address1 = data['address_1'];
    address2 = data['address_2'];
    city = data['city'];
    state = data['state'];
    postcode = data['postcode'];
    country = data['country'];
    email = data['email'];
    phone = data['phone'];
  }
}
