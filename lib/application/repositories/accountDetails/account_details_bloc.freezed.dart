// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AccountDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Profile profile) initialAccountDetails,
    required TResult Function() clear,
    required TResult Function() btnPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Profile profile)? initialAccountDetails,
    TResult? Function()? clear,
    TResult? Function()? btnPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Profile profile)? initialAccountDetails,
    TResult Function()? clear,
    TResult Function()? btnPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialAccountDetails value)
        initialAccountDetails,
    required TResult Function(Clear value) clear,
    required TResult Function(BtnPressed value) btnPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialAccountDetails value)? initialAccountDetails,
    TResult? Function(Clear value)? clear,
    TResult? Function(BtnPressed value)? btnPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialAccountDetails value)? initialAccountDetails,
    TResult Function(Clear value)? clear,
    TResult Function(BtnPressed value)? btnPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountDetailsEventCopyWith<$Res> {
  factory $AccountDetailsEventCopyWith(
          AccountDetailsEvent value, $Res Function(AccountDetailsEvent) then) =
      _$AccountDetailsEventCopyWithImpl<$Res, AccountDetailsEvent>;
}

/// @nodoc
class _$AccountDetailsEventCopyWithImpl<$Res, $Val extends AccountDetailsEvent>
    implements $AccountDetailsEventCopyWith<$Res> {
  _$AccountDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialAccountDetailsCopyWith<$Res> {
  factory _$$InitialAccountDetailsCopyWith(_$InitialAccountDetails value,
          $Res Function(_$InitialAccountDetails) then) =
      __$$InitialAccountDetailsCopyWithImpl<$Res>;
  @useResult
  $Res call({Profile profile});
}

/// @nodoc
class __$$InitialAccountDetailsCopyWithImpl<$Res>
    extends _$AccountDetailsEventCopyWithImpl<$Res, _$InitialAccountDetails>
    implements _$$InitialAccountDetailsCopyWith<$Res> {
  __$$InitialAccountDetailsCopyWithImpl(_$InitialAccountDetails _value,
      $Res Function(_$InitialAccountDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profile = null,
  }) {
    return _then(_$InitialAccountDetails(
      null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as Profile,
    ));
  }
}

/// @nodoc

class _$InitialAccountDetails implements InitialAccountDetails {
  const _$InitialAccountDetails(this.profile);

  @override
  final Profile profile;

  @override
  String toString() {
    return 'AccountDetailsEvent.initialAccountDetails(profile: $profile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialAccountDetails &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialAccountDetailsCopyWith<_$InitialAccountDetails> get copyWith =>
      __$$InitialAccountDetailsCopyWithImpl<_$InitialAccountDetails>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Profile profile) initialAccountDetails,
    required TResult Function() clear,
    required TResult Function() btnPressed,
  }) {
    return initialAccountDetails(profile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Profile profile)? initialAccountDetails,
    TResult? Function()? clear,
    TResult? Function()? btnPressed,
  }) {
    return initialAccountDetails?.call(profile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Profile profile)? initialAccountDetails,
    TResult Function()? clear,
    TResult Function()? btnPressed,
    required TResult orElse(),
  }) {
    if (initialAccountDetails != null) {
      return initialAccountDetails(profile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialAccountDetails value)
        initialAccountDetails,
    required TResult Function(Clear value) clear,
    required TResult Function(BtnPressed value) btnPressed,
  }) {
    return initialAccountDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialAccountDetails value)? initialAccountDetails,
    TResult? Function(Clear value)? clear,
    TResult? Function(BtnPressed value)? btnPressed,
  }) {
    return initialAccountDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialAccountDetails value)? initialAccountDetails,
    TResult Function(Clear value)? clear,
    TResult Function(BtnPressed value)? btnPressed,
    required TResult orElse(),
  }) {
    if (initialAccountDetails != null) {
      return initialAccountDetails(this);
    }
    return orElse();
  }
}

