// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checkout_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CheckoutEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Car car) selectedCarChanged,
    required TResult Function(PickerDateRange? range) dateRangeChanged,
    required TResult Function() clearDateRange,
    required TResult Function() clear,
    required TResult Function() btnPressed,
    required TResult Function(Addons addon) updateAddons,
    required TResult Function(Billing? billing) billingInfoChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Car car)? selectedCarChanged,
    TResult? Function(PickerDateRange? range)? dateRangeChanged,
    TResult? Function()? clearDateRange,
    TResult? Function()? clear,
    TResult? Function()? btnPressed,
    TResult? Function(Addons addon)? updateAddons,
    TResult? Function(Billing? billing)? billingInfoChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Car car)? selectedCarChanged,
    TResult Function(PickerDateRange? range)? dateRangeChanged,
    TResult Function()? clearDateRange,
    TResult Function()? clear,
    TResult Function()? btnPressed,
    TResult Function(Addons addon)? updateAddons,
    TResult Function(Billing? billing)? billingInfoChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectedCarChanged value) selectedCarChanged,
    required TResult Function(DateRangeChanged value) dateRangeChanged,
    required TResult Function(ClearDateRange value) clearDateRange,
    required TResult Function(Clear value) clear,
    required TResult Function(BtnPressed value) btnPressed,
    required TResult Function(UpdateAddons value) updateAddons,
    required TResult Function(BillingInfoChanged value) billingInfoChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectedCarChanged value)? selectedCarChanged,
    TResult? Function(DateRangeChanged value)? dateRangeChanged,
    TResult? Function(ClearDateRange value)? clearDateRange,
    TResult? Function(Clear value)? clear,
    TResult? Function(BtnPressed value)? btnPressed,
    TResult? Function(UpdateAddons value)? updateAddons,
    TResult? Function(BillingInfoChanged value)? billingInfoChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectedCarChanged value)? selectedCarChanged,
    TResult Function(DateRangeChanged value)? dateRangeChanged,
    TResult Function(ClearDateRange value)? clearDateRange,
    TResult Function(Clear value)? clear,
    TResult Function(BtnPressed value)? btnPressed,
    TResult Function(UpdateAddons value)? updateAddons,
    TResult Function(BillingInfoChanged value)? billingInfoChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckoutEventCopyWith<$Res> {
  factory $CheckoutEventCopyWith(
          CheckoutEvent value, $Res Function(CheckoutEvent) then) =
      _$CheckoutEventCopyWithImpl<$Res, CheckoutEvent>;
}

/// @nodoc
class _$CheckoutEventCopyWithImpl<$Res, $Val extends CheckoutEvent>
    implements $CheckoutEventCopyWith<$Res> {
  _$CheckoutEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SelectedCarChangedCopyWith<$Res> {
  factory _$$SelectedCarChangedCopyWith(_$SelectedCarChanged value,
          $Res Function(_$SelectedCarChanged) then) =
      __$$SelectedCarChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({Car car});
}

/// @nodoc
class __$$SelectedCarChangedCopyWithImpl<$Res>
    extends _$CheckoutEventCopyWithImpl<$Res, _$SelectedCarChanged>
    implements _$$SelectedCarChangedCopyWith<$Res> {
  __$$SelectedCarChangedCopyWithImpl(
      _$SelectedCarChanged _value, $Res Function(_$SelectedCarChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? car = null,
  }) {
    return _then(_$SelectedCarChanged(
      null == car
          ? _value.car
          : car // ignore: cast_nullable_to_non_nullable
              as Car,
    ));
  }
}

/// @nodoc

class _$SelectedCarChanged implements SelectedCarChanged {
  const _$SelectedCarChanged(this.car);

  @override
  final Car car;

  @override
  String toString() {
    return 'CheckoutEvent.selectedCarChanged(car: $car)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectedCarChanged &&
            (identical(other.car, car) || other.car == car));
  }

  @override
  int get hashCode => Object.hash(runtimeType, car);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectedCarChangedCopyWith<_$SelectedCarChanged> get copyWith =>
      __$$SelectedCarChangedCopyWithImpl<_$SelectedCarChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Car car) selectedCarChanged,
    required TResult Function(PickerDateRange? range) dateRangeChanged,
    required TResult Function() clearDateRange,
    required TResult Function() clear,
    required TResult Function() btnPressed,
    required TResult Function(Addons addon) updateAddons,
    required TResult Function(Billing? billing) billingInfoChanged,
  }) {
    return selectedCarChanged(car);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Car car)? selectedCarChanged,
    TResult? Function(PickerDateRange? range)? dateRangeChanged,
    TResult? Function()? clearDateRange,
    TResult? Function()? clear,
    TResult? Function()? btnPressed,
    TResult? Function(Addons addon)? updateAddons,
    TResult? Function(Billing? billing)? billingInfoChanged,
  }) {
    return selectedCarChanged?.call(car);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Car car)? selectedCarChanged,
    TResult Function(PickerDateRange? range)? dateRangeChanged,
    TResult Function()? clearDateRange,
    TResult Function()? clear,
    TResult Function()? btnPressed,
    TResult Function(Addons addon)? updateAddons,
    TResult Function(Billing? billing)? billingInfoChanged,
    required TResult orElse(),
  }) {
    if (selectedCarChanged != null) {
      return selectedCarChanged(car);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectedCarChanged value) selectedCarChanged,
    required TResult Function(DateRangeChanged value) dateRangeChanged,
    required TResult Function(ClearDateRange value) clearDateRange,
    required TResult Function(Clear value) clear,
    required TResult Function(BtnPressed value) btnPressed,
    required TResult Function(UpdateAddons value) updateAddons,
    required TResult Function(BillingInfoChanged value) billingInfoChanged,
  }) {
    return selectedCarChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectedCarChanged value)? selectedCarChanged,
    TResult? Function(DateRangeChanged value)? dateRangeChanged,
    TResult? Function(ClearDateRange value)? clearDateRange,
    TResult? Function(Clear value)? clear,
    TResult? Function(BtnPressed value)? btnPressed,
    TResult? Function(UpdateAddons value)? updateAddons,
    TResult? Function(BillingInfoChanged value)? billingInfoChanged,
  }) {
    return selectedCarChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectedCarChanged value)? selectedCarChanged,
    TResult Function(DateRangeChanged value)? dateRangeChanged,
    TResult Function(ClearDateRange value)? clearDateRange,
    TResult Function(Clear value)? clear,
    TResult Function(BtnPressed value)? btnPressed,
    TResult Function(UpdateAddons value)? updateAddons,
    TResult Function(BillingInfoChanged value)? billingInfoChanged,
    required TResult orElse(),
  }) {
    if (selectedCarChanged != null) {
      return selectedCarChanged(this);
    }
    return orElse();
  }
}

