import 'package:rentop/infrastructure/models/billing.dart';
import 'package:rentop/infrastructure/models/shipping.dart';

class Order {
  final int id;
  final String status;
  final String currency;
  final String cartTax;
  final String total;
  final String totalTax;
  final Billing billing;
  final Shipping shipping;
  final String paymentMethod;
  final String paymentMethodTitle;
  final DateTime createdDate;
  final String customerNote;

  Order({
    required this.id,
    required this.status,
    required this.currency,
    required this.cartTax,
    required this.total,
    required this.totalTax,
    required this.billing,
    required this.shipping,
    required this.paymentMethod,
    required this.paymentMethodTitle,
    required this.createdDate,
    required this.customerNote,
  });

  static Order fromData(Map<String, dynamic> data) {
    return Order(
      id: data['id'],
      status: data['status'],
      currency: data['currency'],
      cartTax: data['cart_tax'],
      total: data['total'],
      totalTax: data['total_tax'],
      billing: Billing.fromWOOCOMMERCE(data['billing']),
      shipping: Shipping.fromWOOCOMMERCE(data['shipping']),
      paymentMethod: data['payment_method'],
      paymentMethodTitle: data['payment_method_title'],
      createdDate: DateTime.parse(data['date_created']),
      customerNote: data['customer_note'],
    );
  }
}
