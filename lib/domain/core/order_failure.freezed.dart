// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OrderFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() pendingRequests,
    required TResult Function() paymentIntentError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? pendingRequests,
    TResult? Function()? paymentIntentError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? pendingRequests,
    TResult Function()? paymentIntentError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(PendingRequests value) pendingRequests,
    required TResult Function(PaymentIntentError value) paymentIntentError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(PendingRequests value)? pendingRequests,
    TResult? Function(PaymentIntentError value)? paymentIntentError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(PendingRequests value)? pendingRequests,
    TResult Function(PaymentIntentError value)? paymentIntentError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderFailureCopyWith<$Res> {
  factory $OrderFailureCopyWith(
          OrderFailure value, $Res Function(OrderFailure) then) =
      _$OrderFailureCopyWithImpl<$Res, OrderFailure>;
}

/// @nodoc
class _$OrderFailureCopyWithImpl<$Res, $Val extends OrderFailure>
    implements $OrderFailureCopyWith<$Res> {
  _$OrderFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ServerErrorCopyWith<$Res> {
  factory _$$ServerErrorCopyWith(
          _$ServerError value, $Res Function(_$ServerError) then) =
      __$$ServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServerErrorCopyWithImpl<$Res>
    extends _$OrderFailureCopyWithImpl<$Res, _$ServerError>
    implements _$$ServerErrorCopyWith<$Res> {
  __$$ServerErrorCopyWithImpl(
      _$ServerError _value, $Res Function(_$ServerError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ServerError implements ServerError {
  const _$ServerError();

  @override
  String toString() {
    return 'OrderFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() pendingRequests,
    required TResult Function() paymentIntentError,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? pendingRequests,
    TResult? Function()? paymentIntentError,
  }) {
    return serverError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? pendingRequests,
    TResult Function()? paymentIntentError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(PendingRequests value) pendingRequests,
    required TResult Function(PaymentIntentError value) paymentIntentError,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(PendingRequests value)? pendingRequests,
    TResult? Function(PaymentIntentError value)? paymentIntentError,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(PendingRequests value)? pendingRequests,
    TResult Function(PaymentIntentError value)? paymentIntentError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements OrderFailure {
  const factory ServerError() = _$ServerError;
}

/// @nodoc
abstract class _$$PendingRequestsCopyWith<$Res> {
  factory _$$PendingRequestsCopyWith(
          _$PendingRequests value, $Res Function(_$PendingRequests) then) =
      __$$PendingRequestsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PendingRequestsCopyWithImpl<$Res>
    extends _$OrderFailureCopyWithImpl<$Res, _$PendingRequests>
    implements _$$PendingRequestsCopyWith<$Res> {
  __$$PendingRequestsCopyWithImpl(
      _$PendingRequests _value, $Res Function(_$PendingRequests) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PendingRequests implements PendingRequests {
  const _$PendingRequests();

  @override
  String toString() {
    return 'OrderFailure.pendingRequests()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PendingRequests);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() pendingRequests,
    required TResult Function() paymentIntentError,
  }) {
    return pendingRequests();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? pendingRequests,
    TResult? Function()? paymentIntentError,
  }) {
    return pendingRequests?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? pendingRequests,
    TResult Function()? paymentIntentError,
    required TResult orElse(),
  }) {
    if (pendingRequests != null) {
      return pendingRequests();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(PendingRequests value) pendingRequests,
    required TResult Function(PaymentIntentError value) paymentIntentError,
  }) {
    return pendingRequests(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(PendingRequests value)? pendingRequests,
    TResult? Function(PaymentIntentError value)? paymentIntentError,
  }) {
    return pendingRequests?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(PendingRequests value)? pendingRequests,
    TResult Function(PaymentIntentError value)? paymentIntentError,
    required TResult orElse(),
  }) {
    if (pendingRequests != null) {
      return pendingRequests(this);
    }
    return orElse();
  }
}

abstract class PendingRequests implements OrderFailure {
  const factory PendingRequests() = _$PendingRequests;
}

/// @nodoc
abstract class _$$PaymentIntentErrorCopyWith<$Res> {
  factory _$$PaymentIntentErrorCopyWith(_$PaymentIntentError value,
          $Res Function(_$PaymentIntentError) then) =
      __$$PaymentIntentErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PaymentIntentErrorCopyWithImpl<$Res>
    extends _$OrderFailureCopyWithImpl<$Res, _$PaymentIntentError>
    implements _$$PaymentIntentErrorCopyWith<$Res> {
  __$$PaymentIntentErrorCopyWithImpl(
      _$PaymentIntentError _value, $Res Function(_$PaymentIntentError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PaymentIntentError implements PaymentIntentError {
  const _$PaymentIntentError();

  @override
  String toString() {
    return 'OrderFailure.paymentIntentError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PaymentIntentError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() pendingRequests,
    required TResult Function() paymentIntentError,
  }) {
    return paymentIntentError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? pendingRequests,
    TResult? Function()? paymentIntentError,
  }) {
    return paymentIntentError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? pendingRequests,
    TResult Function()? paymentIntentError,
    required TResult orElse(),
  }) {
    if (paymentIntentError != null) {
      return paymentIntentError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(PendingRequests value) pendingRequests,
    required TResult Function(PaymentIntentError value) paymentIntentError,
  }) {
    return paymentIntentError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(PendingRequests value)? pendingRequests,
    TResult? Function(PaymentIntentError value)? paymentIntentError,
  }) {
    return paymentIntentError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(PendingRequests value)? pendingRequests,
    TResult Function(PaymentIntentError value)? paymentIntentError,
    required TResult orElse(),
  }) {
    if (paymentIntentError != null) {
      return paymentIntentError(this);
    }
    return orElse();
  }
}

abstract class PaymentIntentError implements OrderFailure {
  const factory PaymentIntentError() = _$PaymentIntentError;
}
