// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reset_password_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ResetPasswordEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailAddressChanged,
    required TResult Function() sendResetCode,
    required TResult Function(String password) passwordChanged,
    required TResult Function() resetPassword,
    required TResult Function(String code) resetCodeChanged,
    required TResult Function() validateResetCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailAddressChanged,
    TResult? Function()? sendResetCode,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? resetPassword,
    TResult? Function(String code)? resetCodeChanged,
    TResult? Function()? validateResetCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailAddressChanged,
    TResult Function()? sendResetCode,
    TResult Function(String password)? passwordChanged,
    TResult Function()? resetPassword,
    TResult Function(String code)? resetCodeChanged,
    TResult Function()? validateResetCode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailAddressChanged value) emailAddressChanged,
    required TResult Function(SendResetCode value) sendResetCode,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ResetPassword value) resetPassword,
    required TResult Function(ResetCodeChanged value) resetCodeChanged,
    required TResult Function(ValidateResetCode value) validateResetCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailAddressChanged value)? emailAddressChanged,
    TResult? Function(SendResetCode value)? sendResetCode,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(ResetPassword value)? resetPassword,
    TResult? Function(ResetCodeChanged value)? resetCodeChanged,
    TResult? Function(ValidateResetCode value)? validateResetCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailAddressChanged value)? emailAddressChanged,
    TResult Function(SendResetCode value)? sendResetCode,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ResetPassword value)? resetPassword,
    TResult Function(ResetCodeChanged value)? resetCodeChanged,
    TResult Function(ValidateResetCode value)? validateResetCode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetPasswordEventCopyWith<$Res> {
  factory $ResetPasswordEventCopyWith(
          ResetPasswordEvent value, $Res Function(ResetPasswordEvent) then) =
      _$ResetPasswordEventCopyWithImpl<$Res, ResetPasswordEvent>;
}

/// @nodoc
class _$ResetPasswordEventCopyWithImpl<$Res, $Val extends ResetPasswordEvent>
    implements $ResetPasswordEventCopyWith<$Res> {
  _$ResetPasswordEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EmailAddressChangedCopyWith<$Res> {
  factory _$$EmailAddressChangedCopyWith(_$EmailAddressChanged value,
          $Res Function(_$EmailAddressChanged) then) =
      __$$EmailAddressChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$EmailAddressChangedCopyWithImpl<$Res>
    extends _$ResetPasswordEventCopyWithImpl<$Res, _$EmailAddressChanged>
    implements _$$EmailAddressChangedCopyWith<$Res> {
  __$$EmailAddressChangedCopyWithImpl(
      _$EmailAddressChanged _value, $Res Function(_$EmailAddressChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$EmailAddressChanged(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailAddressChanged implements EmailAddressChanged {
  const _$EmailAddressChanged(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'ResetPasswordEvent.emailAddressChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailAddressChanged &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailAddressChangedCopyWith<_$EmailAddressChanged> get copyWith =>
      __$$EmailAddressChangedCopyWithImpl<_$EmailAddressChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailAddressChanged,
    required TResult Function() sendResetCode,
    required TResult Function(String password) passwordChanged,
    required TResult Function() resetPassword,
    required TResult Function(String code) resetCodeChanged,
    required TResult Function() validateResetCode,
  }) {
    return emailAddressChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailAddressChanged,
    TResult? Function()? sendResetCode,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? resetPassword,
    TResult? Function(String code)? resetCodeChanged,
    TResult? Function()? validateResetCode,
  }) {
    return emailAddressChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailAddressChanged,
    TResult Function()? sendResetCode,
    TResult Function(String password)? passwordChanged,
    TResult Function()? resetPassword,
    TResult Function(String code)? resetCodeChanged,
    TResult Function()? validateResetCode,
    required TResult orElse(),
  }) {
    if (emailAddressChanged != null) {
      return emailAddressChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailAddressChanged value) emailAddressChanged,
    required TResult Function(SendResetCode value) sendResetCode,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ResetPassword value) resetPassword,
    required TResult Function(ResetCodeChanged value) resetCodeChanged,
    required TResult Function(ValidateResetCode value) validateResetCode,
  }) {
    return emailAddressChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailAddressChanged value)? emailAddressChanged,
    TResult? Function(SendResetCode value)? sendResetCode,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(ResetPassword value)? resetPassword,
    TResult? Function(ResetCodeChanged value)? resetCodeChanged,
    TResult? Function(ValidateResetCode value)? validateResetCode,
  }) {
    return emailAddressChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailAddressChanged value)? emailAddressChanged,
    TResult Function(SendResetCode value)? sendResetCode,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ResetPassword value)? resetPassword,
    TResult Function(ResetCodeChanged value)? resetCodeChanged,
    TResult Function(ValidateResetCode value)? validateResetCode,
    required TResult orElse(),
  }) {
    if (emailAddressChanged != null) {
      return emailAddressChanged(this);
    }
    return orElse();
  }
}

