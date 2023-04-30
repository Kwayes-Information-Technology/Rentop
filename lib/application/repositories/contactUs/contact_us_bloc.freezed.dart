// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_us_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ContactUsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String email) emailAddressChanged,
    required TResult Function(String phone) phoneNumberChanged,
    required TResult Function(String message) messageChanged,
    required TResult Function() btnPressed,
    required TResult Function() clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String email)? emailAddressChanged,
    TResult? Function(String phone)? phoneNumberChanged,
    TResult? Function(String message)? messageChanged,
    TResult? Function()? btnPressed,
    TResult? Function()? clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String email)? emailAddressChanged,
    TResult Function(String phone)? phoneNumberChanged,
    TResult Function(String message)? messageChanged,
    TResult Function()? btnPressed,
    TResult Function()? clear,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FirstNameChanged value) firstNameChanged,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(EmailAddressChanged value) emailAddressChanged,
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(MessageChanged value) messageChanged,
    required TResult Function(BtnPressed value) btnPressed,
    required TResult Function(Clear value) clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FirstNameChanged value)? firstNameChanged,
    TResult? Function(LastNameChanged value)? lastNameChanged,
    TResult? Function(EmailAddressChanged value)? emailAddressChanged,
    TResult? Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(MessageChanged value)? messageChanged,
    TResult? Function(BtnPressed value)? btnPressed,
    TResult? Function(Clear value)? clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FirstNameChanged value)? firstNameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(EmailAddressChanged value)? emailAddressChanged,
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(MessageChanged value)? messageChanged,
    TResult Function(BtnPressed value)? btnPressed,
    TResult Function(Clear value)? clear,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactUsEventCopyWith<$Res> {
  factory $ContactUsEventCopyWith(
          ContactUsEvent value, $Res Function(ContactUsEvent) then) =
      _$ContactUsEventCopyWithImpl<$Res, ContactUsEvent>;
}

/// @nodoc
class _$ContactUsEventCopyWithImpl<$Res, $Val extends ContactUsEvent>
    implements $ContactUsEventCopyWith<$Res> {
  _$ContactUsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
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
    extends _$ContactUsEventCopyWithImpl<$Res, _$FirstNameChanged>
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
    return 'ContactUsEvent.firstNameChanged(firstName: $firstName)';
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
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String email) emailAddressChanged,
    required TResult Function(String phone) phoneNumberChanged,
    required TResult Function(String message) messageChanged,
    required TResult Function() btnPressed,
    required TResult Function() clear,
  }) {
    return firstNameChanged(firstName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String email)? emailAddressChanged,
    TResult? Function(String phone)? phoneNumberChanged,
    TResult? Function(String message)? messageChanged,
    TResult? Function()? btnPressed,
    TResult? Function()? clear,
  }) {
    return firstNameChanged?.call(firstName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String email)? emailAddressChanged,
    TResult Function(String phone)? phoneNumberChanged,
    TResult Function(String message)? messageChanged,
    TResult Function()? btnPressed,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (firstNameChanged != null) {
      return firstNameChanged(firstName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FirstNameChanged value) firstNameChanged,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(EmailAddressChanged value) emailAddressChanged,
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(MessageChanged value) messageChanged,
    required TResult Function(BtnPressed value) btnPressed,
    required TResult Function(Clear value) clear,
  }) {
    return firstNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FirstNameChanged value)? firstNameChanged,
    TResult? Function(LastNameChanged value)? lastNameChanged,
    TResult? Function(EmailAddressChanged value)? emailAddressChanged,
    TResult? Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(MessageChanged value)? messageChanged,
    TResult? Function(BtnPressed value)? btnPressed,
    TResult? Function(Clear value)? clear,
  }) {
    return firstNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FirstNameChanged value)? firstNameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(EmailAddressChanged value)? emailAddressChanged,
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(MessageChanged value)? messageChanged,
    TResult Function(BtnPressed value)? btnPressed,
    TResult Function(Clear value)? clear,
    required TResult orElse(),
  }) {
    if (firstNameChanged != null) {
      return firstNameChanged(this);
    }
    return orElse();
  }
}

