// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignUpEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailAddressChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String phone) phoneNumberChanged,
    required TResult Function(String firstName) firstNameChagned,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String username) usernameChanged,
    required TResult Function() btnPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailAddressChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String phone)? phoneNumberChanged,
    TResult? Function(String firstName)? firstNameChagned,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String username)? usernameChanged,
    TResult? Function()? btnPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailAddressChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String phone)? phoneNumberChanged,
    TResult Function(String firstName)? firstNameChagned,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function()? btnPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailAddressChanged value) emailAddressChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(FirstNameChanged value) firstNameChagned,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(BtnPressed value) btnPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailAddressChanged value)? emailAddressChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(FirstNameChanged value)? firstNameChagned,
    TResult? Function(LastNameChanged value)? lastNameChanged,
    TResult? Function(UsernameChanged value)? usernameChanged,
    TResult? Function(BtnPressed value)? btnPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailAddressChanged value)? emailAddressChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(FirstNameChanged value)? firstNameChagned,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(BtnPressed value)? btnPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpEventCopyWith<$Res> {
  factory $SignUpEventCopyWith(
          SignUpEvent value, $Res Function(SignUpEvent) then) =
      _$SignUpEventCopyWithImpl<$Res, SignUpEvent>;
}

/// @nodoc
class _$SignUpEventCopyWithImpl<$Res, $Val extends SignUpEvent>
    implements $SignUpEventCopyWith<$Res> {
  _$SignUpEventCopyWithImpl(this._value, this._then);

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
    extends _$SignUpEventCopyWithImpl<$Res, _$EmailAddressChanged>
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
    return 'SignUpEvent.emailAddressChanged(email: $email)';
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
    required TResult Function(String password) passwordChanged,
    required TResult Function(String phone) phoneNumberChanged,
    required TResult Function(String firstName) firstNameChagned,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String username) usernameChanged,
    required TResult Function() btnPressed,
  }) {
    return emailAddressChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailAddressChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String phone)? phoneNumberChanged,
    TResult? Function(String firstName)? firstNameChagned,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String username)? usernameChanged,
    TResult? Function()? btnPressed,
  }) {
    return emailAddressChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailAddressChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String phone)? phoneNumberChanged,
    TResult Function(String firstName)? firstNameChagned,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function()? btnPressed,
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
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(FirstNameChanged value) firstNameChagned,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(BtnPressed value) btnPressed,
  }) {
    return emailAddressChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailAddressChanged value)? emailAddressChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(FirstNameChanged value)? firstNameChagned,
    TResult? Function(LastNameChanged value)? lastNameChanged,
    TResult? Function(UsernameChanged value)? usernameChanged,
    TResult? Function(BtnPressed value)? btnPressed,
  }) {
    return emailAddressChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailAddressChanged value)? emailAddressChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(FirstNameChanged value)? firstNameChagned,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(BtnPressed value)? btnPressed,
    required TResult orElse(),
  }) {
    if (emailAddressChanged != null) {
      return emailAddressChanged(this);
    }
    return orElse();
  }
}

abstract class EmailAddressChanged implements SignUpEvent {
  const factory EmailAddressChanged(final String email) = _$EmailAddressChanged;

  String get email;
  @JsonKey(ignore: true)
  _$$EmailAddressChangedCopyWith<_$EmailAddressChanged> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$SignUpEventCopyWithImpl<$Res, _$PasswordChanged>
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
    return 'SignUpEvent.passwordChanged(password: $password)';
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
    required TResult Function(String password) passwordChanged,
    required TResult Function(String phone) phoneNumberChanged,
    required TResult Function(String firstName) firstNameChagned,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String username) usernameChanged,
    required TResult Function() btnPressed,
  }) {
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailAddressChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String phone)? phoneNumberChanged,
    TResult? Function(String firstName)? firstNameChagned,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String username)? usernameChanged,
    TResult? Function()? btnPressed,
  }) {
    return passwordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailAddressChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String phone)? phoneNumberChanged,
    TResult Function(String firstName)? firstNameChagned,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function()? btnPressed,
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
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(FirstNameChanged value) firstNameChagned,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(BtnPressed value) btnPressed,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailAddressChanged value)? emailAddressChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(FirstNameChanged value)? firstNameChagned,
    TResult? Function(LastNameChanged value)? lastNameChanged,
    TResult? Function(UsernameChanged value)? usernameChanged,
    TResult? Function(BtnPressed value)? btnPressed,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailAddressChanged value)? emailAddressChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(FirstNameChanged value)? firstNameChagned,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(BtnPressed value)? btnPressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements SignUpEvent {
  const factory PasswordChanged(final String password) = _$PasswordChanged;

  String get password;
  @JsonKey(ignore: true)
  _$$PasswordChangedCopyWith<_$PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PhoneNumberChangedCopyWith<$Res> {
  factory _$$PhoneNumberChangedCopyWith(_$PhoneNumberChanged value,
          $Res Function(_$PhoneNumberChanged) then) =
      __$$PhoneNumberChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String phone});
}