abstract class EmailAddressChanged implements ResetPasswordEvent {
  const factory EmailAddressChanged(final String email) = _$EmailAddressChanged;

  String get email;
  @JsonKey(ignore: true)
  _$$EmailAddressChangedCopyWith<_$EmailAddressChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendResetCodeCopyWith<$Res> {
  factory _$$SendResetCodeCopyWith(
          _$SendResetCode value, $Res Function(_$SendResetCode) then) =
      __$$SendResetCodeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SendResetCodeCopyWithImpl<$Res>
    extends _$ResetPasswordEventCopyWithImpl<$Res, _$SendResetCode>
    implements _$$SendResetCodeCopyWith<$Res> {
  __$$SendResetCodeCopyWithImpl(
      _$SendResetCode _value, $Res Function(_$SendResetCode) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SendResetCode implements SendResetCode {
  const _$SendResetCode();

  @override
  String toString() {
    return 'ResetPasswordEvent.sendResetCode()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SendResetCode);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailAddressChanged,
    required TResult Function() sendResetCode,
    required TResult Function(String password) passwordChanged,
    required TResult Function() resetPassword,
    required TResult Function(String code) resetCodeChanged,
    required TResult Function() validateResetCode,
  }) {
    return sendResetCode();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailAddressChanged,
    TResult? Function()? sendResetCode,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? resetPassword,
    TResult? Function(String code)? resetCodeChanged,
    TResult? Function()? validateResetCode,
  }) {
    return sendResetCode?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailAddressChanged,
    TResult Function()? sendResetCode,
    TResult Function(String password)? passwordChanged,
    TResult Function()? resetPassword,
    TResult Function(String code)? resetCodeChanged,
    TResult Function()? validateResetCode,
    required TResult orElse(),
  }) {
    if (sendResetCode != null) {
      return sendResetCode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailAddressChanged value) emailAddressChanged,
    required TResult Function(SendResetCode value) sendResetCode,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ResetPassword value) resetPassword,
    required TResult Function(ResetCodeChanged value) resetCodeChanged,
    required TResult Function(ValidateResetCode value) validateResetCode,
  }) {
    return sendResetCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailAddressChanged value)? emailAddressChanged,
    TResult? Function(SendResetCode value)? sendResetCode,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(ResetPassword value)? resetPassword,
    TResult? Function(ResetCodeChanged value)? resetCodeChanged,
    TResult? Function(ValidateResetCode value)? validateResetCode,
  }) {
    return sendResetCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailAddressChanged value)? emailAddressChanged,
    TResult Function(SendResetCode value)? sendResetCode,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ResetPassword value)? resetPassword,
    TResult Function(ResetCodeChanged value)? resetCodeChanged,
    TResult Function(ValidateResetCode value)? validateResetCode,
    required TResult orElse(),
  }) {
    if (sendResetCode != null) {
      return sendResetCode(this);
    }
    return orElse();
  }
}

abstract class SendResetCode implements ResetPasswordEvent {
  const factory SendResetCode() = _$SendResetCode;
}