abstract class InitialAccountDetails implements AccountDetailsEvent {
  const factory InitialAccountDetails(final Profile profile) =
      _$InitialAccountDetails;

  Profile get profile;
  @JsonKey(ignore: true)
  _$$InitialAccountDetailsCopyWith<_$InitialAccountDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearCopyWith<$Res> {
  factory _$$ClearCopyWith(_$Clear value, $Res Function(_$Clear) then) =
      __$$ClearCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearCopyWithImpl<$Res>
    extends _$AccountDetailsEventCopyWithImpl<$Res, _$Clear>
    implements _$$ClearCopyWith<$Res> {
  __$$ClearCopyWithImpl(_$Clear _value, $Res Function(_$Clear) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Clear implements Clear {
  const _$Clear();

  @override
  String toString() {
    return 'AccountDetailsEvent.clear()';
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
    required TResult Function(Profile profile) initialAccountDetails,
    required TResult Function() clear,
    required TResult Function() btnPressed,
  }) {
    return clear();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Profile profile)? initialAccountDetails,
    TResult? Function()? clear,
    TResult? Function()? btnPressed,
  }) {
    return clear?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Profile profile)? initialAccountDetails,
    TResult Function()? clear,
    TResult Function()? btnPressed,
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
    required TResult Function(InitialAccountDetails value)
        initialAccountDetails,
    required TResult Function(Clear value) clear,
    required TResult Function(BtnPressed value) btnPressed,
  }) {
    return clear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialAccountDetails value)? initialAccountDetails,
    TResult? Function(Clear value)? clear,
    TResult? Function(BtnPressed value)? btnPressed,
  }) {
    return clear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialAccountDetails value)? initialAccountDetails,
    TResult Function(Clear value)? clear,
    TResult Function(BtnPressed value)? btnPressed,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear(this);
    }
    return orElse();
  }
}

abstract class Clear implements AccountDetailsEvent {
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
    extends _$AccountDetailsEventCopyWithImpl<$Res, _$BtnPressed>
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
    return 'AccountDetailsEvent.btnPressed()';
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
    required TResult Function(Profile profile) initialAccountDetails,
    required TResult Function() clear,
    required TResult Function() btnPressed,
  }) {
    return btnPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Profile profile)? initialAccountDetails,
    TResult? Function()? clear,
    TResult? Function()? btnPressed,
  }) {
    return btnPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Profile profile)? initialAccountDetails,
    TResult Function()? clear,
    TResult Function()? btnPressed,
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
    required TResult Function(InitialAccountDetails value)
        initialAccountDetails,
    required TResult Function(Clear value) clear,
    required TResult Function(BtnPressed value) btnPressed,
  }) {
    return btnPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialAccountDetails value)? initialAccountDetails,
    TResult? Function(Clear value)? clear,
    TResult? Function(BtnPressed value)? btnPressed,
  }) {
    return btnPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialAccountDetails value)? initialAccountDetails,
    TResult Function(Clear value)? clear,
    TResult Function(BtnPressed value)? btnPressed,
    required TResult orElse(),
  }) {
    if (btnPressed != null) {
      return btnPressed(this);
    }
    return orElse();
  }
}

abstract class BtnPressed implements AccountDetailsEvent {
  const factory BtnPressed() = _$BtnPressed;
}