abstract class SelectedCarChanged implements CheckoutEvent {
  const factory SelectedCarChanged(final Car car) = _$SelectedCarChanged;

  Car get car;
  @JsonKey(ignore: true)
  _$$SelectedCarChangedCopyWith<_$SelectedCarChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DateRangeChangedCopyWith<$Res> {
  factory _$$DateRangeChangedCopyWith(
          _$DateRangeChanged value, $Res Function(_$DateRangeChanged) then) =
      __$$DateRangeChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({PickerDateRange? range});
}

/// @nodoc
class __$$DateRangeChangedCopyWithImpl<$Res>
    extends _$CheckoutEventCopyWithImpl<$Res, _$DateRangeChanged>
    implements _$$DateRangeChangedCopyWith<$Res> {
  __$$DateRangeChangedCopyWithImpl(
      _$DateRangeChanged _value, $Res Function(_$DateRangeChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? range = freezed,
  }) {
    return _then(_$DateRangeChanged(
      freezed == range
          ? _value.range
          : range // ignore: cast_nullable_to_non_nullable
              as PickerDateRange?,
    ));
  }
}

/// @nodoc

class _$DateRangeChanged implements DateRangeChanged {
  const _$DateRangeChanged(this.range);

  @override
  final PickerDateRange? range;

  @override
  String toString() {
    return 'CheckoutEvent.dateRangeChanged(range: $range)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DateRangeChanged &&
            (identical(other.range, range) || other.range == range));
  }

  @override
  int get hashCode => Object.hash(runtimeType, range);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DateRangeChangedCopyWith<_$DateRangeChanged> get copyWith =>
      __$$DateRangeChangedCopyWithImpl<_$DateRangeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Car car) selectedCarChanged,
    required TResult Function(PickerDateRange? range) dateRangeChanged,
    required TResult Function() clearDateRange,
    required TResult Function() clear,
    required TResult Function() btnPressed,
    required TResult Function(Addons addon) updateAddons,
    required TResult Function(Billing? billing) billingInfoChanged,
  }) {
    return dateRangeChanged(range);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Car car)? selectedCarChanged,
    TResult? Function(PickerDateRange? range)? dateRangeChanged,
    TResult? Function()? clearDateRange,
    TResult? Function()? clear,
    TResult? Function()? btnPressed,
    TResult? Function(Addons addon)? updateAddons,
    TResult? Function(Billing? billing)? billingInfoChanged,
  }) {
    return dateRangeChanged?.call(range);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Car car)? selectedCarChanged,
    TResult Function(PickerDateRange? range)? dateRangeChanged,
    TResult Function()? clearDateRange,
    TResult Function()? clear,
    TResult Function()? btnPressed,
    TResult Function(Addons addon)? updateAddons,
    TResult Function(Billing? billing)? billingInfoChanged,
    required TResult orElse(),
  }) {
    if (dateRangeChanged != null) {
      return dateRangeChanged(range);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectedCarChanged value) selectedCarChanged,
    required TResult Function(DateRangeChanged value) dateRangeChanged,
    required TResult Function(ClearDateRange value) clearDateRange,
    required TResult Function(Clear value) clear,
    required TResult Function(BtnPressed value) btnPressed,
    required TResult Function(UpdateAddons value) updateAddons,
    required TResult Function(BillingInfoChanged value) billingInfoChanged,
  }) {
    return dateRangeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectedCarChanged value)? selectedCarChanged,
    TResult? Function(DateRangeChanged value)? dateRangeChanged,
    TResult? Function(ClearDateRange value)? clearDateRange,
    TResult? Function(Clear value)? clear,
    TResult? Function(BtnPressed value)? btnPressed,
    TResult? Function(UpdateAddons value)? updateAddons,
    TResult? Function(BillingInfoChanged value)? billingInfoChanged,
  }) {
    return dateRangeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectedCarChanged value)? selectedCarChanged,
    TResult Function(DateRangeChanged value)? dateRangeChanged,
    TResult Function(ClearDateRange value)? clearDateRange,
    TResult Function(Clear value)? clear,
    TResult Function(BtnPressed value)? btnPressed,
    TResult Function(UpdateAddons value)? updateAddons,
    TResult Function(BillingInfoChanged value)? billingInfoChanged,
    required TResult orElse(),
  }) {
    if (dateRangeChanged != null) {
      return dateRangeChanged(this);
    }
    return orElse();
  }
}

