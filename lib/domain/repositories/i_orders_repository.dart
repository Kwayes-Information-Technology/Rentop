import 'package:dartz/dartz.dart';
import 'package:rentop/domain/core/order_failure.dart';
import 'package:rentop/infrastructure/models/addons.dart';
import 'package:rentop/infrastructure/models/billing.dart';
import 'package:rentop/infrastructure/models/car.dart';
import 'package:rentop/infrastructure/models/entry.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

abstract class IOrdersRepository {
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
  });
  Future<Either<OrderFailure, Unit>> entryPayNow({
    required Entry entry,
    required Billing? billingInfo,
  });
}