/// @nodoc
abstract class _$$PasswordChangedCopyWith<$Res> {
  factory _$$PasswordChangedCopyWith(
          _$PasswordChanged value, $Res Function(_$PasswordChanged) then) =
      __$$PasswordChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$PasswordChangedCopyWithImpl<$Res>
    extends _$ResetPasswordEventCopyWithImpl<$Res, _$PasswordChanged>
    implements _$$PasswordChangedCopyWith<$Res> {
  __$$PasswordChangedCopyWithImpl(
      _$PasswordChanged _value, $Res Function(_$PasswordChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$PasswordChanged(
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordChanged implements PasswordChanged {
  const _$PasswordChanged(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'ResetPasswordEvent.passwordChanged(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordChanged &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordChangedCopyWith<_$PasswordChanged> get copyWith =>
      __$$PasswordChangedCopyWithImpl<_$PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailAddressChanged,
    required TResult Function() sendResetCode,
    required TResult Function(String password) passwordChanged,
    required TResult Function() resetPassword,
    required TResult Function(String code) resetCodeChanged,
    required TResult Function() validateResetCode,
  }) {
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailAddressChanged,
    TResult? Function()? sendResetCode,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? resetPassword,
    TResult? Function(String code)? resetCodeChanged,
    TResult? Function()? validateResetCode,
  }) {
    return passwordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailAddressChanged,
    TResult Function()? sendResetCode,
    TResult Function(String password)? passwordChanged,
    TResult Function()? resetPassword,
    TResult Function(String code)? resetCodeChanged,
    TResult Function()? validateResetCode,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailAddressChanged value) emailAddressChanged,
    required TResult Function(SendResetCode value) sendResetCode,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ResetPassword value) resetPassword,
    required TResult Function(ResetCodeChanged value) resetCodeChanged,
    required TResult Function(ValidateResetCode value) validateResetCode,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailAddressChanged value)? emailAddressChanged,
    TResult? Function(SendResetCode value)? sendResetCode,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(ResetPassword value)? resetPassword,
    TResult? Function(ResetCodeChanged value)? resetCodeChanged,
    TResult? Function(ValidateResetCode value)? validateResetCode,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailAddressChanged value)? emailAddressChanged,
    TResult Function(SendResetCode value)? sendResetCode,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ResetPassword value)? resetPassword,
    TResult Function(ResetCodeChanged value)? resetCodeChanged,
    TResult Function(ValidateResetCode value)? validateResetCode,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements ResetPasswordEvent {
  const factory PasswordChanged(final String password) = _$PasswordChanged;

  String get password;
  @JsonKey(ignore: true)
  _$$PasswordChangedCopyWith<_$PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetPasswordCopyWith<$Res> {
  factory _$$ResetPasswordCopyWith(
          _$ResetPassword value, $Res Function(_$ResetPassword) then) =
      __$$ResetPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetPasswordCopyWithImpl<$Res>
    extends _$ResetPasswordEventCopyWithImpl<$Res, _$ResetPassword>
    implements _$$ResetPasswordCopyWith<$Res> {
  __$$ResetPasswordCopyWithImpl(
      _$ResetPassword _value, $Res Function(_$ResetPassword) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResetPassword implements ResetPassword {
  const _$ResetPassword();

  @override
  String toString() {
    return 'ResetPasswordEvent.resetPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailAddressChanged,
    required TResult Function() sendResetCode,
    required TResult Function(String password) passwordChanged,
    required TResult Function() resetPassword,
    required TResult Function(String code) resetCodeChanged,
    required TResult Function() validateResetCode,
  }) {
    return resetPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailAddressChanged,
    TResult? Function()? sendResetCode,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? resetPassword,
    TResult? Function(String code)? resetCodeChanged,
    TResult? Function()? validateResetCode,
  }) {
    return resetPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailAddressChanged,
    TResult Function()? sendResetCode,
    TResult Function(String password)? passwordChanged,
    TResult Function()? resetPassword,
    TResult Function(String code)? resetCodeChanged,
    TResult Function()? validateResetCode,
    required TResult orElse(),
  }) {
    if (resetPassword != null) {
      return resetPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailAddressChanged value) emailAddressChanged,
    required TResult Function(SendResetCode value) sendResetCode,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ResetPassword value) resetPassword,
    required TResult Function(ResetCodeChanged value) resetCodeChanged,
    required TResult Function(ValidateResetCode value) validateResetCode,
  }) {
    return resetPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailAddressChanged value)? emailAddressChanged,
    TResult? Function(SendResetCode value)? sendResetCode,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(ResetPassword value)? resetPassword,
    TResult? Function(ResetCodeChanged value)? resetCodeChanged,
    TResult? Function(ValidateResetCode value)? validateResetCode,
  }) {
    return resetPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailAddressChanged value)? emailAddressChanged,
    TResult Function(SendResetCode value)? sendResetCode,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ResetPassword value)? resetPassword,
    TResult Function(ResetCodeChanged value)? resetCodeChanged,
    TResult Function(ValidateResetCode value)? validateResetCode,
    required TResult orElse(),
  }) {
    if (resetPassword != null) {
      return resetPassword(this);
    }
    return orElse();
  }
}