abstract class DateRangeChanged implements CheckoutEvent {
  const factory DateRangeChanged(final PickerDateRange? range) =
      _$DateRangeChanged;

  PickerDateRange? get range;
  @JsonKey(ignore: true)
  _$$DateRangeChangedCopyWith<_$DateRangeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearDateRangeCopyWith<$Res> {
  factory _$$ClearDateRangeCopyWith(
          _$ClearDateRange value, $Res Function(_$ClearDateRange) then) =
      __$$ClearDateRangeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearDateRangeCopyWithImpl<$Res>
    extends _$CheckoutEventCopyWithImpl<$Res, _$ClearDateRange>
    implements _$$ClearDateRangeCopyWith<$Res> {
  __$$ClearDateRangeCopyWithImpl(
      _$ClearDateRange _value, $Res Function(_$ClearDateRange) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearDateRange implements ClearDateRange {
  const _$ClearDateRange();

  @override
  String toString() {
    return 'CheckoutEvent.clearDateRange()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearDateRange);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Car car) selectedCarChanged,
    required TResult Function(PickerDateRange? range) dateRangeChanged,
    required TResult Function() clearDateRange,
    required TResult Function() clear,
    required TResult Function() btnPressed,
    required TResult Function(Addons addon) updateAddons,
    required TResult Function(Billing? billing) billingInfoChanged,
  }) {
    return clearDateRange();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Car car)? selectedCarChanged,
    TResult? Function(PickerDateRange? range)? dateRangeChanged,
    TResult? Function()? clearDateRange,
    TResult? Function()? clear,
    TResult? Function()? btnPressed,
    TResult? Function(Addons addon)? updateAddons,
    TResult? Function(Billing? billing)? billingInfoChanged,
  }) {
    return clearDateRange?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Car car)? selectedCarChanged,
    TResult Function(PickerDateRange? range)? dateRangeChanged,
    TResult Function()? clearDateRange,
    TResult Function()? clear,
    TResult Function()? btnPressed,
    TResult Function(Addons addon)? updateAddons,
    TResult Function(Billing? billing)? billingInfoChanged,
    required TResult orElse(),
  }) {
    if (clearDateRange != null) {
      return clearDateRange();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectedCarChanged value) selectedCarChanged,
    required TResult Function(DateRangeChanged value) dateRangeChanged,
    required TResult Function(ClearDateRange value) clearDateRange,
    required TResult Function(Clear value) clear,
    required TResult Function(BtnPressed value) btnPressed,
    required TResult Function(UpdateAddons value) updateAddons,
    required TResult Function(BillingInfoChanged value) billingInfoChanged,
  }) {
    return clearDateRange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectedCarChanged value)? selectedCarChanged,
    TResult? Function(DateRangeChanged value)? dateRangeChanged,
    TResult? Function(ClearDateRange value)? clearDateRange,
    TResult? Function(Clear value)? clear,
    TResult? Function(BtnPressed value)? btnPressed,
    TResult? Function(UpdateAddons value)? updateAddons,
    TResult? Function(BillingInfoChanged value)? billingInfoChanged,
  }) {
    return clearDateRange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectedCarChanged value)? selectedCarChanged,
    TResult Function(DateRangeChanged value)? dateRangeChanged,
    TResult Function(ClearDateRange value)? clearDateRange,
    TResult Function(Clear value)? clear,
    TResult Function(BtnPressed value)? btnPressed,
    TResult Function(UpdateAddons value)? updateAddons,
    TResult Function(BillingInfoChanged value)? billingInfoChanged,
    required TResult orElse(),
  }) {
    if (clearDateRange != null) {
      return clearDateRange(this);
    }
    return orElse();
  }
}

abstract class ClearDateRange implements CheckoutEvent {
  const factory ClearDateRange() = _$ClearDateRange;
}

