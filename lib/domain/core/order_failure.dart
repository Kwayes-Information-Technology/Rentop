import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_failure.freezed.dart';

@freezed
abstract class OrderFailure with _$OrderFailure {
  const factory OrderFailure.serverError() = ServerError;
  const factory OrderFailure.pendingRequests() = PendingRequests;
  const factory OrderFailure.paymentIntentError() = PaymentIntentError;
}