abstract class ResetPassword implements ResetPasswordEvent {
  const factory ResetPassword() = _$ResetPassword;
}

/// @nodoc
abstract class _$$ResetCodeChangedCopyWith<$Res> {
  factory _$$ResetCodeChangedCopyWith(
          _$ResetCodeChanged value, $Res Function(_$ResetCodeChanged) then) =
      __$$ResetCodeChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String code});
}

/// @nodoc
class __$$ResetCodeChangedCopyWithImpl<$Res>
    extends _$ResetPasswordEventCopyWithImpl<$Res, _$ResetCodeChanged>
    implements _$$ResetCodeChangedCopyWith<$Res> {
  __$$ResetCodeChangedCopyWithImpl(
      _$ResetCodeChanged _value, $Res Function(_$ResetCodeChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_$ResetCodeChanged(
      null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ResetCodeChanged implements ResetCodeChanged {
  const _$ResetCodeChanged(this.code);

  @override
  final String code;

  @override
  String toString() {
    return 'ResetPasswordEvent.resetCodeChanged(code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetCodeChanged &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResetCodeChangedCopyWith<_$ResetCodeChanged> get copyWith =>
      __$$ResetCodeChangedCopyWithImpl<_$ResetCodeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailAddressChanged,
    required TResult Function() sendResetCode,
    required TResult Function(String password) passwordChanged,
    required TResult Function() resetPassword,
    required TResult Function(String code) resetCodeChanged,
    required TResult Function() validateResetCode,
  }) {
    return resetCodeChanged(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailAddressChanged,
    TResult? Function()? sendResetCode,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? resetPassword,
    TResult? Function(String code)? resetCodeChanged,
    TResult? Function()? validateResetCode,
  }) {
    return resetCodeChanged?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailAddressChanged,
    TResult Function()? sendResetCode,
    TResult Function(String password)? passwordChanged,
    TResult Function()? resetPassword,
    TResult Function(String code)? resetCodeChanged,
    TResult Function()? validateResetCode,
    required TResult orElse(),
  }) {
    if (resetCodeChanged != null) {
      return resetCodeChanged(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailAddressChanged value) emailAddressChanged,
    required TResult Function(SendResetCode value) sendResetCode,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ResetPassword value) resetPassword,
    required TResult Function(ResetCodeChanged value) resetCodeChanged,
    required TResult Function(ValidateResetCode value) validateResetCode,
  }) {
    return resetCodeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailAddressChanged value)? emailAddressChanged,
    TResult? Function(SendResetCode value)? sendResetCode,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(ResetPassword value)? resetPassword,
    TResult? Function(ResetCodeChanged value)? resetCodeChanged,
    TResult? Function(ValidateResetCode value)? validateResetCode,
  }) {
    return resetCodeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailAddressChanged value)? emailAddressChanged,
    TResult Function(SendResetCode value)? sendResetCode,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ResetPassword value)? resetPassword,
    TResult Function(ResetCodeChanged value)? resetCodeChanged,
    TResult Function(ValidateResetCode value)? validateResetCode,
    required TResult orElse(),
  }) {
    if (resetCodeChanged != null) {
      return resetCodeChanged(this);
    }
    return orElse();
  }
}