/// @nodoc
abstract class _$$ClearCopyWith<$Res> {
  factory _$$ClearCopyWith(_$Clear value, $Res Function(_$Clear) then) =
      __$$ClearCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearCopyWithImpl<$Res>
    extends _$CheckoutEventCopyWithImpl<$Res, _$Clear>
    implements _$$ClearCopyWith<$Res> {
  __$$ClearCopyWithImpl(_$Clear _value, $Res Function(_$Clear) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Clear implements Clear {
  const _$Clear();

  @override
  String toString() {
    return 'CheckoutEvent.clear()';
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
    required TResult Function(Car car) selectedCarChanged,
    required TResult Function(PickerDateRange? range) dateRangeChanged,
    required TResult Function() clearDateRange,
    required TResult Function() clear,
    required TResult Function() btnPressed,
    required TResult Function(Addons addon) updateAddons,
    required TResult Function(Billing? billing) billingInfoChanged,
  }) {
    return clear();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Car car)? selectedCarChanged,
    TResult? Function(PickerDateRange? range)? dateRangeChanged,
    TResult? Function()? clearDateRange,
    TResult? Function()? clear,
    TResult? Function()? btnPressed,
    TResult? Function(Addons addon)? updateAddons,
    TResult? Function(Billing? billing)? billingInfoChanged,
  }) {
    return clear?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Car car)? selectedCarChanged,
    TResult Function(PickerDateRange? range)? dateRangeChanged,
    TResult Function()? clearDateRange,
    TResult Function()? clear,
    TResult Function()? btnPressed,
    TResult Function(Addons addon)? updateAddons,
    TResult Function(Billing? billing)? billingInfoChanged,
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
    required TResult Function(SelectedCarChanged value) selectedCarChanged,
    required TResult Function(DateRangeChanged value) dateRangeChanged,
    required TResult Function(ClearDateRange value) clearDateRange,
    required TResult Function(Clear value) clear,
    required TResult Function(BtnPressed value) btnPressed,
    required TResult Function(UpdateAddons value) updateAddons,
    required TResult Function(BillingInfoChanged value) billingInfoChanged,
  }) {
    return clear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectedCarChanged value)? selectedCarChanged,
    TResult? Function(DateRangeChanged value)? dateRangeChanged,
    TResult? Function(ClearDateRange value)? clearDateRange,
    TResult? Function(Clear value)? clear,
    TResult? Function(BtnPressed value)? btnPressed,
    TResult? Function(UpdateAddons value)? updateAddons,
    TResult? Function(BillingInfoChanged value)? billingInfoChanged,
  }) {
    return clear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectedCarChanged value)? selectedCarChanged,
    TResult Function(DateRangeChanged value)? dateRangeChanged,
    TResult Function(ClearDateRange value)? clearDateRange,
    TResult Function(Clear value)? clear,
    TResult Function(BtnPressed value)? btnPressed,
    TResult Function(UpdateAddons value)? updateAddons,
    TResult Function(BillingInfoChanged value)? billingInfoChanged,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear(this);
    }
    return orElse();
  }
}

abstract class Clear implements CheckoutEvent {
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
    extends _$CheckoutEventCopyWithImpl<$Res, _$BtnPressed>
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
    return 'CheckoutEvent.btnPressed()';
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
    required TResult Function(Car car) selectedCarChanged,
    required TResult Function(PickerDateRange? range) dateRangeChanged,
    required TResult Function() clearDateRange,
    required TResult Function() clear,
    required TResult Function() btnPressed,
    required TResult Function(Addons addon) updateAddons,
    required TResult Function(Billing? billing) billingInfoChanged,
  }) {
    return btnPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Car car)? selectedCarChanged,
    TResult? Function(PickerDateRange? range)? dateRangeChanged,
    TResult? Function()? clearDateRange,
    TResult? Function()? clear,
    TResult? Function()? btnPressed,
    TResult? Function(Addons addon)? updateAddons,
    TResult? Function(Billing? billing)? billingInfoChanged,
  }) {
    return btnPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Car car)? selectedCarChanged,
    TResult Function(PickerDateRange? range)? dateRangeChanged,
    TResult Function()? clearDateRange,
    TResult Function()? clear,
    TResult Function()? btnPressed,
    TResult Function(Addons addon)? updateAddons,
    TResult Function(Billing? billing)? billingInfoChanged,
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
    required TResult Function(SelectedCarChanged value) selectedCarChanged,
    required TResult Function(DateRangeChanged value) dateRangeChanged,
    required TResult Function(ClearDateRange value) clearDateRange,
    required TResult Function(Clear value) clear,
    required TResult Function(BtnPressed value) btnPressed,
    required TResult Function(UpdateAddons value) updateAddons,
    required TResult Function(BillingInfoChanged value) billingInfoChanged,
  }) {
    return btnPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectedCarChanged value)? selectedCarChanged,
    TResult? Function(DateRangeChanged value)? dateRangeChanged,
    TResult? Function(ClearDateRange value)? clearDateRange,
    TResult? Function(Clear value)? clear,
    TResult? Function(BtnPressed value)? btnPressed,
    TResult? Function(UpdateAddons value)? updateAddons,
    TResult? Function(BillingInfoChanged value)? billingInfoChanged,
  }) {
    return btnPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectedCarChanged value)? selectedCarChanged,
    TResult Function(DateRangeChanged value)? dateRangeChanged,
    TResult Function(ClearDateRange value)? clearDateRange,
    TResult Function(Clear value)? clear,
    TResult Function(BtnPressed value)? btnPressed,
    TResult Function(UpdateAddons value)? updateAddons,
    TResult Function(BillingInfoChanged value)? billingInfoChanged,
    required TResult orElse(),
  }) {
    if (btnPressed != null) {
      return btnPressed(this);
    }
    return orElse();
  }
}