/// @nodoc
class __$$PhoneNumberChangedCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$PhoneNumberChanged>
    implements _$$PhoneNumberChangedCopyWith<$Res> {
  __$$PhoneNumberChangedCopyWithImpl(
      _$PhoneNumberChanged _value, $Res Function(_$PhoneNumberChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
  }) {
    return _then(_$PhoneNumberChanged(
      null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PhoneNumberChanged implements PhoneNumberChanged {
  const _$PhoneNumberChanged(this.phone);

  @override
  final String phone;

  @override
  String toString() {
    return 'SignUpEvent.phoneNumberChanged(phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhoneNumberChanged &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhoneNumberChangedCopyWith<_$PhoneNumberChanged> get copyWith =>
      __$$PhoneNumberChangedCopyWithImpl<_$PhoneNumberChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailAddressChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String phone) phoneNumberChanged,
    required TResult Function(String firstName) firstNameChagned,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String username) usernameChanged,
    required TResult Function() btnPressed,
  }) {
    return phoneNumberChanged(phone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailAddressChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String phone)? phoneNumberChanged,
    TResult? Function(String firstName)? firstNameChagned,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String username)? usernameChanged,
    TResult? Function()? btnPressed,
  }) {
    return phoneNumberChanged?.call(phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailAddressChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String phone)? phoneNumberChanged,
    TResult Function(String firstName)? firstNameChagned,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function()? btnPressed,
    required TResult orElse(),
  }) {
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailAddressChanged value) emailAddressChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(FirstNameChanged value) firstNameChagned,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(BtnPressed value) btnPressed,
  }) {
    return phoneNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailAddressChanged value)? emailAddressChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(FirstNameChanged value)? firstNameChagned,
    TResult? Function(LastNameChanged value)? lastNameChanged,
    TResult? Function(UsernameChanged value)? usernameChanged,
    TResult? Function(BtnPressed value)? btnPressed,
  }) {
    return phoneNumberChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailAddressChanged value)? emailAddressChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(FirstNameChanged value)? firstNameChagned,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(BtnPressed value)? btnPressed,
    required TResult orElse(),
  }) {
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(this);
    }
    return orElse();
  }
}

abstract class PhoneNumberChanged implements SignUpEvent {
  const factory PhoneNumberChanged(final String phone) = _$PhoneNumberChanged;

  String get phone;
  @JsonKey(ignore: true)
  _$$PhoneNumberChangedCopyWith<_$PhoneNumberChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FirstNameChangedCopyWith<$Res> {
  factory _$$FirstNameChangedCopyWith(
          _$FirstNameChanged value, $Res Function(_$FirstNameChanged) then) =
      __$$FirstNameChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String firstName});
}

