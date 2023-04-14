// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shipping_address_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ShippingAddressEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Shipping shippingInfo) initialShippingAddress,
    required TResult Function() clear,
    required TResult Function() btnPressed,
    required TResult Function(String country) countryChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Shipping shippingInfo)? initialShippingAddress,
    TResult? Function()? clear,
    TResult? Function()? btnPressed,
    TResult? Function(String country)? countryChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Shipping shippingInfo)? initialShippingAddress,
    TResult Function()? clear,
    TResult Function()? btnPressed,
    TResult Function(String country)? countryChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialShippingAddress value)
        initialShippingAddress,
    required TResult Function(Clear value) clear,
    required TResult Function(BtnPressed value) btnPressed,
    required TResult Function(CountryChanged value) countryChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialShippingAddress value)? initialShippingAddress,
    TResult? Function(Clear value)? clear,
    TResult? Function(BtnPressed value)? btnPressed,
    TResult? Function(CountryChanged value)? countryChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialShippingAddress value)? initialShippingAddress,
    TResult Function(Clear value)? clear,
    TResult Function(BtnPressed value)? btnPressed,
    TResult Function(CountryChanged value)? countryChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShippingAddressEventCopyWith<$Res> {
  factory $ShippingAddressEventCopyWith(ShippingAddressEvent value,
          $Res Function(ShippingAddressEvent) then) =
      _$ShippingAddressEventCopyWithImpl<$Res, ShippingAddressEvent>;
}

/// @nodoc
class _$ShippingAddressEventCopyWithImpl<$Res,
        $Val extends ShippingAddressEvent>
    implements $ShippingAddressEventCopyWith<$Res> {
  _$ShippingAddressEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialShippingAddressCopyWith<$Res> {
  factory _$$InitialShippingAddressCopyWith(_$InitialShippingAddress value,
          $Res Function(_$InitialShippingAddress) then) =
      __$$InitialShippingAddressCopyWithImpl<$Res>;
  @useResult
  $Res call({Shipping shippingInfo});
}

/// @nodoc
class __$$InitialShippingAddressCopyWithImpl<$Res>
    extends _$ShippingAddressEventCopyWithImpl<$Res, _$InitialShippingAddress>
    implements _$$InitialShippingAddressCopyWith<$Res> {
  __$$InitialShippingAddressCopyWithImpl(_$InitialShippingAddress _value,
      $Res Function(_$InitialShippingAddress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shippingInfo = null,
  }) {
    return _then(_$InitialShippingAddress(
      null == shippingInfo
          ? _value.shippingInfo
          : shippingInfo // ignore: cast_nullable_to_non_nullable
              as Shipping,
    ));
  }
}

/// @nodoc

class _$InitialShippingAddress implements InitialShippingAddress {
  const _$InitialShippingAddress(this.shippingInfo);

  @override
  final Shipping shippingInfo;

  @override
  String toString() {
    return 'ShippingAddressEvent.initialShippingAddress(shippingInfo: $shippingInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialShippingAddress &&
            (identical(other.shippingInfo, shippingInfo) ||
                other.shippingInfo == shippingInfo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, shippingInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialShippingAddressCopyWith<_$InitialShippingAddress> get copyWith =>
      __$$InitialShippingAddressCopyWithImpl<_$InitialShippingAddress>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Shipping shippingInfo) initialShippingAddress,
    required TResult Function() clear,
    required TResult Function() btnPressed,
    required TResult Function(String country) countryChanged,
  }) {
    return initialShippingAddress(shippingInfo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Shipping shippingInfo)? initialShippingAddress,
    TResult? Function()? clear,
    TResult? Function()? btnPressed,
    TResult? Function(String country)? countryChanged,
  }) {
    return initialShippingAddress?.call(shippingInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Shipping shippingInfo)? initialShippingAddress,
    TResult Function()? clear,
    TResult Function()? btnPressed,
    TResult Function(String country)? countryChanged,
    required TResult orElse(),
  }) {
    if (initialShippingAddress != null) {
      return initialShippingAddress(shippingInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialShippingAddress value)
        initialShippingAddress,
    required TResult Function(Clear value) clear,
    required TResult Function(BtnPressed value) btnPressed,
    required TResult Function(CountryChanged value) countryChanged,
  }) {
    return initialShippingAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialShippingAddress value)? initialShippingAddress,
    TResult? Function(Clear value)? clear,
    TResult? Function(BtnPressed value)? btnPressed,
    TResult? Function(CountryChanged value)? countryChanged,
  }) {
    return initialShippingAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialShippingAddress value)? initialShippingAddress,
    TResult Function(Clear value)? clear,
    TResult Function(BtnPressed value)? btnPressed,
    TResult Function(CountryChanged value)? countryChanged,
    required TResult orElse(),
  }) {
    if (initialShippingAddress != null) {
      return initialShippingAddress(this);
    }
    return orElse();
  }
}

