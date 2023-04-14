// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'entry_checkout_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EntryCheckoutEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Entry entry) selectedEntryChanged,
    required TResult Function() clear,
    required TResult Function() btnPressed,
    required TResult Function(Billing? billing) billingInfoChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Entry entry)? selectedEntryChanged,
    TResult? Function()? clear,
    TResult? Function()? btnPressed,
    TResult? Function(Billing? billing)? billingInfoChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Entry entry)? selectedEntryChanged,
    TResult Function()? clear,
    TResult Function()? btnPressed,
    TResult Function(Billing? billing)? billingInfoChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectedEntryChanged value) selectedEntryChanged,
    required TResult Function(Clear value) clear,
    required TResult Function(BtnPressed value) btnPressed,
    required TResult Function(BillingInfoChanged value) billingInfoChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectedEntryChanged value)? selectedEntryChanged,
    TResult? Function(Clear value)? clear,
    TResult? Function(BtnPressed value)? btnPressed,
    TResult? Function(BillingInfoChanged value)? billingInfoChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectedEntryChanged value)? selectedEntryChanged,
    TResult Function(Clear value)? clear,
    TResult Function(BtnPressed value)? btnPressed,
    TResult Function(BillingInfoChanged value)? billingInfoChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntryCheckoutEventCopyWith<$Res> {
  factory $EntryCheckoutEventCopyWith(
          EntryCheckoutEvent value, $Res Function(EntryCheckoutEvent) then) =
      _$EntryCheckoutEventCopyWithImpl<$Res, EntryCheckoutEvent>;
}

/// @nodoc
class _$EntryCheckoutEventCopyWithImpl<$Res, $Val extends EntryCheckoutEvent>
    implements $EntryCheckoutEventCopyWith<$Res> {
  _$EntryCheckoutEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SelectedEntryChangedCopyWith<$Res> {
  factory _$$SelectedEntryChangedCopyWith(_$SelectedEntryChanged value,
          $Res Function(_$SelectedEntryChanged) then) =
      __$$SelectedEntryChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({Entry entry});
}

/// @nodoc
class __$$SelectedEntryChangedCopyWithImpl<$Res>
    extends _$EntryCheckoutEventCopyWithImpl<$Res, _$SelectedEntryChanged>
    implements _$$SelectedEntryChangedCopyWith<$Res> {
  __$$SelectedEntryChangedCopyWithImpl(_$SelectedEntryChanged _value,
      $Res Function(_$SelectedEntryChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entry = null,
  }) {
    return _then(_$SelectedEntryChanged(
      null == entry
          ? _value.entry
          : entry // ignore: cast_nullable_to_non_nullable
              as Entry,
    ));
  }
}

/// @nodoc

class _$SelectedEntryChanged implements SelectedEntryChanged {
  const _$SelectedEntryChanged(this.entry);

  @override
  final Entry entry;

  @override
  String toString() {
    return 'EntryCheckoutEvent.selectedEntryChanged(entry: $entry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectedEntryChanged &&
            (identical(other.entry, entry) || other.entry == entry));
  }

  @override
  int get hashCode => Object.hash(runtimeType, entry);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectedEntryChangedCopyWith<_$SelectedEntryChanged> get copyWith =>
      __$$SelectedEntryChangedCopyWithImpl<_$SelectedEntryChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Entry entry) selectedEntryChanged,
    required TResult Function() clear,
    required TResult Function() btnPressed,
    required TResult Function(Billing? billing) billingInfoChanged,
  }) {
    return selectedEntryChanged(entry);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Entry entry)? selectedEntryChanged,
    TResult? Function()? clear,
    TResult? Function()? btnPressed,
    TResult? Function(Billing? billing)? billingInfoChanged,
  }) {
    return selectedEntryChanged?.call(entry);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Entry entry)? selectedEntryChanged,
    TResult Function()? clear,
    TResult Function()? btnPressed,
    TResult Function(Billing? billing)? billingInfoChanged,
    required TResult orElse(),
  }) {
    if (selectedEntryChanged != null) {
      return selectedEntryChanged(entry);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectedEntryChanged value) selectedEntryChanged,
    required TResult Function(Clear value) clear,
    required TResult Function(BtnPressed value) btnPressed,
    required TResult Function(BillingInfoChanged value) billingInfoChanged,
  }) {
    return selectedEntryChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectedEntryChanged value)? selectedEntryChanged,
    TResult? Function(Clear value)? clear,
    TResult? Function(BtnPressed value)? btnPressed,
    TResult? Function(BillingInfoChanged value)? billingInfoChanged,
  }) {
    return selectedEntryChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectedEntryChanged value)? selectedEntryChanged,
    TResult Function(Clear value)? clear,
    TResult Function(BtnPressed value)? btnPressed,
    TResult Function(BillingInfoChanged value)? billingInfoChanged,
    required TResult orElse(),
  }) {
    if (selectedEntryChanged != null) {
      return selectedEntryChanged(this);
    }
    return orElse();
  }
}

