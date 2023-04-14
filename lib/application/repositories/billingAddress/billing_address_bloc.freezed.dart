// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'billing_address_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BillingAddressEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Billing billingInfo) initialBillingAddress,
    required TResult Function() clear,
    required TResult Function() btnPressed,
    required TResult Function(String country) countryChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Billing billingInfo)? initialBillingAddress,
    TResult? Function()? clear,
    TResult? Function()? btnPressed,
    TResult? Function(String country)? countryChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Billing billingInfo)? initialBillingAddress,
    TResult Function()? clear,
    TResult Function()? btnPressed,
    TResult Function(String country)? countryChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialBillingAddress value)
        initialBillingAddress,
    required TResult Function(Clear value) clear,
    required TResult Function(BtnPressed value) btnPressed,
    required TResult Function(CountryChanged value) countryChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialBillingAddress value)? initialBillingAddress,
    TResult? Function(Clear value)? clear,
    TResult? Function(BtnPressed value)? btnPressed,
    TResult? Function(CountryChanged value)? countryChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialBillingAddress value)? initialBillingAddress,
    TResult Function(Clear value)? clear,
    TResult Function(BtnPressed value)? btnPressed,
    TResult Function(CountryChanged value)? countryChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BillingAddressEventCopyWith<$Res> {
  factory $BillingAddressEventCopyWith(
          BillingAddressEvent value, $Res Function(BillingAddressEvent) then) =
      _$BillingAddressEventCopyWithImpl<$Res, BillingAddressEvent>;
}

/// @nodoc
class _$BillingAddressEventCopyWithImpl<$Res, $Val extends BillingAddressEvent>
    implements $BillingAddressEventCopyWith<$Res> {
  _$BillingAddressEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialBillingAddressCopyWith<$Res> {
  factory _$$InitialBillingAddressCopyWith(_$InitialBillingAddress value,
          $Res Function(_$InitialBillingAddress) then) =
      __$$InitialBillingAddressCopyWithImpl<$Res>;
  @useResult
  $Res call({Billing billingInfo});
}

/// @nodoc
class __$$InitialBillingAddressCopyWithImpl<$Res>
    extends _$BillingAddressEventCopyWithImpl<$Res, _$InitialBillingAddress>
    implements _$$InitialBillingAddressCopyWith<$Res> {
  __$$InitialBillingAddressCopyWithImpl(_$InitialBillingAddress _value,
      $Res Function(_$InitialBillingAddress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? billingInfo = null,
  }) {
    return _then(_$InitialBillingAddress(
      null == billingInfo
          ? _value.billingInfo
          : billingInfo // ignore: cast_nullable_to_non_nullable
              as Billing,
    ));
  }
}

/// @nodoc

class _$InitialBillingAddress implements InitialBillingAddress {
  const _$InitialBillingAddress(this.billingInfo);

  @override
  final Billing billingInfo;

  @override
  String toString() {
    return 'BillingAddressEvent.initialBillingAddress(billingInfo: $billingInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialBillingAddress &&
            (identical(other.billingInfo, billingInfo) ||
                other.billingInfo == billingInfo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, billingInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialBillingAddressCopyWith<_$InitialBillingAddress> get copyWith =>
      __$$InitialBillingAddressCopyWithImpl<_$InitialBillingAddress>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Billing billingInfo) initialBillingAddress,
    required TResult Function() clear,
    required TResult Function() btnPressed,
    required TResult Function(String country) countryChanged,
  }) {
    return initialBillingAddress(billingInfo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Billing billingInfo)? initialBillingAddress,
    TResult? Function()? clear,
    TResult? Function()? btnPressed,
    TResult? Function(String country)? countryChanged,
  }) {
    return initialBillingAddress?.call(billingInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Billing billingInfo)? initialBillingAddress,
    TResult Function()? clear,
    TResult Function()? btnPressed,
    TResult Function(String country)? countryChanged,
    required TResult orElse(),
  }) {
    if (initialBillingAddress != null) {
      return initialBillingAddress(billingInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialBillingAddress value)
        initialBillingAddress,
    required TResult Function(Clear value) clear,
    required TResult Function(BtnPressed value) btnPressed,
    required TResult Function(CountryChanged value) countryChanged,
  }) {
    return initialBillingAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialBillingAddress value)? initialBillingAddress,
    TResult? Function(Clear value)? clear,
    TResult? Function(BtnPressed value)? btnPressed,
    TResult? Function(CountryChanged value)? countryChanged,
  }) {
    return initialBillingAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialBillingAddress value)? initialBillingAddress,
    TResult Function(Clear value)? clear,
    TResult Function(BtnPressed value)? btnPressed,
    TResult Function(CountryChanged value)? countryChanged,
    required TResult orElse(),
  }) {
    if (initialBillingAddress != null) {
      return initialBillingAddress(this);
    }
    return orElse();
  }
}