abstract class InitialShippingAddress implements ShippingAddressEvent {
  const factory InitialShippingAddress(final Shipping shippingInfo) =
      _$InitialShippingAddress;

  Shipping get shippingInfo;
  @JsonKey(ignore: true)
  _$$InitialShippingAddressCopyWith<_$InitialShippingAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearCopyWith<$Res> {
  factory _$$ClearCopyWith(_$Clear value, $Res Function(_$Clear) then) =
      __$$ClearCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearCopyWithImpl<$Res>
    extends _$ShippingAddressEventCopyWithImpl<$Res, _$Clear>
    implements _$$ClearCopyWith<$Res> {
  __$$ClearCopyWithImpl(_$Clear _value, $Res Function(_$Clear) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Clear implements Clear {
  const _$Clear();

  @override
  String toString() {
    return 'ShippingAddressEvent.clear()';
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
    required TResult Function(Shipping shippingInfo) initialShippingAddress,
    required TResult Function() clear,
    required TResult Function() btnPressed,
    required TResult Function(String country) countryChanged,
  }) {
    return clear();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Shipping shippingInfo)? initialShippingAddress,
    TResult? Function()? clear,
    TResult? Function()? btnPressed,
    TResult? Function(String country)? countryChanged,
  }) {
    return clear?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Shipping shippingInfo)? initialShippingAddress,
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
    required TResult Function(InitialShippingAddress value)
        initialShippingAddress,
    required TResult Function(Clear value) clear,
    required TResult Function(BtnPressed value) btnPressed,
    required TResult Function(CountryChanged value) countryChanged,
  }) {
    return clear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialShippingAddress value)? initialShippingAddress,
    TResult? Function(Clear value)? clear,
    TResult? Function(BtnPressed value)? btnPressed,
    TResult? Function(CountryChanged value)? countryChanged,
  }) {
    return clear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialShippingAddress value)? initialShippingAddress,
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

abstract class Clear implements ShippingAddressEvent {
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
    extends _$ShippingAddressEventCopyWithImpl<$Res, _$BtnPressed>
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
    return 'ShippingAddressEvent.btnPressed()';
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
    required TResult Function(Shipping shippingInfo) initialShippingAddress,
    required TResult Function() clear,
    required TResult Function() btnPressed,
    required TResult Function(String country) countryChanged,
  }) {
    return btnPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Shipping shippingInfo)? initialShippingAddress,
    TResult? Function()? clear,
    TResult? Function()? btnPressed,
    TResult? Function(String country)? countryChanged,
  }) {
    return btnPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Shipping shippingInfo)? initialShippingAddress,
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
    required TResult Function(InitialShippingAddress value)
        initialShippingAddress,
    required TResult Function(Clear value) clear,
    required TResult Function(BtnPressed value) btnPressed,
    required TResult Function(CountryChanged value) countryChanged,
  }) {
    return btnPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialShippingAddress value)? initialShippingAddress,
    TResult? Function(Clear value)? clear,
    TResult? Function(BtnPressed value)? btnPressed,
    TResult? Function(CountryChanged value)? countryChanged,
  }) {
    return btnPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialShippingAddress value)? initialShippingAddress,
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

abstract class BtnPressed implements ShippingAddressEvent {
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
    extends _$ShippingAddressEventCopyWithImpl<$Res, _$CountryChanged>
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
    return 'ShippingAddressEvent.countryChanged(country: $country)';
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
    required TResult Function(Shipping shippingInfo) initialShippingAddress,
    required TResult Function() clear,
    required TResult Function() btnPressed,
    required TResult Function(String country) countryChanged,
  }) {
    return countryChanged(country);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Shipping shippingInfo)? initialShippingAddress,
    TResult? Function()? clear,
    TResult? Function()? btnPressed,
    TResult? Function(String country)? countryChanged,
  }) {
    return countryChanged?.call(country);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Shipping shippingInfo)? initialShippingAddress,
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
    required TResult Function(InitialShippingAddress value)
        initialShippingAddress,
    required TResult Function(Clear value) clear,
    required TResult Function(BtnPressed value) btnPressed,
    required TResult Function(CountryChanged value) countryChanged,
  }) {
    return countryChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialShippingAddress value)? initialShippingAddress,
    TResult? Function(Clear value)? clear,
    TResult? Function(BtnPressed value)? btnPressed,
    TResult? Function(CountryChanged value)? countryChanged,
  }) {
    return countryChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialShippingAddress value)? initialShippingAddress,
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