/// @nodoc
class __$$FirstNameChangedCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$FirstNameChanged>
    implements _$$FirstNameChangedCopyWith<$Res> {
  __$$FirstNameChangedCopyWithImpl(
      _$FirstNameChanged _value, $Res Function(_$FirstNameChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
  }) {
    return _then(_$FirstNameChanged(
      null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FirstNameChanged implements FirstNameChanged {
  const _$FirstNameChanged(this.firstName);

  @override
  final String firstName;

  @override
  String toString() {
    return 'SignUpEvent.firstNameChagned(firstName: $firstName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirstNameChanged &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firstName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FirstNameChangedCopyWith<_$FirstNameChanged> get copyWith =>
      __$$FirstNameChangedCopyWithImpl<_$FirstNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailAddressChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String phone) phoneNumberChanged,
    required TResult Function(String firstName) firstNameChagned,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String username) usernameChanged,
    required TResult Function() btnPressed,
  }) {
    return firstNameChagned(firstName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailAddressChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String phone)? phoneNumberChanged,
    TResult? Function(String firstName)? firstNameChagned,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String username)? usernameChanged,
    TResult? Function()? btnPressed,
  }) {
    return firstNameChagned?.call(firstName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailAddressChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String phone)? phoneNumberChanged,
    TResult Function(String firstName)? firstNameChagned,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function()? btnPressed,
    required TResult orElse(),
  }) {
    if (firstNameChagned != null) {
      return firstNameChagned(firstName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailAddressChanged value) emailAddressChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(FirstNameChanged value) firstNameChagned,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(BtnPressed value) btnPressed,
  }) {
    return firstNameChagned(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailAddressChanged value)? emailAddressChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(FirstNameChanged value)? firstNameChagned,
    TResult? Function(LastNameChanged value)? lastNameChanged,
    TResult? Function(UsernameChanged value)? usernameChanged,
    TResult? Function(BtnPressed value)? btnPressed,
  }) {
    return firstNameChagned?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailAddressChanged value)? emailAddressChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(FirstNameChanged value)? firstNameChagned,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(BtnPressed value)? btnPressed,
    required TResult orElse(),
  }) {
    if (firstNameChagned != null) {
      return firstNameChagned(this);
    }
    return orElse();
  }
}

abstract class FirstNameChanged implements SignUpEvent {
  const factory FirstNameChanged(final String firstName) = _$FirstNameChanged;

  String get firstName;
  @JsonKey(ignore: true)
  _$$FirstNameChangedCopyWith<_$FirstNameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LastNameChangedCopyWith<$Res> {
  factory _$$LastNameChangedCopyWith(
          _$LastNameChanged value, $Res Function(_$LastNameChanged) then) =
      __$$LastNameChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String lastName});
}

/// @nodoc
class __$$LastNameChangedCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$LastNameChanged>
    implements _$$LastNameChangedCopyWith<$Res> {
  __$$LastNameChangedCopyWithImpl(
      _$LastNameChanged _value, $Res Function(_$LastNameChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastName = null,
  }) {
    return _then(_$LastNameChanged(
      null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LastNameChanged implements LastNameChanged {
  const _$LastNameChanged(this.lastName);

  @override
  final String lastName;

  @override
  String toString() {
    return 'SignUpEvent.lastNameChanged(lastName: $lastName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LastNameChanged &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lastName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LastNameChangedCopyWith<_$LastNameChanged> get copyWith =>
      __$$LastNameChangedCopyWithImpl<_$LastNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailAddressChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String phone) phoneNumberChanged,
    required TResult Function(String firstName) firstNameChagned,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String username) usernameChanged,
    required TResult Function() btnPressed,
  }) {
    return lastNameChanged(lastName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailAddressChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String phone)? phoneNumberChanged,
    TResult? Function(String firstName)? firstNameChagned,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String username)? usernameChanged,
    TResult? Function()? btnPressed,
  }) {
    return lastNameChanged?.call(lastName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailAddressChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String phone)? phoneNumberChanged,
    TResult Function(String firstName)? firstNameChagned,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function()? btnPressed,
    required TResult orElse(),
  }) {
    if (lastNameChanged != null) {
      return lastNameChanged(lastName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailAddressChanged value) emailAddressChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(FirstNameChanged value) firstNameChagned,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(BtnPressed value) btnPressed,
  }) {
    return lastNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailAddressChanged value)? emailAddressChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(FirstNameChanged value)? firstNameChagned,
    TResult? Function(LastNameChanged value)? lastNameChanged,
    TResult? Function(UsernameChanged value)? usernameChanged,
    TResult? Function(BtnPressed value)? btnPressed,
  }) {
    return lastNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailAddressChanged value)? emailAddressChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(FirstNameChanged value)? firstNameChagned,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(BtnPressed value)? btnPressed,
    required TResult orElse(),
  }) {
    if (lastNameChanged != null) {
      return lastNameChanged(this);
    }
    return orElse();
  }
}

