// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reset_password_api_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ResetPasswordApiFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() badEmail,
    required TResult Function() badRequest,
    required TResult Function() serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? badEmail,
    TResult? Function()? badRequest,
    TResult? Function()? serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? badEmail,
    TResult Function()? badRequest,
    TResult Function()? serverError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BadEmail value) badEmail,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(ServerError value) serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BadEmail value)? badEmail,
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(ServerError value)? serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BadEmail value)? badEmail,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(ServerError value)? serverError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetPasswordApiFailureCopyWith<$Res> {
  factory $ResetPasswordApiFailureCopyWith(ResetPasswordApiFailure value,
          $Res Function(ResetPasswordApiFailure) then) =
      _$ResetPasswordApiFailureCopyWithImpl<$Res, ResetPasswordApiFailure>;
}

/// @nodoc
class _$ResetPasswordApiFailureCopyWithImpl<$Res,
        $Val extends ResetPasswordApiFailure>
    implements $ResetPasswordApiFailureCopyWith<$Res> {
  _$ResetPasswordApiFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$BadEmailCopyWith<$Res> {
  factory _$$BadEmailCopyWith(
          _$BadEmail value, $Res Function(_$BadEmail) then) =
      __$$BadEmailCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BadEmailCopyWithImpl<$Res>
    extends _$ResetPasswordApiFailureCopyWithImpl<$Res, _$BadEmail>
    implements _$$BadEmailCopyWith<$Res> {
  __$$BadEmailCopyWithImpl(_$BadEmail _value, $Res Function(_$BadEmail) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BadEmail implements BadEmail {
  const _$BadEmail();

  @override
  String toString() {
    return 'ResetPasswordApiFailure.badEmail()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BadEmail);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() badEmail,
    required TResult Function() badRequest,
    required TResult Function() serverError,
  }) {
    return badEmail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? badEmail,
    TResult? Function()? badRequest,
    TResult? Function()? serverError,
  }) {
    return badEmail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? badEmail,
    TResult Function()? badRequest,
    TResult Function()? serverError,
    required TResult orElse(),
  }) {
    if (badEmail != null) {
      return badEmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BadEmail value) badEmail,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(ServerError value) serverError,
  }) {
    return badEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BadEmail value)? badEmail,
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(ServerError value)? serverError,
  }) {
    return badEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BadEmail value)? badEmail,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (badEmail != null) {
      return badEmail(this);
    }
    return orElse();
  }
}

abstract class BadEmail implements ResetPasswordApiFailure {
  const factory BadEmail() = _$BadEmail;
}

/// @nodoc
abstract class _$$BadRequestCopyWith<$Res> {
  factory _$$BadRequestCopyWith(
          _$BadRequest value, $Res Function(_$BadRequest) then) =
      __$$BadRequestCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BadRequestCopyWithImpl<$Res>
    extends _$ResetPasswordApiFailureCopyWithImpl<$Res, _$BadRequest>
    implements _$$BadRequestCopyWith<$Res> {
  __$$BadRequestCopyWithImpl(
      _$BadRequest _value, $Res Function(_$BadRequest) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BadRequest implements BadRequest {
  const _$BadRequest();

  @override
  String toString() {
    return 'ResetPasswordApiFailure.badRequest()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BadRequest);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() badEmail,
    required TResult Function() badRequest,
    required TResult Function() serverError,
  }) {
    return badRequest();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? badEmail,
    TResult? Function()? badRequest,
    TResult? Function()? serverError,
  }) {
    return badRequest?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? badEmail,
    TResult Function()? badRequest,
    TResult Function()? serverError,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BadEmail value) badEmail,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(ServerError value) serverError,
  }) {
    return badRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BadEmail value)? badEmail,
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(ServerError value)? serverError,
  }) {
    return badRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BadEmail value)? badEmail,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest(this);
    }
    return orElse();
  }
}

abstract class BadRequest implements ResetPasswordApiFailure {
  const factory BadRequest() = _$BadRequest;
}

/// @nodoc
abstract class _$$ServerErrorCopyWith<$Res> {
  factory _$$ServerErrorCopyWith(
          _$ServerError value, $Res Function(_$ServerError) then) =
      __$$ServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServerErrorCopyWithImpl<$Res>
    extends _$ResetPasswordApiFailureCopyWithImpl<$Res, _$ServerError>
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
    return 'ResetPasswordApiFailure.serverError()';
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
    required TResult Function() badEmail,
    required TResult Function() badRequest,
    required TResult Function() serverError,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? badEmail,
    TResult? Function()? badRequest,
    TResult? Function()? serverError,
  }) {
    return serverError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? badEmail,
    TResult Function()? badRequest,
    TResult Function()? serverError,
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
    required TResult Function(BadEmail value) badEmail,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(ServerError value) serverError,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BadEmail value)? badEmail,
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(ServerError value)? serverError,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BadEmail value)? badEmail,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements ResetPasswordApiFailure {
  const factory ServerError() = _$ServerError;
}