abstract class InitialBillingAddress implements BillingAddressEvent {
  const factory InitialBillingAddress(final Billing billingInfo) =
      _$InitialBillingAddress;

  Billing get billingInfo;
  @JsonKey(ignore: true)
  _$$InitialBillingAddressCopyWith<_$InitialBillingAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearCopyWith<$Res> {
  factory _$$ClearCopyWith(_$Clear value, $Res Function(_$Clear) then) =
      __$$ClearCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearCopyWithImpl<$Res>
    extends _$BillingAddressEventCopyWithImpl<$Res, _$Clear>
    implements _$$ClearCopyWith<$Res> {
  __$$ClearCopyWithImpl(_$Clear _value, $Res Function(_$Clear) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Clear implements Clear {
  const _$Clear();

  @override
  String toString() {
    return 'BillingAddressEvent.clear()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Clear);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Billing billingInfo) initialBillingAddress,
    required TResult Function() clear,
    required TResult Function() btnPressed,
    required TResult Function(String country) countryChanged,
  }) {
    return clear();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Billing billingInfo)? initialBillingAddress,
    TResult? Function()? clear,
    TResult? Function()? btnPressed,
    TResult? Function(String country)? countryChanged,
  }) {
    return clear?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Billing billingInfo)? initialBillingAddress,
    TResult Function()? clear,
    TResult Function()? btnPressed,
    TResult Function(String country)? countryChanged,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialBillingAddress value)
        initialBillingAddress,
    required TResult Function(Clear value) clear,
    required TResult Function(BtnPressed value) btnPressed,
    required TResult Function(CountryChanged value) countryChanged,
  }) {
    return clear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialBillingAddress value)? initialBillingAddress,
    TResult? Function(Clear value)? clear,
    TResult? Function(BtnPressed value)? btnPressed,
    TResult? Function(CountryChanged value)? countryChanged,
  }) {
    return clear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialBillingAddress value)? initialBillingAddress,
    TResult Function(Clear value)? clear,
    TResult Function(BtnPressed value)? btnPressed,
    TResult Function(CountryChanged value)? countryChanged,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear(this);
    }
    return orElse();
  }
}

abstract class Clear implements BillingAddressEvent {
  const factory Clear() = _$Clear;
}

/// @nodoc
abstract class _$$BtnPressedCopyWith<$Res> {
  factory _$$BtnPressedCopyWith(
          _$BtnPressed value, $Res Function(_$BtnPressed) then) =
      __$$BtnPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BtnPressedCopyWithImpl<$Res>
    extends _$BillingAddressEventCopyWithImpl<$Res, _$BtnPressed>
    implements _$$BtnPressedCopyWith<$Res> {
  __$$BtnPressedCopyWithImpl(
      _$BtnPressed _value, $Res Function(_$BtnPressed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BtnPressed implements BtnPressed {
  const _$BtnPressed();

  @override
  String toString() {
    return 'BillingAddressEvent.btnPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BtnPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Billing billingInfo) initialBillingAddress,
    required TResult Function() clear,
    required TResult Function() btnPressed,
    required TResult Function(String country) countryChanged,
  }) {
    return btnPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Billing billingInfo)? initialBillingAddress,
    TResult? Function()? clear,
    TResult? Function()? btnPressed,
    TResult? Function(String country)? countryChanged,
  }) {
    return btnPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Billing billingInfo)? initialBillingAddress,
    TResult Function()? clear,
    TResult Function()? btnPressed,
    TResult Function(String country)? countryChanged,
    required TResult orElse(),
  }) {
    if (btnPressed != null) {
      return btnPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialBillingAddress value)
        initialBillingAddress,
    required TResult Function(Clear value) clear,
    required TResult Function(BtnPressed value) btnPressed,
    required TResult Function(CountryChanged value) countryChanged,
  }) {
    return btnPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialBillingAddress value)? initialBillingAddress,
    TResult? Function(Clear value)? clear,
    TResult? Function(BtnPressed value)? btnPressed,
    TResult? Function(CountryChanged value)? countryChanged,
  }) {
    return btnPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialBillingAddress value)? initialBillingAddress,
    TResult Function(Clear value)? clear,
    TResult Function(BtnPressed value)? btnPressed,
    TResult Function(CountryChanged value)? countryChanged,
    required TResult orElse(),
  }) {
    if (btnPressed != null) {
      return btnPressed(this);
    }
    return orElse();
  }
}

abstract class BtnPressed implements BillingAddressEvent {
  const factory BtnPressed() = _$BtnPressed;
}

/// @nodoc
abstract class _$$CountryChangedCopyWith<$Res> {
  factory _$$CountryChangedCopyWith(
          _$CountryChanged value, $Res Function(_$CountryChanged) then) =
      __$$CountryChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String country});
}