abstract class SelectedEntryChanged implements EntryCheckoutEvent {
  const factory SelectedEntryChanged(final Entry entry) =
      _$SelectedEntryChanged;

  Entry get entry;
  @JsonKey(ignore: true)
  _$$SelectedEntryChangedCopyWith<_$SelectedEntryChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearCopyWith<$Res> {
  factory _$$ClearCopyWith(_$Clear value, $Res Function(_$Clear) then) =
      __$$ClearCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearCopyWithImpl<$Res>
    extends _$EntryCheckoutEventCopyWithImpl<$Res, _$Clear>
    implements _$$ClearCopyWith<$Res> {
  __$$ClearCopyWithImpl(_$Clear _value, $Res Function(_$Clear) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Clear implements Clear {
  const _$Clear();

  @override
  String toString() {
    return 'EntryCheckoutEvent.clear()';
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
    required TResult Function(Entry entry) selectedEntryChanged,
    required TResult Function() clear,
    required TResult Function() btnPressed,
    required TResult Function(Billing? billing) billingInfoChanged,
  }) {
    return clear();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Entry entry)? selectedEntryChanged,
    TResult? Function()? clear,
    TResult? Function()? btnPressed,
    TResult? Function(Billing? billing)? billingInfoChanged,
  }) {
    return clear?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Entry entry)? selectedEntryChanged,
    TResult Function()? clear,
    TResult Function()? btnPressed,
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
    required TResult Function(SelectedEntryChanged value) selectedEntryChanged,
    required TResult Function(Clear value) clear,
    required TResult Function(BtnPressed value) btnPressed,
    required TResult Function(BillingInfoChanged value) billingInfoChanged,
  }) {
    return clear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectedEntryChanged value)? selectedEntryChanged,
    TResult? Function(Clear value)? clear,
    TResult? Function(BtnPressed value)? btnPressed,
    TResult? Function(BillingInfoChanged value)? billingInfoChanged,
  }) {
    return clear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectedEntryChanged value)? selectedEntryChanged,
    TResult Function(Clear value)? clear,
    TResult Function(BtnPressed value)? btnPressed,
    TResult Function(BillingInfoChanged value)? billingInfoChanged,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear(this);
    }
    return orElse();
  }
}