abstract class LastNameChanged implements SignUpEvent {
  const factory LastNameChanged(final String lastName) = _$LastNameChanged;

  String get lastName;
  @JsonKey(ignore: true)
  _$$LastNameChangedCopyWith<_$LastNameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UsernameChangedCopyWith<$Res> {
  factory _$$UsernameChangedCopyWith(
          _$UsernameChanged value, $Res Function(_$UsernameChanged) then) =
      __$$UsernameChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String username});
}

/// @nodoc
class __$$UsernameChangedCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$UsernameChanged>
    implements _$$UsernameChangedCopyWith<$Res> {
  __$$UsernameChangedCopyWithImpl(
      _$UsernameChanged _value, $Res Function(_$UsernameChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
  }) {
    return _then(_$UsernameChanged(
      null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UsernameChanged implements UsernameChanged {
  const _$UsernameChanged(this.username);

  @override
  final String username;

  @override
  String toString() {
    return 'SignUpEvent.usernameChanged(username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsernameChanged &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UsernameChangedCopyWith<_$UsernameChanged> get copyWith =>
      __$$UsernameChangedCopyWithImpl<_$UsernameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailAddressChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String phone) phoneNumberChanged,
    required TResult Function(String firstName) firstNameChagned,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String username) usernameChanged,
    required TResult Function() btnPressed,
  }) {
    return usernameChanged(username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailAddressChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String phone)? phoneNumberChanged,
    TResult? Function(String firstName)? firstNameChagned,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String username)? usernameChanged,
    TResult? Function()? btnPressed,
  }) {
    return usernameChanged?.call(username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailAddressChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String phone)? phoneNumberChanged,
    TResult Function(String firstName)? firstNameChagned,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function()? btnPressed,
    required TResult orElse(),
  }) {
    if (usernameChanged != null) {
      return usernameChanged(username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailAddressChanged value) emailAddressChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(FirstNameChanged value) firstNameChagned,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(BtnPressed value) btnPressed,
  }) {
    return usernameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailAddressChanged value)? emailAddressChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(FirstNameChanged value)? firstNameChagned,
    TResult? Function(LastNameChanged value)? lastNameChanged,
    TResult? Function(UsernameChanged value)? usernameChanged,
    TResult? Function(BtnPressed value)? btnPressed,
  }) {
    return usernameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailAddressChanged value)? emailAddressChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(FirstNameChanged value)? firstNameChagned,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(BtnPressed value)? btnPressed,
    required TResult orElse(),
  }) {
    if (usernameChanged != null) {
      return usernameChanged(this);
    }
    return orElse();
  }
}

abstract class UsernameChanged implements SignUpEvent {
  const factory UsernameChanged(final String username) = _$UsernameChanged;

  String get username;
  @JsonKey(ignore: true)
  _$$UsernameChangedCopyWith<_$UsernameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BtnPressedCopyWith<$Res> {
  factory _$$BtnPressedCopyWith(
          _$BtnPressed value, $Res Function(_$BtnPressed) then) =
      __$$BtnPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BtnPressedCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$BtnPressed>
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
    return 'SignUpEvent.btnPressed()';
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
    required TResult Function(String email) emailAddressChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String phone) phoneNumberChanged,
    required TResult Function(String firstName) firstNameChagned,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String username) usernameChanged,
    required TResult Function() btnPressed,
  }) {
    return btnPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailAddressChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String phone)? phoneNumberChanged,
    TResult? Function(String firstName)? firstNameChagned,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String username)? usernameChanged,
    TResult? Function()? btnPressed,
  }) {
    return btnPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailAddressChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String phone)? phoneNumberChanged,
    TResult Function(String firstName)? firstNameChagned,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String username)? usernameChanged,
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
    required TResult Function(EmailAddressChanged value) emailAddressChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(FirstNameChanged value) firstNameChagned,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(BtnPressed value) btnPressed,
  }) {
    return btnPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailAddressChanged value)? emailAddressChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(FirstNameChanged value)? firstNameChagned,
    TResult? Function(LastNameChanged value)? lastNameChanged,
    TResult? Function(UsernameChanged value)? usernameChanged,
    TResult? Function(BtnPressed value)? btnPressed,
  }) {
    return btnPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailAddressChanged value)? emailAddressChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(FirstNameChanged value)? firstNameChagned,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(BtnPressed value)? btnPressed,
    required TResult orElse(),
  }) {
    if (btnPressed != null) {
      return btnPressed(this);
    }
    return orElse();
  }
}