/// @nodoc
class __$$CountryChangedCopyWithImpl<$Res>
    extends _$BillingAddressEventCopyWithImpl<$Res, _$CountryChanged>
    implements _$$CountryChangedCopyWith<$Res> {
  __$$CountryChangedCopyWithImpl(
      _$CountryChanged _value, $Res Function(_$CountryChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = null,
  }) {
    return _then(_$CountryChanged(
      null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CountryChanged implements CountryChanged {
  const _$CountryChanged(this.country);

  @override
  final String country;

  @override
  String toString() {
    return 'BillingAddressEvent.countryChanged(country: $country)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountryChanged &&
            (identical(other.country, country) || other.country == country));
  }

  @override
  int get hashCode => Object.hash(runtimeType, country);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CountryChangedCopyWith<_$CountryChanged> get copyWith =>
      __$$CountryChangedCopyWithImpl<_$CountryChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Billing billingInfo) initialBillingAddress,
    required TResult Function() clear,
    required TResult Function() btnPressed,
    required TResult Function(String country) countryChanged,
  }) {
    return countryChanged(country);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Billing billingInfo)? initialBillingAddress,
    TResult? Function()? clear,
    TResult? Function()? btnPressed,
    TResult? Function(String country)? countryChanged,
  }) {
    return countryChanged?.call(country);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Billing billingInfo)? initialBillingAddress,
    TResult Function()? clear,
    TResult Function()? btnPressed,
    TResult Function(String country)? countryChanged,
    required TResult orElse(),
  }) {
    if (countryChanged != null) {
      return countryChanged(country);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialBillingAddress value)
        initialBillingAddress,
    required TResult Function(Clear value) clear,
    required TResult Function(BtnPressed value) btnPressed,
    required TResult Function(CountryChanged value) countryChanged,
  }) {
    return countryChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialBillingAddress value)? initialBillingAddress,
    TResult? Function(Clear value)? clear,
    TResult? Function(BtnPressed value)? btnPressed,
    TResult? Function(CountryChanged value)? countryChanged,
  }) {
    return countryChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialBillingAddress value)? initialBillingAddress,
    TResult Function(Clear value)? clear,
    TResult Function(BtnPressed value)? btnPressed,
    TResult Function(CountryChanged value)? countryChanged,
    required TResult orElse(),
  }) {
    if (countryChanged != null) {
      return countryChanged(this);
    }
    return orElse();
  }
}

abstract class CountryChanged implements BillingAddressEvent {
  const factory CountryChanged(final String country) = _$CountryChanged;