abstract class ResetCodeChanged implements ResetPasswordEvent {
  const factory ResetCodeChanged(final String code) = _$ResetCodeChanged;

  String get code;
  @JsonKey(ignore: true)
  _$$ResetCodeChangedCopyWith<_$ResetCodeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ValidateResetCodeCopyWith<$Res> {
  factory _$$ValidateResetCodeCopyWith(
          _$ValidateResetCode value, $Res Function(_$ValidateResetCode) then) =
      __$$ValidateResetCodeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ValidateResetCodeCopyWithImpl<$Res>
    extends _$ResetPasswordEventCopyWithImpl<$Res, _$ValidateResetCode>
    implements _$$ValidateResetCodeCopyWith<$Res> {
  __$$ValidateResetCodeCopyWithImpl(
      _$ValidateResetCode _value, $Res Function(_$ValidateResetCode) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ValidateResetCode implements ValidateResetCode {
  const _$ValidateResetCode();

  @override
  String toString() {
    return 'ResetPasswordEvent.validateResetCode()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ValidateResetCode);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailAddressChanged,
    required TResult Function() sendResetCode,
    required TResult Function(String password) passwordChanged,
    required TResult Function() resetPassword,
    required TResult Function(String code) resetCodeChanged,
    required TResult Function() validateResetCode,
  }) {
    return validateResetCode();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailAddressChanged,
    TResult? Function()? sendResetCode,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? resetPassword,
    TResult? Function(String code)? resetCodeChanged,
    TResult? Function()? validateResetCode,
  }) {
    return validateResetCode?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailAddressChanged,
    TResult Function()? sendResetCode,
    TResult Function(String password)? passwordChanged,
    TResult Function()? resetPassword,
    TResult Function(String code)? resetCodeChanged,
    TResult Function()? validateResetCode,
    required TResult orElse(),
  }) {
    if (validateResetCode != null) {
      return validateResetCode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailAddressChanged value) emailAddressChanged,
    required TResult Function(SendResetCode value) sendResetCode,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ResetPassword value) resetPassword,
    required TResult Function(ResetCodeChanged value) resetCodeChanged,
    required TResult Function(ValidateResetCode value) validateResetCode,
  }) {
    return validateResetCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailAddressChanged value)? emailAddressChanged,
    TResult? Function(SendResetCode value)? sendResetCode,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(ResetPassword value)? resetPassword,
    TResult? Function(ResetCodeChanged value)? resetCodeChanged,
    TResult? Function(ValidateResetCode value)? validateResetCode,
  }) {
    return validateResetCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailAddressChanged value)? emailAddressChanged,
    TResult Function(SendResetCode value)? sendResetCode,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ResetPassword value)? resetPassword,
    TResult Function(ResetCodeChanged value)? resetCodeChanged,
    TResult Function(ValidateResetCode value)? validateResetCode,
    required TResult orElse(),
  }) {
    if (validateResetCode != null) {
      return validateResetCode(this);
    }
    return orElse();
  }
}

abstract class ValidateResetCode implements ResetPasswordEvent {
  const factory ValidateResetCode() = _$ValidateResetCode;
}