abstract class BtnPressed implements SignUpEvent {
  const factory BtnPressed() = _$BtnPressed;
}

/// @nodoc
mixin _$SignUpState {
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  PhoneNumber get phoneNumber => throw _privateConstructorUsedError;
  FirstName get firstName => throw _privateConstructorUsedError;
  LastName get lastName => throw _privateConstructorUsedError;
  Username get username => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<ApiFailure, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpStateCopyWith<SignUpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res, SignUpState>;
  @useResult
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      PhoneNumber phoneNumber,
      FirstName firstName,
      LastName lastName,
      Username username,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<ApiFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res, $Val extends SignUpState>
    implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddress = null,
    Object? password = null,
    Object? phoneNumber = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? username = null,
    Object? showErrorMessages = null,
    Object? isSubmitting = null,
    Object? authFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as FirstName,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as LastName,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as Username,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: null == authFailureOrSuccessOption
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SignUpStateCopyWith<$Res>
    implements $SignUpStateCopyWith<$Res> {
  factory _$$_SignUpStateCopyWith(
          _$_SignUpState value, $Res Function(_$_SignUpState) then) =
      __$$_SignUpStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      PhoneNumber phoneNumber,
      FirstName firstName,
      LastName lastName,
      Username username,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<ApiFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class __$$_SignUpStateCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$_SignUpState>
    implements _$$_SignUpStateCopyWith<$Res> {
  __$$_SignUpStateCopyWithImpl(
      _$_SignUpState _value, $Res Function(_$_SignUpState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddress = null,
    Object? password = null,
    Object? phoneNumber = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? username = null,
    Object? showErrorMessages = null,
    Object? isSubmitting = null,
    Object? authFailureOrSuccessOption = null,
  }) {
    return _then(_$_SignUpState(
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as FirstName,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as LastName,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as Username,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: null == authFailureOrSuccessOption
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_SignUpState implements _SignUpState {
  const _$_SignUpState(
      {required this.emailAddress,
      required this.password,
      required this.phoneNumber,
      required this.firstName,
      required this.lastName,
      required this.username,
      required this.showErrorMessages,
      required this.isSubmitting,
      required this.authFailureOrSuccessOption});

  @override
  final EmailAddress emailAddress;
  @override
  final Password password;
  @override
  final PhoneNumber phoneNumber;
  @override
  final FirstName firstName;
  @override
  final LastName lastName;
  @override
  final Username username;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<ApiFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'SignUpState(emailAddress: $emailAddress, password: $password, phoneNumber: $phoneNumber, firstName: $firstName, lastName: $lastName, username: $username, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignUpState &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                other.authFailureOrSuccessOption ==
                    authFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      emailAddress,
      password,
      phoneNumber,
      firstName,
      lastName,
      username,
      showErrorMessages,
      isSubmitting,
      authFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignUpStateCopyWith<_$_SignUpState> get copyWith =>
      __$$_SignUpStateCopyWithImpl<_$_SignUpState>(this, _$identity);
}

abstract class _SignUpState implements SignUpState {
  const factory _SignUpState(
      {required final EmailAddress emailAddress,
      required final Password password,
      required final PhoneNumber phoneNumber,
      required final FirstName firstName,
      required final LastName lastName,
      required final Username username,
      required final bool showErrorMessages,
      required final bool isSubmitting,
      required final Option<Either<ApiFailure, Unit>>
          authFailureOrSuccessOption}) = _$_SignUpState;

  @override
  EmailAddress get emailAddress;
  @override
  Password get password;
  @override
  PhoneNumber get phoneNumber;
  @override
  FirstName get firstName;
  @override
  LastName get lastName;
  @override
  Username get username;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<ApiFailure, Unit>> get authFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_SignUpStateCopyWith<_$_SignUpState> get copyWith =>
      throw _privateConstructorUsedError;
}