abstract class FirstNameChanged implements ContactUsEvent {
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
    extends _$ContactUsEventCopyWithImpl<$Res, _$LastNameChanged>
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
    return 'ContactUsEvent.lastNameChanged(lastName: $lastName)';
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
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String email) emailAddressChanged,
    required TResult Function(String phone) phoneNumberChanged,
    required TResult Function(String message) messageChanged,
    required TResult Function() btnPressed,
    required TResult Function() clear,
  }) {
    return lastNameChanged(lastName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String email)? emailAddressChanged,
    TResult? Function(String phone)? phoneNumberChanged,
    TResult? Function(String message)? messageChanged,
    TResult? Function()? btnPressed,
    TResult? Function()? clear,
  }) {
    return lastNameChanged?.call(lastName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String email)? emailAddressChanged,
    TResult Function(String phone)? phoneNumberChanged,
    TResult Function(String message)? messageChanged,
    TResult Function()? btnPressed,
    TResult Function()? clear,
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
    required TResult Function(FirstNameChanged value) firstNameChanged,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(EmailAddressChanged value) emailAddressChanged,
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(MessageChanged value) messageChanged,
    required TResult Function(BtnPressed value) btnPressed,
    required TResult Function(Clear value) clear,
  }) {
    return lastNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FirstNameChanged value)? firstNameChanged,
    TResult? Function(LastNameChanged value)? lastNameChanged,
    TResult? Function(EmailAddressChanged value)? emailAddressChanged,
    TResult? Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(MessageChanged value)? messageChanged,
    TResult? Function(BtnPressed value)? btnPressed,
    TResult? Function(Clear value)? clear,
  }) {
    return lastNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FirstNameChanged value)? firstNameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(EmailAddressChanged value)? emailAddressChanged,
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(MessageChanged value)? messageChanged,
    TResult Function(BtnPressed value)? btnPressed,
    TResult Function(Clear value)? clear,
    required TResult orElse(),
  }) {
    if (lastNameChanged != null) {
      return lastNameChanged(this);
    }
    return orElse();
  }
}

abstract class LastNameChanged implements ContactUsEvent {
  const factory LastNameChanged(final String lastName) = _$LastNameChanged;

  String get lastName;
  @JsonKey(ignore: true)
  _$$LastNameChangedCopyWith<_$LastNameChanged> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$ContactUsEventCopyWithImpl<$Res, _$EmailAddressChanged>
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
    return 'ContactUsEvent.emailAddressChanged(email: $email)';
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
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String email) emailAddressChanged,
    required TResult Function(String phone) phoneNumberChanged,
    required TResult Function(String message) messageChanged,
    required TResult Function() btnPressed,
    required TResult Function() clear,
  }) {
    return emailAddressChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String email)? emailAddressChanged,
    TResult? Function(String phone)? phoneNumberChanged,
    TResult? Function(String message)? messageChanged,
    TResult? Function()? btnPressed,
    TResult? Function()? clear,
  }) {
    return emailAddressChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String email)? emailAddressChanged,
    TResult Function(String phone)? phoneNumberChanged,
    TResult Function(String message)? messageChanged,
    TResult Function()? btnPressed,
    TResult Function()? clear,
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
    required TResult Function(FirstNameChanged value) firstNameChanged,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(EmailAddressChanged value) emailAddressChanged,
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(MessageChanged value) messageChanged,
    required TResult Function(BtnPressed value) btnPressed,
    required TResult Function(Clear value) clear,
  }) {
    return emailAddressChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FirstNameChanged value)? firstNameChanged,
    TResult? Function(LastNameChanged value)? lastNameChanged,
    TResult? Function(EmailAddressChanged value)? emailAddressChanged,
    TResult? Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(MessageChanged value)? messageChanged,
    TResult? Function(BtnPressed value)? btnPressed,
    TResult? Function(Clear value)? clear,
  }) {
    return emailAddressChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FirstNameChanged value)? firstNameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(EmailAddressChanged value)? emailAddressChanged,
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(MessageChanged value)? messageChanged,
    TResult Function(BtnPressed value)? btnPressed,
    TResult Function(Clear value)? clear,
    required TResult orElse(),
  }) {
    if (emailAddressChanged != null) {
      return emailAddressChanged(this);
    }
    return orElse();
  }
}

abstract class EmailAddressChanged implements ContactUsEvent {
  const factory EmailAddressChanged(final String email) = _$EmailAddressChanged;