/// @nodoc
mixin _$ResetPasswordState {
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  ResetCode get code => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  Option<Either<ResetPasswordApiFailure, Unit>>
      get codeSentFailureOrSuccessOption => throw _privateConstructorUsedError;
  Option<Either<ResetPasswordApiFailure, Unit>>
      get validateCodeFailureOrSuccessOption =>
          throw _privateConstructorUsedError;
  Option<Either<ResetPasswordApiFailure, Unit>>
      get passwordResetFailureOrSuccessOption =>
          throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResetPasswordStateCopyWith<ResetPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetPasswordStateCopyWith<$Res> {
  factory $ResetPasswordStateCopyWith(
          ResetPasswordState value, $Res Function(ResetPasswordState) then) =
      _$ResetPasswordStateCopyWithImpl<$Res, ResetPasswordState>;
  @useResult
  $Res call(
      {EmailAddress emailAddress,
      ResetCode code,
      Password password,
      bool isSubmitting,
      bool showErrorMessages,
      Option<Either<ResetPasswordApiFailure, Unit>>
          codeSentFailureOrSuccessOption,
      Option<Either<ResetPasswordApiFailure, Unit>>
          validateCodeFailureOrSuccessOption,
      Option<Either<ResetPasswordApiFailure, Unit>>
          passwordResetFailureOrSuccessOption});
}

/// @nodoc
class _$ResetPasswordStateCopyWithImpl<$Res, $Val extends ResetPasswordState>
    implements $ResetPasswordStateCopyWith<$Res> {
  _$ResetPasswordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddress = null,
    Object? code = null,
    Object? password = null,
    Object? isSubmitting = null,
    Object? showErrorMessages = null,
    Object? codeSentFailureOrSuccessOption = null,
    Object? validateCodeFailureOrSuccessOption = null,
    Object? passwordResetFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as ResetCode,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      codeSentFailureOrSuccessOption: null == codeSentFailureOrSuccessOption
          ? _value.codeSentFailureOrSuccessOption
          : codeSentFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ResetPasswordApiFailure, Unit>>,
      validateCodeFailureOrSuccessOption: null ==
              validateCodeFailureOrSuccessOption
          ? _value.validateCodeFailureOrSuccessOption
          : validateCodeFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ResetPasswordApiFailure, Unit>>,
      passwordResetFailureOrSuccessOption: null ==
              passwordResetFailureOrSuccessOption
          ? _value.passwordResetFailureOrSuccessOption
          : passwordResetFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ResetPasswordApiFailure, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResetPasswordStateCopyWith<$Res>
    implements $ResetPasswordStateCopyWith<$Res> {
  factory _$$_ResetPasswordStateCopyWith(_$_ResetPasswordState value,
          $Res Function(_$_ResetPasswordState) then) =
      __$$_ResetPasswordStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EmailAddress emailAddress,
      ResetCode code,
      Password password,
      bool isSubmitting,
      bool showErrorMessages,
      Option<Either<ResetPasswordApiFailure, Unit>>
          codeSentFailureOrSuccessOption,
      Option<Either<ResetPasswordApiFailure, Unit>>
          validateCodeFailureOrSuccessOption,
      Option<Either<ResetPasswordApiFailure, Unit>>
          passwordResetFailureOrSuccessOption});
}

