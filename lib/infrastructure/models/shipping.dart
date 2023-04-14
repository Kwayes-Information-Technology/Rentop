class Shipping {
  String? firstName;
  String? lastName;
  String? company;
  String? address1;
  String? address2;
  String? city;
  String? state;
  String? postcode;
  String? country;

  Shipping({
    this.firstName,
    this.lastName,
    this.company,
    this.address1,
    this.address2,
    this.city,
    this.state,
    this.postcode,
    this.country,
  });

  Shipping.fromJson(Map<String, dynamic> json) {
    firstName = json['shipping_first_name'];
    lastName = json['shipping_last_name'];
    company = json['shipping_company'];
    address1 = json['shipping_address_1'];
    address2 = json['shipping_address_2'];
    city = json['shipping_city'];
    state = json['shipping_state'];
    postcode = json['shipping_postcode'];
    country = json['shipping_country'];
  }

  Shipping.fromWOOCOMMERCE(Map<String, dynamic> data) {
    firstName = data['first_name'];
    lastName = data['last_name'];
    company = data['company'];
    address1 = data['address_1'];
    address2 = data['address_2'];
    city = data['city'];
    state = data['state'];
    postcode = data['postcode'];
    country = data['country'];
  }
}
