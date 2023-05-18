import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:rentop/domain/core/order_failure.dart';
import 'package:rentop/domain/repositories/i_orders_repository.dart';
import 'package:rentop/infrastructure/models/addons.dart';
import 'package:rentop/infrastructure/models/billing.dart';
import 'package:rentop/infrastructure/models/car.dart';
import 'package:rentop/infrastructure/models/entry.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

@LazySingleton(as: IOrdersRepository)
class OrdersRepository implements IOrdersRepository {
  OrdersRepository();

  @override
  Future<Either<OrderFailure, Unit>> placeOrder({
    required Car car,
    required PickerDateRange dateRange,
    required List<Addons> addons,
    required double totalAddons,
    required double basePrice,
    required int nights,
    required double longTermDiscount,
    required double totalPrice,
    required double dueNow,
    required Billing? billingInfo,
  }) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final int? userId = prefs.getInt('userId');
      if (userId != null) {
        final startDateLocal = dateRange.startDate!;
        final endDateLocal = dateRange.endDate!;
        final startDateUTC = DateTime.utc(
          startDateLocal.year,
          startDateLocal.month,
          startDateLocal.day,
        );
        final endDateUTC = DateTime.utc(
          endDateLocal.year,
          endDateLocal.month,
          endDateLocal.day,
        );
        final dateRangeTimeStamp = [];
        for (int night = 0; night < nights; night++) {
          dateRangeTimeStamp.add(
            startDateUTC.add(Duration(days: night)).millisecondsSinceEpoch ~/
                1000,
          );
        }
        for (final time in car.pendingTimes) {
          dateRangeTimeStamp.add(time.millisecondsSinceEpoch ~/ 1000);
        }
        final addonsMap = {
          for (var element in addons)
            element.fields.key: {
              "name": element.fields.name,
              "price": element.fields.price,
            },
        };
        final data = {
          "userId": userId,
          'carId': car.id,
          "checkin": startDateUTC.millisecondsSinceEpoch ~/ 1000,
          "checkout": endDateUTC.millisecondsSinceEpoch ~/ 1000,
          "addons": addonsMap,
          "totalAddons": totalAddons,
          "basePrice": basePrice,
          "nights": nights,
          "longTermDiscount": longTermDiscount,
          "totalPrice": totalPrice,
          "dueNow": dueNow,
          "author": car.author.id,
          "instant": car.instant,
          "pendingTimes": dateRangeTimeStamp,
        };
        final body = json.encode(data);
        final response = await post(
          Uri.parse("${dotenv.env['RENTOP_API_URL']}/orders"),
          headers: {"Content-Type": "application/json"},
          body: body,
        );
        final responseBody = jsonDecode(response.body);
        if (responseBody['message'] == 'pending-requests') {
          return left(const OrderFailure.pendingRequests());
        } else if (responseBody['message'] == 'payment-intent-error') {
          return left(const OrderFailure.paymentIntentError());
        } else if (responseBody['message'] == 'error') {
          return left(const OrderFailure.serverError());
        } else if (responseBody['message'] == 'request-added') {
          return right(unit);
        } else if (responseBody['message'] == 'payment-intent') {
          try {
            await Stripe.instance.initPaymentSheet(
              paymentSheetParameters: SetupPaymentSheetParameters(
                paymentIntentClientSecret: responseBody['body']
                    ['paymentIntent'],
                merchantDisplayName: 'Rentop',
                customerId: responseBody['body']['customer'],
                customerEphemeralKeySecret: responseBody['body']
                    ['ephemeralKey'],
                billingDetails: billingInfo != null
                    ? BillingDetails(
                        email: billingInfo.email,
                        name: (billingInfo.firstName != null &&
                                billingInfo.lastName != null)
                            ? billingInfo.firstName! + billingInfo.lastName!
                            : null,
                        address: Address(
                          city: billingInfo.city,
                          country: billingInfo.country,
                          line1: billingInfo.address1,
                          line2: billingInfo.address2,
                          postalCode: billingInfo.postcode,
                          state: billingInfo.state,
                        ),
                        phone: billingInfo.phone,
                      )
                    : null,
              ),
            );
            await Stripe.instance.presentPaymentSheet();
            await post(
              Uri.parse(
                "${dotenv.env['RENTOP_API_URL']}payments/${responseBody['body']['paymentIntentId']}",
              ),
              headers: {"Content-Type": "application/json"},
            );
            return right(unit);
          } catch (e) {
            return left(const OrderFailure.paymentIntentError());
          }
        } else {
          return left(const OrderFailure.serverError());
        }
      } else {
        return left(const OrderFailure.serverError());
      }
    } catch (e) {
      return left(const OrderFailure.serverError());
    }
  }

  @override
  Future<Either<OrderFailure, Unit>> entryPayNow({
    required Entry entry,
    required Billing? billingInfo,
  }) async {
    try {
      final dateRangeTimeStamp = [];
      for (int night = 0; night < entry.pricing.nights; night++) {
        dateRangeTimeStamp.add(
          entry.checkin.add(Duration(days: night)).millisecondsSinceEpoch ~/
              1000,
        );
      }
      for (final time in entry.car.pendingTimes) {
        dateRangeTimeStamp.add(time.millisecondsSinceEpoch ~/ 1000);
      }
      final addons = {
        for (var element in entry.pricing.addons)
          element.key: {
            "name": element.name,
            "price": element.price,
          },
      };
      final prefs = await SharedPreferences.getInstance();
      final int? userId = prefs.getInt('userId');
      if (userId != null) {
        final data = {
          "userId": userId,
          "carId": entry.car.id,
          "checkin": entry.checkin.millisecondsSinceEpoch ~/ 1000,
          "checkout": entry.checkout.millisecondsSinceEpoch ~/ 1000,
          "addons": addons,
          "totalAddons": entry.pricing.totalAddons,
          "basePrice": entry.pricing.base,
          "nights": entry.pricing.nights,
          "longTermDiscount": entry.pricing.longTerm,
          "totalPrice": entry.pricing.total,
          "dueNow": entry.pricing.dueNow,
          "author": entry.author,
          "instant": entry.car.instant,
          "pendingTimes": dateRangeTimeStamp,
          "entryId": entry.id,
        };
        final body = json.encode(data);
        final response = await post(
          Uri.parse("${dotenv.env['RENTOP_API_URL']}/orders"),
          headers: {"Content-Type": "application/json"},
          body: body,
        );
        final responseBody = jsonDecode(response.body);
        if (responseBody['message'] == 'pending-requests') {
          return left(const OrderFailure.pendingRequests());
        } else if (responseBody['message'] == 'payment-intent-error') {
          return left(const OrderFailure.paymentIntentError());
        } else if (responseBody['message'] == 'error') {
          return left(const OrderFailure.serverError());
        } else if (responseBody['message'] == 'request-added') {
          return right(unit);
        } else if (responseBody['message'] == 'payment-intent') {
          try {
            await Stripe.instance.initPaymentSheet(
              paymentSheetParameters: SetupPaymentSheetParameters(
                paymentIntentClientSecret: responseBody['body']
                    ['paymentIntent'],
                merchantDisplayName: 'Rentop',
                customerId: responseBody['body']['customer'],
                customerEphemeralKeySecret: responseBody['body']
                    ['ephemeralKey'],
                billingDetails: billingInfo != null
                    ? BillingDetails(
                        email: billingInfo.email,
                        name: (billingInfo.firstName != null &&
                                billingInfo.lastName != null)
                            ? billingInfo.firstName! + billingInfo.lastName!
                            : null,
                        address: Address(
                          city: billingInfo.city,
                          country: billingInfo.country,
                          line1: billingInfo.address1,
                          line2: billingInfo.address2,
                          postalCode: billingInfo.postcode,
                          state: billingInfo.state,
                        ),
                        phone: billingInfo.phone,
                      )
                    : null,
              ),
            );
            await Stripe.instance.presentPaymentSheet();
            await post(
              Uri.parse(
                "${dotenv.env['RENTOP_API_URL']}payments/${responseBody['body']['paymentIntentId']}",
              ),
              headers: {"Content-Type": "application/json"},
            );
            return right(unit);
          } catch (e) {
            return left(const OrderFailure.paymentIntentError());
          }
        } else {
          return left(const OrderFailure.serverError());
        }
      } else {
        return left(const OrderFailure.serverError());
      }
    } catch (e) {
      return left(const OrderFailure.serverError());
    }
  }
}