abstract class BtnPressed implements CheckoutEvent {
  const factory BtnPressed() = _$BtnPressed;
}

/// @nodoc
abstract class _$$UpdateAddonsCopyWith<$Res> {
  factory _$$UpdateAddonsCopyWith(
          _$UpdateAddons value, $Res Function(_$UpdateAddons) then) =
      __$$UpdateAddonsCopyWithImpl<$Res>;
  @useResult
  $Res call({Addons addon});
}

/// @nodoc
class __$$UpdateAddonsCopyWithImpl<$Res>
    extends _$CheckoutEventCopyWithImpl<$Res, _$UpdateAddons>
    implements _$$UpdateAddonsCopyWith<$Res> {
  __$$UpdateAddonsCopyWithImpl(
      _$UpdateAddons _value, $Res Function(_$UpdateAddons) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addon = null,
  }) {
    return _then(_$UpdateAddons(
      null == addon
          ? _value.addon
          : addon // ignore: cast_nullable_to_non_nullable
              as Addons,
    ));
  }
}

/// @nodoc

class _$UpdateAddons implements UpdateAddons {
  const _$UpdateAddons(this.addon);

  @override
  final Addons addon;

  @override
  String toString() {
    return 'CheckoutEvent.updateAddons(addon: $addon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateAddons &&
            (identical(other.addon, addon) || other.addon == addon));
  }

  @override
  int get hashCode => Object.hash(runtimeType, addon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateAddonsCopyWith<_$UpdateAddons> get copyWith =>
      __$$UpdateAddonsCopyWithImpl<_$UpdateAddons>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Car car) selectedCarChanged,
    required TResult Function(PickerDateRange? range) dateRangeChanged,
    required TResult Function() clearDateRange,
    required TResult Function() clear,
    required TResult Function() btnPressed,
    required TResult Function(Addons addon) updateAddons,
    required TResult Function(Billing? billing) billingInfoChanged,
  }) {
    return updateAddons(addon);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Car car)? selectedCarChanged,
    TResult? Function(PickerDateRange? range)? dateRangeChanged,
    TResult? Function()? clearDateRange,
    TResult? Function()? clear,
    TResult? Function()? btnPressed,
    TResult? Function(Addons addon)? updateAddons,
    TResult? Function(Billing? billing)? billingInfoChanged,
  }) {
    return updateAddons?.call(addon);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Car car)? selectedCarChanged,
    TResult Function(PickerDateRange? range)? dateRangeChanged,
    TResult Function()? clearDateRange,
    TResult Function()? clear,
    TResult Function()? btnPressed,
    TResult Function(Addons addon)? updateAddons,
    TResult Function(Billing? billing)? billingInfoChanged,
    required TResult orElse(),
  }) {
    if (updateAddons != null) {
      return updateAddons(addon);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectedCarChanged value) selectedCarChanged,
    required TResult Function(DateRangeChanged value) dateRangeChanged,
    required TResult Function(ClearDateRange value) clearDateRange,
    required TResult Function(Clear value) clear,
    required TResult Function(BtnPressed value) btnPressed,
    required TResult Function(UpdateAddons value) updateAddons,
    required TResult Function(BillingInfoChanged value) billingInfoChanged,
  }) {
    return updateAddons(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectedCarChanged value)? selectedCarChanged,
    TResult? Function(DateRangeChanged value)? dateRangeChanged,
    TResult? Function(ClearDateRange value)? clearDateRange,
    TResult? Function(Clear value)? clear,
    TResult? Function(BtnPressed value)? btnPressed,
    TResult? Function(UpdateAddons value)? updateAddons,
    TResult? Function(BillingInfoChanged value)? billingInfoChanged,
  }) {
    return updateAddons?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectedCarChanged value)? selectedCarChanged,
    TResult Function(DateRangeChanged value)? dateRangeChanged,
    TResult Function(ClearDateRange value)? clearDateRange,
    TResult Function(Clear value)? clear,
    TResult Function(BtnPressed value)? btnPressed,
    TResult Function(UpdateAddons value)? updateAddons,
    TResult Function(BillingInfoChanged value)? billingInfoChanged,
    required TResult orElse(),
  }) {
    if (updateAddons != null) {
      return updateAddons(this);
    }
    return orElse();
  }
}

abstract class UpdateAddons implements CheckoutEvent {
  const factory UpdateAddons(final Addons addon) = _$UpdateAddons;

  Addons get addon;
  @JsonKey(ignore: true)
  _$$UpdateAddonsCopyWith<_$UpdateAddons> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BillingInfoChangedCopyWith<$Res> {
  factory _$$BillingInfoChangedCopyWith(_$BillingInfoChanged value,
          $Res Function(_$BillingInfoChanged) then) =
      __$$BillingInfoChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({Billing? billing});
}

/// @nodoc
class __$$BillingInfoChangedCopyWithImpl<$Res>
    extends _$CheckoutEventCopyWithImpl<$Res, _$BillingInfoChanged>
    implements _$$BillingInfoChangedCopyWith<$Res> {
  __$$BillingInfoChangedCopyWithImpl(
      _$BillingInfoChanged _value, $Res Function(_$BillingInfoChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? billing = freezed,
  }) {
    return _then(_$BillingInfoChanged(
      freezed == billing
          ? _value.billing
          : billing // ignore: cast_nullable_to_non_nullable
              as Billing?,
    ));
  }
}

/// @nodoc

class _$BillingInfoChanged implements BillingInfoChanged {
  const _$BillingInfoChanged(this.billing);