  String get email;
  @JsonKey(ignore: true)
  _$$EmailAddressChangedCopyWith<_$EmailAddressChanged> get copyWith =>
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
    extends _$ContactUsEventCopyWithImpl<$Res, _$PhoneNumberChanged>
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
    return 'ContactUsEvent.phoneNumberChanged(phone: $phone)';
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
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String email) emailAddressChanged,
    required TResult Function(String phone) phoneNumberChanged,
    required TResult Function(String message) messageChanged,
    required TResult Function() btnPressed,
    required TResult Function() clear,
  }) {
    return phoneNumberChanged(phone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String email)? emailAddressChanged,
    TResult? Function(String phone)? phoneNumberChanged,
    TResult? Function(String message)? messageChanged,
    TResult? Function()? btnPressed,
    TResult? Function()? clear,
  }) {
    return phoneNumberChanged?.call(phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String email)? emailAddressChanged,
    TResult Function(String phone)? phoneNumberChanged,
    TResult Function(String message)? messageChanged,
    TResult Function()? btnPressed,
    TResult Function()? clear,
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
    required TResult Function(FirstNameChanged value) firstNameChanged,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(EmailAddressChanged value) emailAddressChanged,
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(MessageChanged value) messageChanged,
    required TResult Function(BtnPressed value) btnPressed,
    required TResult Function(Clear value) clear,
  }) {
    return phoneNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FirstNameChanged value)? firstNameChanged,
    TResult? Function(LastNameChanged value)? lastNameChanged,
    TResult? Function(EmailAddressChanged value)? emailAddressChanged,
    TResult? Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(MessageChanged value)? messageChanged,
    TResult? Function(BtnPressed value)? btnPressed,
    TResult? Function(Clear value)? clear,
  }) {
    return phoneNumberChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FirstNameChanged value)? firstNameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(EmailAddressChanged value)? emailAddressChanged,
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(MessageChanged value)? messageChanged,
    TResult Function(BtnPressed value)? btnPressed,
    TResult Function(Clear value)? clear,
    required TResult orElse(),
  }) {
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(this);
    }
    return orElse();
  }
}

abstract class PhoneNumberChanged implements ContactUsEvent {
  const factory PhoneNumberChanged(final String phone) = _$PhoneNumberChanged;

  String get phone;
  @JsonKey(ignore: true)
  _$$PhoneNumberChangedCopyWith<_$PhoneNumberChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MessageChangedCopyWith<$Res> {
  factory _$$MessageChangedCopyWith(
          _$MessageChanged value, $Res Function(_$MessageChanged) then) =
      __$$MessageChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$MessageChangedCopyWithImpl<$Res>
    extends _$ContactUsEventCopyWithImpl<$Res, _$MessageChanged>
    implements _$$MessageChangedCopyWith<$Res> {
  __$$MessageChangedCopyWithImpl(
      _$MessageChanged _value, $Res Function(_$MessageChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$MessageChanged(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MessageChanged implements MessageChanged {
  const _$MessageChanged(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ContactUsEvent.messageChanged(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageChanged &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageChangedCopyWith<_$MessageChanged> get copyWith =>
      __$$MessageChangedCopyWithImpl<_$MessageChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String email) emailAddressChanged,
    required TResult Function(String phone) phoneNumberChanged,
    required TResult Function(String message) messageChanged,
    required TResult Function() btnPressed,
    required TResult Function() clear,
  }) {
    return messageChanged(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String email)? emailAddressChanged,
    TResult? Function(String phone)? phoneNumberChanged,
    TResult? Function(String message)? messageChanged,
    TResult? Function()? btnPressed,
    TResult? Function()? clear,
  }) {
    return messageChanged?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String email)? emailAddressChanged,
    TResult Function(String phone)? phoneNumberChanged,
    TResult Function(String message)? messageChanged,
    TResult Function()? btnPressed,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (messageChanged != null) {
      return messageChanged(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FirstNameChanged value) firstNameChanged,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(EmailAddressChanged value) emailAddressChanged,
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(MessageChanged value) messageChanged,
    required TResult Function(BtnPressed value) btnPressed,
    required TResult Function(Clear value) clear,
  }) {
    return messageChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FirstNameChanged value)? firstNameChanged,
    TResult? Function(LastNameChanged value)? lastNameChanged,
    TResult? Function(EmailAddressChanged value)? emailAddressChanged,
    TResult? Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(MessageChanged value)? messageChanged,
    TResult? Function(BtnPressed value)? btnPressed,
    TResult? Function(Clear value)? clear,
  }) {
    return messageChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FirstNameChanged value)? firstNameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(EmailAddressChanged value)? emailAddressChanged,
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(MessageChanged value)? messageChanged,
    TResult Function(BtnPressed value)? btnPressed,
    TResult Function(Clear value)? clear,
    required TResult orElse(),
  }) {
    if (messageChanged != null) {
      return messageChanged(this);
    }
    return orElse();
  }
}