abstract class Clear implements EntryCheckoutEvent {
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
    extends _$EntryCheckoutEventCopyWithImpl<$Res, _$BtnPressed>
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
    return 'EntryCheckoutEvent.btnPressed()';
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
    required TResult Function(Entry entry) selectedEntryChanged,
    required TResult Function() clear,
    required TResult Function() btnPressed,
    required TResult Function(Billing? billing) billingInfoChanged,
  }) {
    return btnPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Entry entry)? selectedEntryChanged,
    TResult? Function()? clear,
    TResult? Function()? btnPressed,
    TResult? Function(Billing? billing)? billingInfoChanged,
  }) {
    return btnPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Entry entry)? selectedEntryChanged,
    TResult Function()? clear,
    TResult Function()? btnPressed,
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
    required TResult Function(SelectedEntryChanged value) selectedEntryChanged,
    required TResult Function(Clear value) clear,
    required TResult Function(BtnPressed value) btnPressed,
    required TResult Function(BillingInfoChanged value) billingInfoChanged,
  }) {
    return btnPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectedEntryChanged value)? selectedEntryChanged,
    TResult? Function(Clear value)? clear,
    TResult? Function(BtnPressed value)? btnPressed,
    TResult? Function(BillingInfoChanged value)? billingInfoChanged,
  }) {
    return btnPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectedEntryChanged value)? selectedEntryChanged,
    TResult Function(Clear value)? clear,
    TResult Function(BtnPressed value)? btnPressed,
    TResult Function(BillingInfoChanged value)? billingInfoChanged,
    required TResult orElse(),
  }) {
    if (btnPressed != null) {
      return btnPressed(this);
    }
    return orElse();
  }
}

abstract class BtnPressed implements EntryCheckoutEvent {
  const factory BtnPressed() = _$BtnPressed;
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
    extends _$EntryCheckoutEventCopyWithImpl<$Res, _$BillingInfoChanged>
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
    return 'EntryCheckoutEvent.billingInfoChanged(billing: $billing)';
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
    required TResult Function(Entry entry) selectedEntryChanged,
    required TResult Function() clear,
    required TResult Function() btnPressed,
    required TResult Function(Billing? billing) billingInfoChanged,
  }) {
    return billingInfoChanged(billing);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Entry entry)? selectedEntryChanged,
    TResult? Function()? clear,
    TResult? Function()? btnPressed,
    TResult? Function(Billing? billing)? billingInfoChanged,
  }) {
    return billingInfoChanged?.call(billing);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Entry entry)? selectedEntryChanged,
    TResult Function()? clear,
    TResult Function()? btnPressed,
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
    required TResult Function(SelectedEntryChanged value) selectedEntryChanged,
    required TResult Function(Clear value) clear,
    required TResult Function(BtnPressed value) btnPressed,
    required TResult Function(BillingInfoChanged value) billingInfoChanged,
  }) {
    return billingInfoChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectedEntryChanged value)? selectedEntryChanged,
    TResult? Function(Clear value)? clear,
    TResult? Function(BtnPressed value)? btnPressed,
    TResult? Function(BillingInfoChanged value)? billingInfoChanged,
  }) {
    return billingInfoChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectedEntryChanged value)? selectedEntryChanged,
    TResult Function(Clear value)? clear,
    TResult Function(BtnPressed value)? btnPressed,
    TResult Function(BillingInfoChanged value)? billingInfoChanged,
    required TResult orElse(),
  }) {
    if (billingInfoChanged != null) {
      return billingInfoChanged(this);
    }
    return orElse();
  }
}

abstract class BillingInfoChanged implements EntryCheckoutEvent {
  const factory BillingInfoChanged(final Billing? billing) =
      _$BillingInfoChanged;