  @override
  final Billing? billing;

  @override
  String toString() {
    return 'CheckoutEvent.billingInfoChanged(billing: $billing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BillingInfoChanged &&
            (identical(other.billing, billing) || other.billing == billing));
  }

  @override
  int get hashCode => Object.hash(runtimeType, billing);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BillingInfoChangedCopyWith<_$BillingInfoChanged> get copyWith =>
      __$$BillingInfoChangedCopyWithImpl<_$BillingInfoChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Car car) selectedCarChanged,
    required TResult Function(PickerDateRange? range) dateRangeChanged,
    required TResult Function() clearDateRange,
    required TResult Function() clear,
    required TResult Function() btnPressed,
    required TResult Function(Addons addon) updateAddons,
    required TResult Function(Billing? billing) billingInfoChanged,
  }) {
    return billingInfoChanged(billing);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Car car)? selectedCarChanged,
    TResult? Function(PickerDateRange? range)? dateRangeChanged,
    TResult? Function()? clearDateRange,
    TResult? Function()? clear,
    TResult? Function()? btnPressed,
    TResult? Function(Addons addon)? updateAddons,
    TResult? Function(Billing? billing)? billingInfoChanged,
  }) {
    return billingInfoChanged?.call(billing);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Car car)? selectedCarChanged,
    TResult Function(PickerDateRange? range)? dateRangeChanged,
    TResult Function()? clearDateRange,
    TResult Function()? clear,
    TResult Function()? btnPressed,
    TResult Function(Addons addon)? updateAddons,
    TResult Function(Billing? billing)? billingInfoChanged,
    required TResult orElse(),
  }) {
    if (billingInfoChanged != null) {
      return billingInfoChanged(billing);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectedCarChanged value) selectedCarChanged,
    required TResult Function(DateRangeChanged value) dateRangeChanged,
    required TResult Function(ClearDateRange value) clearDateRange,
    required TResult Function(Clear value) clear,
    required TResult Function(BtnPressed value) btnPressed,
    required TResult Function(UpdateAddons value) updateAddons,
    required TResult Function(BillingInfoChanged value) billingInfoChanged,
  }) {
    return billingInfoChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectedCarChanged value)? selectedCarChanged,
    TResult? Function(DateRangeChanged value)? dateRangeChanged,
    TResult? Function(ClearDateRange value)? clearDateRange,
    TResult? Function(Clear value)? clear,
    TResult? Function(BtnPressed value)? btnPressed,
    TResult? Function(UpdateAddons value)? updateAddons,
    TResult? Function(BillingInfoChanged value)? billingInfoChanged,
  }) {
    return billingInfoChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectedCarChanged value)? selectedCarChanged,
    TResult Function(DateRangeChanged value)? dateRangeChanged,
    TResult Function(ClearDateRange value)? clearDateRange,
    TResult Function(Clear value)? clear,
    TResult Function(BtnPressed value)? btnPressed,
    TResult Function(UpdateAddons value)? updateAddons,
    TResult Function(BillingInfoChanged value)? billingInfoChanged,
    required TResult orElse(),
  }) {
    if (billingInfoChanged != null) {
      return billingInfoChanged(this);
    }
    return orElse();
  }
}

abstract class BillingInfoChanged implements CheckoutEvent {
  const factory BillingInfoChanged(final Billing? billing) =
      _$BillingInfoChanged;