/// @nodoc
class __$$_ResetPasswordStateCopyWithImpl<$Res>
    extends _$ResetPasswordStateCopyWithImpl<$Res, _$_ResetPasswordState>
    implements _$$_ResetPasswordStateCopyWith<$Res> {
  __$$_ResetPasswordStateCopyWithImpl(
      _$_ResetPasswordState _value, $Res Function(_$_ResetPasswordState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddress = null,
    Object? code = null,
    Object? password = null,
    Object? isSubmitting = null,
    Object? showErrorMessages = null,
    Object? codeSentFailureOrSuccessOption = null,
    Object? validateCodeFailureOrSuccessOption = null,
    Object? passwordResetFailureOrSuccessOption = null,
  }) {
    return _then(_$_ResetPasswordState(
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as ResetCode,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      codeSentFailureOrSuccessOption: null == codeSentFailureOrSuccessOption
          ? _value.codeSentFailureOrSuccessOption
          : codeSentFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ResetPasswordApiFailure, Unit>>,
      validateCodeFailureOrSuccessOption: null ==
              validateCodeFailureOrSuccessOption
          ? _value.validateCodeFailureOrSuccessOption
          : validateCodeFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ResetPasswordApiFailure, Unit>>,
      passwordResetFailureOrSuccessOption: null ==
              passwordResetFailureOrSuccessOption
          ? _value.passwordResetFailureOrSuccessOption
          : passwordResetFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ResetPasswordApiFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_ResetPasswordState implements _ResetPasswordState {
  const _$_ResetPasswordState(
      {required this.emailAddress,
      required this.code,
      required this.password,
      required this.isSubmitting,
      required this.showErrorMessages,
      required this.codeSentFailureOrSuccessOption,
      required this.validateCodeFailureOrSuccessOption,
      required this.passwordResetFailureOrSuccessOption});

  @override
  final EmailAddress emailAddress;
  @override
  final ResetCode code;
  @override
  final Password password;
  @override
  final bool isSubmitting;
  @override
  final bool showErrorMessages;
  @override
  final Option<Either<ResetPasswordApiFailure, Unit>>
      codeSentFailureOrSuccessOption;
  @override
  final Option<Either<ResetPasswordApiFailure, Unit>>
      validateCodeFailureOrSuccessOption;
  @override
  final Option<Either<ResetPasswordApiFailure, Unit>>
      passwordResetFailureOrSuccessOption;

  @override
  String toString() {
    return 'ResetPasswordState(emailAddress: $emailAddress, code: $code, password: $password, isSubmitting: $isSubmitting, showErrorMessages: $showErrorMessages, codeSentFailureOrSuccessOption: $codeSentFailureOrSuccessOption, validateCodeFailureOrSuccessOption: $validateCodeFailureOrSuccessOption, passwordResetFailureOrSuccessOption: $passwordResetFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResetPasswordState &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.codeSentFailureOrSuccessOption,
                    codeSentFailureOrSuccessOption) ||
                other.codeSentFailureOrSuccessOption ==
                    codeSentFailureOrSuccessOption) &&
            (identical(other.validateCodeFailureOrSuccessOption,
                    validateCodeFailureOrSuccessOption) ||
                other.validateCodeFailureOrSuccessOption ==
                    validateCodeFailureOrSuccessOption) &&
            (identical(other.passwordResetFailureOrSuccessOption,
                    passwordResetFailureOrSuccessOption) ||
                other.passwordResetFailureOrSuccessOption ==
                    passwordResetFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      emailAddress,
      code,
      password,
      isSubmitting,
      showErrorMessages,
      codeSentFailureOrSuccessOption,
      validateCodeFailureOrSuccessOption,
      passwordResetFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResetPasswordStateCopyWith<_$_ResetPasswordState> get copyWith =>
      __$$_ResetPasswordStateCopyWithImpl<_$_ResetPasswordState>(
          this, _$identity);
}

abstract class _ResetPasswordState implements ResetPasswordState {
  const factory _ResetPasswordState(
      {required final EmailAddress emailAddress,
      required final ResetCode code,
      required final Password password,
      required final bool isSubmitting,
      required final bool showErrorMessages,
      required final Option<Either<ResetPasswordApiFailure, Unit>>
          codeSentFailureOrSuccessOption,
      required final Option<Either<ResetPasswordApiFailure, Unit>>
          validateCodeFailureOrSuccessOption,
      required final Option<Either<ResetPasswordApiFailure, Unit>>
          passwordResetFailureOrSuccessOption}) = _$_ResetPasswordState;

  @override
  EmailAddress get emailAddress;
  @override
  ResetCode get code;
  @override
  Password get password;
  @override
  bool get isSubmitting;
  @override
  bool get showErrorMessages;
  @override
  Option<Either<ResetPasswordApiFailure, Unit>>
      get codeSentFailureOrSuccessOption;
  @override
  Option<Either<ResetPasswordApiFailure, Unit>>
      get validateCodeFailureOrSuccessOption;
  @override
  Option<Either<ResetPasswordApiFailure, Unit>>
      get passwordResetFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_ResetPasswordStateCopyWith<_$_ResetPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}