abstract class CountryChanged implements ShippingAddressEvent {
  const factory CountryChanged(final String country) = _$CountryChanged;

  String get country;
  @JsonKey(ignore: true)
  _$$CountryChangedCopyWith<_$CountryChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ShippingAddressState {
  TextEditingController get firstName => throw _privateConstructorUsedError;
  TextEditingController get lastName => throw _privateConstructorUsedError;
  TextEditingController get companyName => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  TextEditingController get address1 => throw _privateConstructorUsedError;
  TextEditingController get address2 => throw _privateConstructorUsedError;
  TextEditingController get city => throw _privateConstructorUsedError;
  TextEditingController get state => throw _privateConstructorUsedError;
  TextEditingController get postcode => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<ApiFailure, Unit>> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShippingAddressStateCopyWith<ShippingAddressState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShippingAddressStateCopyWith<$Res> {
  factory $ShippingAddressStateCopyWith(ShippingAddressState value,
          $Res Function(ShippingAddressState) then) =
      _$ShippingAddressStateCopyWithImpl<$Res, ShippingAddressState>;
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
      bool isSubmitting,
      Option<Either<ApiFailure, Unit>> failureOrSuccessOption});
}

/// @nodoc
class _$ShippingAddressStateCopyWithImpl<$Res,
        $Val extends ShippingAddressState>
    implements $ShippingAddressStateCopyWith<$Res> {
  _$ShippingAddressStateCopyWithImpl(this._value, this._then);

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
abstract class _$$_ShippingAddressStateCopyWith<$Res>
    implements $ShippingAddressStateCopyWith<$Res> {
  factory _$$_ShippingAddressStateCopyWith(_$_ShippingAddressState value,
          $Res Function(_$_ShippingAddressState) then) =
      __$$_ShippingAddressStateCopyWithImpl<$Res>;
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
      bool isSubmitting,
      Option<Either<ApiFailure, Unit>> failureOrSuccessOption});
}

/// @nodoc
class __$$_ShippingAddressStateCopyWithImpl<$Res>
    extends _$ShippingAddressStateCopyWithImpl<$Res, _$_ShippingAddressState>
    implements _$$_ShippingAddressStateCopyWith<$Res> {
  __$$_ShippingAddressStateCopyWithImpl(_$_ShippingAddressState _value,
      $Res Function(_$_ShippingAddressState) _then)
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
    Object? isSubmitting = null,
    Object? failureOrSuccessOption = null,
  }) {
    return _then(_$_ShippingAddressState(
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

class _$_ShippingAddressState implements _ShippingAddressState {
  const _$_ShippingAddressState(
      {required this.firstName,
      required this.lastName,
      required this.companyName,
      required this.country,
      required this.address1,
      required this.address2,
      required this.city,
      required this.state,
      required this.postcode,
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
  final bool isSubmitting;
  @override
  final Option<Either<ApiFailure, Unit>> failureOrSuccessOption;

  @override
  String toString() {
    return 'ShippingAddressState(firstName: $firstName, lastName: $lastName, companyName: $companyName, country: $country, address1: $address1, address2: $address2, city: $city, state: $state, postcode: $postcode, isSubmitting: $isSubmitting, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShippingAddressState &&
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
      isSubmitting,
      failureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShippingAddressStateCopyWith<_$_ShippingAddressState> get copyWith =>
      __$$_ShippingAddressStateCopyWithImpl<_$_ShippingAddressState>(
          this, _$identity);
}

abstract class _ShippingAddressState implements ShippingAddressState {
  const factory _ShippingAddressState(
      {required final TextEditingController firstName,
      required final TextEditingController lastName,
      required final TextEditingController companyName,
      required final String country,
      required final TextEditingController address1,
      required final TextEditingController address2,
      required final TextEditingController city,
      required final TextEditingController state,
      required final TextEditingController postcode,
      required final bool isSubmitting,
      required final Option<Either<ApiFailure, Unit>>
          failureOrSuccessOption}) = _$_ShippingAddressState;

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
  bool get isSubmitting;
  @override
  Option<Either<ApiFailure, Unit>> get failureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_ShippingAddressStateCopyWith<_$_ShippingAddressState> get copyWith =>
      throw _privateConstructorUsedError;
}