  Billing? get billing;
  @JsonKey(ignore: true)
  _$$BillingInfoChangedCopyWith<_$BillingInfoChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CheckoutState {
  Car? get selectedCar => throw _privateConstructorUsedError;
  PickerDateRange? get dateRange => throw _privateConstructorUsedError;
  DateRangePickerController get dateRangeController =>
      throw _privateConstructorUsedError;
  List<Addons> get addons => throw _privateConstructorUsedError;
  double? get totalAddons => throw _privateConstructorUsedError;
  double? get basePrice => throw _privateConstructorUsedError;
  int? get reservationNights => throw _privateConstructorUsedError;
  double? get longTermDiscount => throw _privateConstructorUsedError;
  double? get totalPrice => throw _privateConstructorUsedError;
  double? get dueNow => throw _privateConstructorUsedError;
  Billing? get billingInfo => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<OrderFailure, Unit>> get orderFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CheckoutStateCopyWith<CheckoutState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckoutStateCopyWith<$Res> {
  factory $CheckoutStateCopyWith(
          CheckoutState value, $Res Function(CheckoutState) then) =
      _$CheckoutStateCopyWithImpl<$Res, CheckoutState>;
  @useResult
  $Res call(
      {Car? selectedCar,
      PickerDateRange? dateRange,
      DateRangePickerController dateRangeController,
      List<Addons> addons,
      double? totalAddons,
      double? basePrice,
      int? reservationNights,
      double? longTermDiscount,
      double? totalPrice,
      double? dueNow,
      Billing? billingInfo,
      bool isSubmitting,
      Option<Either<OrderFailure, Unit>> orderFailureOrSuccessOption});
}

/// @nodoc
class _$CheckoutStateCopyWithImpl<$Res, $Val extends CheckoutState>
    implements $CheckoutStateCopyWith<$Res> {
  _$CheckoutStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedCar = freezed,
    Object? dateRange = freezed,
    Object? dateRangeController = null,
    Object? addons = null,
    Object? totalAddons = freezed,
    Object? basePrice = freezed,
    Object? reservationNights = freezed,
    Object? longTermDiscount = freezed,
    Object? totalPrice = freezed,
    Object? dueNow = freezed,
    Object? billingInfo = freezed,
    Object? isSubmitting = null,
    Object? orderFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      selectedCar: freezed == selectedCar
          ? _value.selectedCar
          : selectedCar // ignore: cast_nullable_to_non_nullable
              as Car?,
      dateRange: freezed == dateRange
          ? _value.dateRange
          : dateRange // ignore: cast_nullable_to_non_nullable
              as PickerDateRange?,
      dateRangeController: null == dateRangeController
          ? _value.dateRangeController
          : dateRangeController // ignore: cast_nullable_to_non_nullable
              as DateRangePickerController,
      addons: null == addons
          ? _value.addons
          : addons // ignore: cast_nullable_to_non_nullable
              as List<Addons>,
      totalAddons: freezed == totalAddons
          ? _value.totalAddons
          : totalAddons // ignore: cast_nullable_to_non_nullable
              as double?,
      basePrice: freezed == basePrice
          ? _value.basePrice
          : basePrice // ignore: cast_nullable_to_non_nullable
              as double?,
      reservationNights: freezed == reservationNights
          ? _value.reservationNights
          : reservationNights // ignore: cast_nullable_to_non_nullable
              as int?,
      longTermDiscount: freezed == longTermDiscount
          ? _value.longTermDiscount
          : longTermDiscount // ignore: cast_nullable_to_non_nullable
              as double?,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      dueNow: freezed == dueNow
          ? _value.dueNow
          : dueNow // ignore: cast_nullable_to_non_nullable
              as double?,
      billingInfo: freezed == billingInfo
          ? _value.billingInfo
          : billingInfo // ignore: cast_nullable_to_non_nullable
              as Billing?,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      orderFailureOrSuccessOption: null == orderFailureOrSuccessOption
          ? _value.orderFailureOrSuccessOption
          : orderFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<OrderFailure, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CheckoutStateCopyWith<$Res>
    implements $CheckoutStateCopyWith<$Res> {
  factory _$$_CheckoutStateCopyWith(
          _$_CheckoutState value, $Res Function(_$_CheckoutState) then) =
      __$$_CheckoutStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Car? selectedCar,
      PickerDateRange? dateRange,
      DateRangePickerController dateRangeController,
      List<Addons> addons,
      double? totalAddons,
      double? basePrice,
      int? reservationNights,
      double? longTermDiscount,
      double? totalPrice,
      double? dueNow,
      Billing? billingInfo,
      bool isSubmitting,
      Option<Either<OrderFailure, Unit>> orderFailureOrSuccessOption});
}

/// @nodoc
class __$$_CheckoutStateCopyWithImpl<$Res>
    extends _$CheckoutStateCopyWithImpl<$Res, _$_CheckoutState>
    implements _$$_CheckoutStateCopyWith<$Res> {
  __$$_CheckoutStateCopyWithImpl(
      _$_CheckoutState _value, $Res Function(_$_CheckoutState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedCar = freezed,
    Object? dateRange = freezed,
    Object? dateRangeController = null,
    Object? addons = null,
    Object? totalAddons = freezed,
    Object? basePrice = freezed,
    Object? reservationNights = freezed,
    Object? longTermDiscount = freezed,
    Object? totalPrice = freezed,
    Object? dueNow = freezed,
    Object? billingInfo = freezed,
    Object? isSubmitting = null,
    Object? orderFailureOrSuccessOption = null,
  }) {
    return _then(_$_CheckoutState(
      selectedCar: freezed == selectedCar
          ? _value.selectedCar
          : selectedCar // ignore: cast_nullable_to_non_nullable
              as Car?,
      dateRange: freezed == dateRange
          ? _value.dateRange
          : dateRange // ignore: cast_nullable_to_non_nullable
              as PickerDateRange?,
      dateRangeController: null == dateRangeController
          ? _value.dateRangeController
          : dateRangeController // ignore: cast_nullable_to_non_nullable
              as DateRangePickerController,
      addons: null == addons
          ? _value._addons
          : addons // ignore: cast_nullable_to_non_nullable
              as List<Addons>,
      totalAddons: freezed == totalAddons
          ? _value.totalAddons
          : totalAddons // ignore: cast_nullable_to_non_nullable
              as double?,
      basePrice: freezed == basePrice
          ? _value.basePrice
          : basePrice // ignore: cast_nullable_to_non_nullable
              as double?,
      reservationNights: freezed == reservationNights
          ? _value.reservationNights
          : reservationNights // ignore: cast_nullable_to_non_nullable
              as int?,
      longTermDiscount: freezed == longTermDiscount
          ? _value.longTermDiscount
          : longTermDiscount // ignore: cast_nullable_to_non_nullable
              as double?,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      dueNow: freezed == dueNow
          ? _value.dueNow
          : dueNow // ignore: cast_nullable_to_non_nullable
              as double?,
      billingInfo: freezed == billingInfo
          ? _value.billingInfo
          : billingInfo // ignore: cast_nullable_to_non_nullable
              as Billing?,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      orderFailureOrSuccessOption: null == orderFailureOrSuccessOption
          ? _value.orderFailureOrSuccessOption
          : orderFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<OrderFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_CheckoutState implements _CheckoutState {
  const _$_CheckoutState(
      {required this.selectedCar,
      required this.dateRange,
      required this.dateRangeController,
      required final List<Addons> addons,
      required this.totalAddons,
      required this.basePrice,
      required this.reservationNights,
      required this.longTermDiscount,
      required this.totalPrice,
      required this.dueNow,
      required this.billingInfo,
      required this.isSubmitting,
      required this.orderFailureOrSuccessOption})
      : _addons = addons;

  @override
  final Car? selectedCar;
  @override
  final PickerDateRange? dateRange;
  @override
  final DateRangePickerController dateRangeController;
  final List<Addons> _addons;
  @override
  List<Addons> get addons {
    if (_addons is EqualUnmodifiableListView) return _addons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_addons);
  }

  @override
  final double? totalAddons;
  @override
  final double? basePrice;
  @override
  final int? reservationNights;
  @override
  final double? longTermDiscount;
  @override
  final double? totalPrice;
  @override
  final double? dueNow;
  @override
  final Billing? billingInfo;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<OrderFailure, Unit>> orderFailureOrSuccessOption;

  @override
  String toString() {
    return 'CheckoutState(selectedCar: $selectedCar, dateRange: $dateRange, dateRangeController: $dateRangeController, addons: $addons, totalAddons: $totalAddons, basePrice: $basePrice, reservationNights: $reservationNights, longTermDiscount: $longTermDiscount, totalPrice: $totalPrice, dueNow: $dueNow, billingInfo: $billingInfo, isSubmitting: $isSubmitting, orderFailureOrSuccessOption: $orderFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CheckoutState &&
            (identical(other.selectedCar, selectedCar) ||
                other.selectedCar == selectedCar) &&
            (identical(other.dateRange, dateRange) ||
                other.dateRange == dateRange) &&
            (identical(other.dateRangeController, dateRangeController) ||
                other.dateRangeController == dateRangeController) &&
            const DeepCollectionEquality().equals(other._addons, _addons) &&
            (identical(other.totalAddons, totalAddons) ||
                other.totalAddons == totalAddons) &&
            (identical(other.basePrice, basePrice) ||
                other.basePrice == basePrice) &&
            (identical(other.reservationNights, reservationNights) ||
                other.reservationNights == reservationNights) &&
            (identical(other.longTermDiscount, longTermDiscount) ||
                other.longTermDiscount == longTermDiscount) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.dueNow, dueNow) || other.dueNow == dueNow) &&
            (identical(other.billingInfo, billingInfo) ||
                other.billingInfo == billingInfo) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.orderFailureOrSuccessOption,
                    orderFailureOrSuccessOption) ||
                other.orderFailureOrSuccessOption ==
                    orderFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      selectedCar,
      dateRange,
      dateRangeController,
      const DeepCollectionEquality().hash(_addons),
      totalAddons,
      basePrice,
      reservationNights,
      longTermDiscount,
      totalPrice,
      dueNow,
      billingInfo,
      isSubmitting,
      orderFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CheckoutStateCopyWith<_$_CheckoutState> get copyWith =>
      __$$_CheckoutStateCopyWithImpl<_$_CheckoutState>(this, _$identity);
}

abstract class _CheckoutState implements CheckoutState {
  const factory _CheckoutState(
      {required final Car? selectedCar,
      required final PickerDateRange? dateRange,
      required final DateRangePickerController dateRangeController,
      required final List<Addons> addons,
      required final double? totalAddons,
      required final double? basePrice,
      required final int? reservationNights,
      required final double? longTermDiscount,
      required final double? totalPrice,
      required final double? dueNow,
      required final Billing? billingInfo,
      required final bool isSubmitting,
      required final Option<Either<OrderFailure, Unit>>
          orderFailureOrSuccessOption}) = _$_CheckoutState;

  @override
  Car? get selectedCar;
  @override
  PickerDateRange? get dateRange;
  @override
  DateRangePickerController get dateRangeController;
  @override
  List<Addons> get addons;
  @override
  double? get totalAddons;
  @override
  double? get basePrice;
  @override
  int? get reservationNights;
  @override
  double? get longTermDiscount;
  @override
  double? get totalPrice;
  @override
  double? get dueNow;
  @override
  Billing? get billingInfo;
  @override
  bool get isSubmitting;
  @override
  Option<Either<OrderFailure, Unit>> get orderFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_CheckoutStateCopyWith<_$_CheckoutState> get copyWith =>
      throw _privateConstructorUsedError;
}