abstract class MessageChanged implements ContactUsEvent {
  const factory MessageChanged(final String message) = _$MessageChanged;

  String get message;
  @JsonKey(ignore: true)
  _$$MessageChangedCopyWith<_$MessageChanged> get copyWith =>
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
    extends _$ContactUsEventCopyWithImpl<$Res, _$BtnPressed>
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
    return 'ContactUsEvent.btnPressed()';
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
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String email) emailAddressChanged,
    required TResult Function(String phone) phoneNumberChanged,
    required TResult Function(String message) messageChanged,
    required TResult Function() btnPressed,
    required TResult Function() clear,
  }) {
    return btnPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String email)? emailAddressChanged,
    TResult? Function(String phone)? phoneNumberChanged,
    TResult? Function(String message)? messageChanged,
    TResult? Function()? btnPressed,
    TResult? Function()? clear,
  }) {
    return btnPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String email)? emailAddressChanged,
    TResult Function(String phone)? phoneNumberChanged,
    TResult Function(String message)? messageChanged,
    TResult Function()? btnPressed,
    TResult Function()? clear,
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
    required TResult Function(FirstNameChanged value) firstNameChanged,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(EmailAddressChanged value) emailAddressChanged,
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(MessageChanged value) messageChanged,
    required TResult Function(BtnPressed value) btnPressed,
    required TResult Function(Clear value) clear,
  }) {
    return btnPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FirstNameChanged value)? firstNameChanged,
    TResult? Function(LastNameChanged value)? lastNameChanged,
    TResult? Function(EmailAddressChanged value)? emailAddressChanged,
    TResult? Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(MessageChanged value)? messageChanged,
    TResult? Function(BtnPressed value)? btnPressed,
    TResult? Function(Clear value)? clear,
  }) {
    return btnPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FirstNameChanged value)? firstNameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(EmailAddressChanged value)? emailAddressChanged,
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(MessageChanged value)? messageChanged,
    TResult Function(BtnPressed value)? btnPressed,
    TResult Function(Clear value)? clear,
    required TResult orElse(),
  }) {
    if (btnPressed != null) {
      return btnPressed(this);
    }
    return orElse();
  }
}

abstract class BtnPressed implements ContactUsEvent {
  const factory BtnPressed() = _$BtnPressed;
}

/// @nodoc
abstract class _$$ClearCopyWith<$Res> {
  factory _$$ClearCopyWith(_$Clear value, $Res Function(_$Clear) then) =
      __$$ClearCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearCopyWithImpl<$Res>
    extends _$ContactUsEventCopyWithImpl<$Res, _$Clear>
    implements _$$ClearCopyWith<$Res> {
  __$$ClearCopyWithImpl(_$Clear _value, $Res Function(_$Clear) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Clear implements Clear {
  const _$Clear();

  @override
  String toString() {
    return 'ContactUsEvent.clear()';
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
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String email) emailAddressChanged,
    required TResult Function(String phone) phoneNumberChanged,
    required TResult Function(String message) messageChanged,
    required TResult Function() btnPressed,
    required TResult Function() clear,
  }) {
    return clear();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String email)? emailAddressChanged,
    TResult? Function(String phone)? phoneNumberChanged,
    TResult? Function(String message)? messageChanged,
    TResult? Function()? btnPressed,
    TResult? Function()? clear,
  }) {
    return clear?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String email)? emailAddressChanged,
    TResult Function(String phone)? phoneNumberChanged,
    TResult Function(String message)? messageChanged,
    TResult Function()? btnPressed,
    TResult Function()? clear,
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
    required TResult Function(FirstNameChanged value) firstNameChanged,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(EmailAddressChanged value) emailAddressChanged,
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(MessageChanged value) messageChanged,
    required TResult Function(BtnPressed value) btnPressed,
    required TResult Function(Clear value) clear,
  }) {
    return clear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FirstNameChanged value)? firstNameChanged,
    TResult? Function(LastNameChanged value)? lastNameChanged,
    TResult? Function(EmailAddressChanged value)? emailAddressChanged,
    TResult? Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(MessageChanged value)? messageChanged,
    TResult? Function(BtnPressed value)? btnPressed,
    TResult? Function(Clear value)? clear,
  }) {
    return clear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FirstNameChanged value)? firstNameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(EmailAddressChanged value)? emailAddressChanged,
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(MessageChanged value)? messageChanged,
    TResult Function(BtnPressed value)? btnPressed,
    TResult Function(Clear value)? clear,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear(this);
    }
    return orElse();
  }
}