/// @nodoc
mixin _$AccountDetailsState {
  TextEditingController get firstName => throw _privateConstructorUsedError;
  TextEditingController get lastName => throw _privateConstructorUsedError;
  TextEditingController get displayName => throw _privateConstructorUsedError;
  TextEditingController get mobilePhone => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<ApiFailure, Unit>> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountDetailsStateCopyWith<AccountDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountDetailsStateCopyWith<$Res> {
  factory $AccountDetailsStateCopyWith(
          AccountDetailsState value, $Res Function(AccountDetailsState) then) =
      _$AccountDetailsStateCopyWithImpl<$Res, AccountDetailsState>;
  @useResult
  $Res call(
      {TextEditingController firstName,
      TextEditingController lastName,
      TextEditingController displayName,
      TextEditingController mobilePhone,
      bool isSubmitting,
      Option<Either<ApiFailure, Unit>> failureOrSuccessOption});
}

/// @nodoc
class _$AccountDetailsStateCopyWithImpl<$Res, $Val extends AccountDetailsState>
    implements $AccountDetailsStateCopyWith<$Res> {
  _$AccountDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? displayName = null,
    Object? mobilePhone = null,
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
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      mobilePhone: null == mobilePhone
          ? _value.mobilePhone
          : mobilePhone // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_AccountDetailsStateCopyWith<$Res>
    implements $AccountDetailsStateCopyWith<$Res> {
  factory _$$_AccountDetailsStateCopyWith(_$_AccountDetailsState value,
          $Res Function(_$_AccountDetailsState) then) =
      __$$_AccountDetailsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TextEditingController firstName,
      TextEditingController lastName,
      TextEditingController displayName,
      TextEditingController mobilePhone,
      bool isSubmitting,
      Option<Either<ApiFailure, Unit>> failureOrSuccessOption});
}

/// @nodoc
class __$$_AccountDetailsStateCopyWithImpl<$Res>
    extends _$AccountDetailsStateCopyWithImpl<$Res, _$_AccountDetailsState>
    implements _$$_AccountDetailsStateCopyWith<$Res> {
  __$$_AccountDetailsStateCopyWithImpl(_$_AccountDetailsState _value,
      $Res Function(_$_AccountDetailsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? displayName = null,
    Object? mobilePhone = null,
    Object? isSubmitting = null,
    Object? failureOrSuccessOption = null,
  }) {
    return _then(_$_AccountDetailsState(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      mobilePhone: null == mobilePhone
          ? _value.mobilePhone
          : mobilePhone // ignore: cast_nullable_to_non_nullable
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

class _$_AccountDetailsState implements _AccountDetailsState {
  const _$_AccountDetailsState(
      {required this.firstName,
      required this.lastName,
      required this.displayName,
      required this.mobilePhone,
      required this.isSubmitting,
      required this.failureOrSuccessOption});

  @override
  final TextEditingController firstName;
  @override
  final TextEditingController lastName;
  @override
  final TextEditingController displayName;
  @override
  final TextEditingController mobilePhone;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<ApiFailure, Unit>> failureOrSuccessOption;

  @override
  String toString() {
    return 'AccountDetailsState(firstName: $firstName, lastName: $lastName, displayName: $displayName, mobilePhone: $mobilePhone, isSubmitting: $isSubmitting, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountDetailsState &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.mobilePhone, mobilePhone) ||
                other.mobilePhone == mobilePhone) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
                other.failureOrSuccessOption == failureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firstName, lastName, displayName,
      mobilePhone, isSubmitting, failureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountDetailsStateCopyWith<_$_AccountDetailsState> get copyWith =>
      __$$_AccountDetailsStateCopyWithImpl<_$_AccountDetailsState>(
          this, _$identity);
}

abstract class _AccountDetailsState implements AccountDetailsState {
  const factory _AccountDetailsState(
      {required final TextEditingController firstName,
      required final TextEditingController lastName,
      required final TextEditingController displayName,
      required final TextEditingController mobilePhone,
      required final bool isSubmitting,
      required final Option<Either<ApiFailure, Unit>>
          failureOrSuccessOption}) = _$_AccountDetailsState;

  @override
  TextEditingController get firstName;
  @override
  TextEditingController get lastName;
  @override
  TextEditingController get displayName;
  @override
  TextEditingController get mobilePhone;
  @override
  bool get isSubmitting;
  @override
  Option<Either<ApiFailure, Unit>> get failureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_AccountDetailsStateCopyWith<_$_AccountDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}