  String get country;
  @JsonKey(ignore: true)
  _$$CountryChangedCopyWith<_$CountryChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BillingAddressState {
  TextEditingController get firstName => throw _privateConstructorUsedError;
  TextEditingController get lastName => throw _privateConstructorUsedError;
  TextEditingController get companyName => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  TextEditingController get address1 => throw _privateConstructorUsedError;
  TextEditingController get address2 => throw _privateConstructorUsedError;
  TextEditingController get city => throw _privateConstructorUsedError;
  TextEditingController get state => throw _privateConstructorUsedError;
  TextEditingController get postcode => throw _privateConstructorUsedError;
  TextEditingController get email => throw _privateConstructorUsedError;
  TextEditingController get phoneNumber => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<ApiFailure, Unit>> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BillingAddressStateCopyWith<BillingAddressState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BillingAddressStateCopyWith<$Res> {
  factory $BillingAddressStateCopyWith(
          BillingAddressState value, $Res Function(BillingAddressState) then) =
      _$BillingAddressStateCopyWithImpl<$Res, BillingAddressState>;
  @useResult
  $Res call(
      {TextEditingController firstName,
      TextEditingController lastName,
      TextEditingController companyName,
      String country,
      TextEditingController address1,
      TextEditingController address2,
      TextEditingController city,
      TextEditingController state,
      TextEditingController postcode,
      TextEditingController email,
      TextEditingController phoneNumber,
      bool isSubmitting,
      Option<Either<ApiFailure, Unit>> failureOrSuccessOption});
}

/// @nodoc
class _$BillingAddressStateCopyWithImpl<$Res, $Val extends BillingAddressState>
    implements $BillingAddressStateCopyWith<$Res> {
  _$BillingAddressStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? companyName = null,
    Object? country = null,
    Object? address1 = null,
    Object? address2 = null,
    Object? city = null,
    Object? state = null,
    Object? postcode = null,
    Object? email = null,
    Object? phoneNumber = null,
    Object? isSubmitting = null,
    Object? failureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      companyName: null == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      address1: null == address1
          ? _value.address1
          : address1 // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      address2: null == address2
          ? _value.address2
          : address2 // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      postcode: null == postcode
          ? _value.postcode
          : postcode // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BillingAddressStateCopyWith<$Res>
    implements $BillingAddressStateCopyWith<$Res> {
  factory _$$_BillingAddressStateCopyWith(_$_BillingAddressState value,
          $Res Function(_$_BillingAddressState) then) =
      __$$_BillingAddressStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TextEditingController firstName,
      TextEditingController lastName,
      TextEditingController companyName,
      String country,
      TextEditingController address1,
      TextEditingController address2,
      TextEditingController city,
      TextEditingController state,
      TextEditingController postcode,
      TextEditingController email,
      TextEditingController phoneNumber,
      bool isSubmitting,
      Option<Either<ApiFailure, Unit>> failureOrSuccessOption});
}

/// @nodoc
class __$$_BillingAddressStateCopyWithImpl<$Res>
    extends _$BillingAddressStateCopyWithImpl<$Res, _$_BillingAddressState>
    implements _$$_BillingAddressStateCopyWith<$Res> {
  __$$_BillingAddressStateCopyWithImpl(_$_BillingAddressState _value,
      $Res Function(_$_BillingAddressState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? companyName = null,
    Object? country = null,
    Object? address1 = null,
    Object? address2 = null,
    Object? city = null,
    Object? state = null,
    Object? postcode = null,
    Object? email = null,
    Object? phoneNumber = null,
    Object? isSubmitting = null,
    Object? failureOrSuccessOption = null,
  }) {
    return _then(_$_BillingAddressState(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      companyName: null == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      address1: null == address1
          ? _value.address1
          : address1 // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      address2: null == address2
          ? _value.address2
          : address2 // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      postcode: null == postcode
          ? _value.postcode
          : postcode // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_BillingAddressState implements _BillingAddressState {
  const _$_BillingAddressState(
      {required this.firstName,
      required this.lastName,
      required this.companyName,
      required this.country,
      required this.address1,
      required this.address2,
      required this.city,
      required this.state,
      required this.postcode,
      required this.email,
      required this.phoneNumber,
      required this.isSubmitting,
      required this.failureOrSuccessOption});

  @override
  final TextEditingController firstName;
  @override
  final TextEditingController lastName;
  @override
  final TextEditingController companyName;
  @override
  final String country;
  @override
  final TextEditingController address1;
  @override
  final TextEditingController address2;
  @override
  final TextEditingController city;
  @override
  final TextEditingController state;
  @override
  final TextEditingController postcode;
  @override
  final TextEditingController email;
  @override
  final TextEditingController phoneNumber;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<ApiFailure, Unit>> failureOrSuccessOption;

  @override
  String toString() {
    return 'BillingAddressState(firstName: $firstName, lastName: $lastName, companyName: $companyName, country: $country, address1: $address1, address2: $address2, city: $city, state: $state, postcode: $postcode, email: $email, phoneNumber: $phoneNumber, isSubmitting: $isSubmitting, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BillingAddressState &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.address1, address1) ||
                other.address1 == address1) &&
            (identical(other.address2, address2) ||
                other.address2 == address2) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.postcode, postcode) ||
                other.postcode == postcode) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
                other.failureOrSuccessOption == failureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      firstName,
      lastName,
      companyName,
      country,
      address1,
      address2,
      city,
      state,
      postcode,
      email,
      phoneNumber,
      isSubmitting,
      failureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BillingAddressStateCopyWith<_$_BillingAddressState> get copyWith =>
      __$$_BillingAddressStateCopyWithImpl<_$_BillingAddressState>(
          this, _$identity);
}

abstract class _BillingAddressState implements BillingAddressState {
  const factory _BillingAddressState(
      {required final TextEditingController firstName,
      required final TextEditingController lastName,
      required final TextEditingController companyName,
      required final String country,
      required final TextEditingController address1,
      required final TextEditingController address2,
      required final TextEditingController city,
      required final TextEditingController state,
      required final TextEditingController postcode,
      required final TextEditingController email,
      required final TextEditingController phoneNumber,
      required final bool isSubmitting,
      required final Option<Either<ApiFailure, Unit>>
          failureOrSuccessOption}) = _$_BillingAddressState;

  @override
  TextEditingController get firstName;
  @override
  TextEditingController get lastName;
  @override
  TextEditingController get companyName;
  @override
  String get country;
  @override
  TextEditingController get address1;
  @override
  TextEditingController get address2;
  @override
  TextEditingController get city;
  @override
  TextEditingController get state;
  @override
  TextEditingController get postcode;
  @override
  TextEditingController get email;
  @override
  TextEditingController get phoneNumber;
  @override
  bool get isSubmitting;
  @override
  Option<Either<ApiFailure, Unit>> get failureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_BillingAddressStateCopyWith<_$_BillingAddressState> get copyWith =>
      throw _privateConstructorUsedError;
}