  Billing? get billing;
  @JsonKey(ignore: true)
  _$$BillingInfoChangedCopyWith<_$BillingInfoChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EntryCheckoutState {
  Entry? get selectedEntry => throw _privateConstructorUsedError;
  Billing? get billingInfo => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<OrderFailure, Unit>> get orderFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EntryCheckoutStateCopyWith<EntryCheckoutState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntryCheckoutStateCopyWith<$Res> {
  factory $EntryCheckoutStateCopyWith(
          EntryCheckoutState value, $Res Function(EntryCheckoutState) then) =
      _$EntryCheckoutStateCopyWithImpl<$Res, EntryCheckoutState>;
  @useResult
  $Res call(
      {Entry? selectedEntry,
      Billing? billingInfo,
      bool isSubmitting,
      Option<Either<OrderFailure, Unit>> orderFailureOrSuccessOption});
}

/// @nodoc
class _$EntryCheckoutStateCopyWithImpl<$Res, $Val extends EntryCheckoutState>
    implements $EntryCheckoutStateCopyWith<$Res> {
  _$EntryCheckoutStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedEntry = freezed,
    Object? billingInfo = freezed,
    Object? isSubmitting = null,
    Object? orderFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      selectedEntry: freezed == selectedEntry
          ? _value.selectedEntry
          : selectedEntry // ignore: cast_nullable_to_non_nullable
              as Entry?,
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
abstract class _$$_EntryCheckoutStateCopyWith<$Res>
    implements $EntryCheckoutStateCopyWith<$Res> {
  factory _$$_EntryCheckoutStateCopyWith(_$_EntryCheckoutState value,
          $Res Function(_$_EntryCheckoutState) then) =
      __$$_EntryCheckoutStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Entry? selectedEntry,
      Billing? billingInfo,
      bool isSubmitting,
      Option<Either<OrderFailure, Unit>> orderFailureOrSuccessOption});
}

/// @nodoc
class __$$_EntryCheckoutStateCopyWithImpl<$Res>
    extends _$EntryCheckoutStateCopyWithImpl<$Res, _$_EntryCheckoutState>
    implements _$$_EntryCheckoutStateCopyWith<$Res> {
  __$$_EntryCheckoutStateCopyWithImpl(
      _$_EntryCheckoutState _value, $Res Function(_$_EntryCheckoutState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedEntry = freezed,
    Object? billingInfo = freezed,
    Object? isSubmitting = null,
    Object? orderFailureOrSuccessOption = null,
  }) {
    return _then(_$_EntryCheckoutState(
      selectedEntry: freezed == selectedEntry
          ? _value.selectedEntry
          : selectedEntry // ignore: cast_nullable_to_non_nullable
              as Entry?,
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

class _$_EntryCheckoutState implements _EntryCheckoutState {
  const _$_EntryCheckoutState(
      {required this.selectedEntry,
      required this.billingInfo,
      required this.isSubmitting,
      required this.orderFailureOrSuccessOption});

  @override
  final Entry? selectedEntry;
  @override
  final Billing? billingInfo;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<OrderFailure, Unit>> orderFailureOrSuccessOption;

  @override
  String toString() {
    return 'EntryCheckoutState(selectedEntry: $selectedEntry, billingInfo: $billingInfo, isSubmitting: $isSubmitting, orderFailureOrSuccessOption: $orderFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EntryCheckoutState &&
            (identical(other.selectedEntry, selectedEntry) ||
                other.selectedEntry == selectedEntry) &&
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
  int get hashCode => Object.hash(runtimeType, selectedEntry, billingInfo,
      isSubmitting, orderFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EntryCheckoutStateCopyWith<_$_EntryCheckoutState> get copyWith =>
      __$$_EntryCheckoutStateCopyWithImpl<_$_EntryCheckoutState>(
          this, _$identity);
}

abstract class _EntryCheckoutState implements EntryCheckoutState {
  const factory _EntryCheckoutState(
      {required final Entry? selectedEntry,
      required final Billing? billingInfo,
      required final bool isSubmitting,
      required final Option<Either<OrderFailure, Unit>>
          orderFailureOrSuccessOption}) = _$_EntryCheckoutState;

  @override
  Entry? get selectedEntry;
  @override
  Billing? get billingInfo;
  @override
  bool get isSubmitting;
  @override
  Option<Either<OrderFailure, Unit>> get orderFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_EntryCheckoutStateCopyWith<_$_EntryCheckoutState> get copyWith =>
      throw _privateConstructorUsedError;
}
