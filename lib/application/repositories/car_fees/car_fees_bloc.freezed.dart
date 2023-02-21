// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car_fees_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CarFeesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchCarFessData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchCarFessData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchCarFessData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchCarFeesData value) fetchCarFessData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchCarFeesData value)? fetchCarFessData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchCarFeesData value)? fetchCarFessData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarFeesEventCopyWith<$Res> {
  factory $CarFeesEventCopyWith(
          CarFeesEvent value, $Res Function(CarFeesEvent) then) =
      _$CarFeesEventCopyWithImpl<$Res, CarFeesEvent>;
}

/// @nodoc
class _$CarFeesEventCopyWithImpl<$Res, $Val extends CarFeesEvent>
    implements $CarFeesEventCopyWith<$Res> {
  _$CarFeesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchCarFeesDataCopyWith<$Res> {
  factory _$$FetchCarFeesDataCopyWith(
          _$FetchCarFeesData value, $Res Function(_$FetchCarFeesData) then) =
      __$$FetchCarFeesDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchCarFeesDataCopyWithImpl<$Res>
    extends _$CarFeesEventCopyWithImpl<$Res, _$FetchCarFeesData>
    implements _$$FetchCarFeesDataCopyWith<$Res> {
  __$$FetchCarFeesDataCopyWithImpl(
      _$FetchCarFeesData _value, $Res Function(_$FetchCarFeesData) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchCarFeesData implements FetchCarFeesData {
  const _$FetchCarFeesData();

  @override
  String toString() {
    return 'CarFeesEvent.fetchCarFessData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchCarFeesData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchCarFessData,
  }) {
    return fetchCarFessData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchCarFessData,
  }) {
    return fetchCarFessData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchCarFessData,
    required TResult orElse(),
  }) {
    if (fetchCarFessData != null) {
      return fetchCarFessData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchCarFeesData value) fetchCarFessData,
  }) {
    return fetchCarFessData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchCarFeesData value)? fetchCarFessData,
  }) {
    return fetchCarFessData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchCarFeesData value)? fetchCarFessData,
    required TResult orElse(),
  }) {
    if (fetchCarFessData != null) {
      return fetchCarFessData(this);
    }
    return orElse();
  }
}

abstract class FetchCarFeesData implements CarFeesEvent {
  const factory FetchCarFeesData() = _$FetchCarFeesData;
}

/// @nodoc
mixin _$CarFeesState {
  CarFees? get carFees => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CarFeesStateCopyWith<CarFeesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarFeesStateCopyWith<$Res> {
  factory $CarFeesStateCopyWith(
          CarFeesState value, $Res Function(CarFeesState) then) =
      _$CarFeesStateCopyWithImpl<$Res, CarFeesState>;
  @useResult
  $Res call({CarFees? carFees});
}

/// @nodoc
class _$CarFeesStateCopyWithImpl<$Res, $Val extends CarFeesState>
    implements $CarFeesStateCopyWith<$Res> {
  _$CarFeesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? carFees = freezed,
  }) {
    return _then(_value.copyWith(
      carFees: freezed == carFees
          ? _value.carFees
          : carFees // ignore: cast_nullable_to_non_nullable
              as CarFees?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CarFeesStateCopyWith<$Res>
    implements $CarFeesStateCopyWith<$Res> {
  factory _$$_CarFeesStateCopyWith(
          _$_CarFeesState value, $Res Function(_$_CarFeesState) then) =
      __$$_CarFeesStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CarFees? carFees});
}

/// @nodoc
class __$$_CarFeesStateCopyWithImpl<$Res>
    extends _$CarFeesStateCopyWithImpl<$Res, _$_CarFeesState>
    implements _$$_CarFeesStateCopyWith<$Res> {
  __$$_CarFeesStateCopyWithImpl(
      _$_CarFeesState _value, $Res Function(_$_CarFeesState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? carFees = freezed,
  }) {
    return _then(_$_CarFeesState(
      carFees: freezed == carFees
          ? _value.carFees
          : carFees // ignore: cast_nullable_to_non_nullable
              as CarFees?,
    ));
  }
}

/// @nodoc

class _$_CarFeesState implements _CarFeesState {
  const _$_CarFeesState({required this.carFees});

  @override
  final CarFees? carFees;

  @override
  String toString() {
    return 'CarFeesState(carFees: $carFees)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CarFeesState &&
            (identical(other.carFees, carFees) || other.carFees == carFees));
  }

  @override
  int get hashCode => Object.hash(runtimeType, carFees);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CarFeesStateCopyWith<_$_CarFeesState> get copyWith =>
      __$$_CarFeesStateCopyWithImpl<_$_CarFeesState>(this, _$identity);
}

abstract class _CarFeesState implements CarFeesState {
  const factory _CarFeesState({required final CarFees? carFees}) =
      _$_CarFeesState;

  @override
  CarFees? get carFees;
  @override
  @JsonKey(ignore: true)
  _$$_CarFeesStateCopyWith<_$_CarFeesState> get copyWith =>
      throw _privateConstructorUsedError;
}