abstract class Clear implements ContactUsEvent {
  const factory Clear() = _$Clear;
}

/// @nodoc
mixin _$ContactUsState {
  FirstName get firstName => throw _privateConstructorUsedError;
  LastName get lastName => throw _privateConstructorUsedError;
  EmailAddress get email => throw _privateConstructorUsedError;
  PhoneNumber get phone => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<ApiFailure, Unit>> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContactUsStateCopyWith<ContactUsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactUsStateCopyWith<$Res> {
  factory $ContactUsStateCopyWith(
          ContactUsState value, $Res Function(ContactUsState) then) =
      _$ContactUsStateCopyWithImpl<$Res, ContactUsState>;
  @useResult
  $Res call(
      {FirstName firstName,
      LastName lastName,
      EmailAddress email,
      PhoneNumber phone,
      String message,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<ApiFailure, Unit>> failureOrSuccessOption});
}

/// @nodoc
class _$ContactUsStateCopyWithImpl<$Res, $Val extends ContactUsState>
    implements $ContactUsStateCopyWith<$Res> {
  _$ContactUsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? phone = null,
    Object? message = null,
    Object? showErrorMessages = null,
    Object? isSubmitting = null,
    Object? failureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as FirstName,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as LastName,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as PhoneNumber,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class _$$_ContactUsStateCopyWith<$Res>
    implements $ContactUsStateCopyWith<$Res> {
  factory _$$_ContactUsStateCopyWith(
          _$_ContactUsState value, $Res Function(_$_ContactUsState) then) =
      __$$_ContactUsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FirstName firstName,
      LastName lastName,
      EmailAddress email,
      PhoneNumber phone,
      String message,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<ApiFailure, Unit>> failureOrSuccessOption});
}

/// @nodoc
class __$$_ContactUsStateCopyWithImpl<$Res>
    extends _$ContactUsStateCopyWithImpl<$Res, _$_ContactUsState>
    implements _$$_ContactUsStateCopyWith<$Res> {
  __$$_ContactUsStateCopyWithImpl(
      _$_ContactUsState _value, $Res Function(_$_ContactUsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? phone = null,
    Object? message = null,
    Object? showErrorMessages = null,
    Object? isSubmitting = null,
    Object? failureOrSuccessOption = null,
  }) {
    return _then(_$_ContactUsState(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as FirstName,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as LastName,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as PhoneNumber,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
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

class _$_ContactUsState implements _ContactUsState {
  const _$_ContactUsState(
      {required this.firstName,
      required this.lastName,
      required this.email,
      required this.phone,
      required this.message,
      required this.showErrorMessages,
      required this.isSubmitting,
      required this.failureOrSuccessOption});

  @override
  final FirstName firstName;
  @override
  final LastName lastName;
  @override
  final EmailAddress email;
  @override
  final PhoneNumber phone;
  @override
  final String message;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<ApiFailure, Unit>> failureOrSuccessOption;

  @override
  String toString() {
    return 'ContactUsState(firstName: $firstName, lastName: $lastName, email: $email, phone: $phone, message: $message, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContactUsState &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
                other.failureOrSuccessOption == failureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firstName, lastName, email,
      phone, message, showErrorMessages, isSubmitting, failureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContactUsStateCopyWith<_$_ContactUsState> get copyWith =>
      __$$_ContactUsStateCopyWithImpl<_$_ContactUsState>(this, _$identity);
}

abstract class _ContactUsState implements ContactUsState {
  const factory _ContactUsState(
      {required final FirstName firstName,
      required final LastName lastName,
      required final EmailAddress email,
      required final PhoneNumber phone,
      required final String message,
      required final bool showErrorMessages,
      required final bool isSubmitting,
      required final Option<Either<ApiFailure, Unit>>
          failureOrSuccessOption}) = _$_ContactUsState;

  @override
  FirstName get firstName;
  @override
  LastName get lastName;
  @override
  EmailAddress get email;
  @override
  PhoneNumber get phone;
  @override
  String get message;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<ApiFailure, Unit>> get failureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_ContactUsStateCopyWith<_$_ContactUsState> get copyWith =>
      throw _privateConstructorUsedError;
}
