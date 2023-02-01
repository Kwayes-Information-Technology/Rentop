// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cars_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CarsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchCarsData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchCarsData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchCarsData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchCarsData value) watchCarsData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WatchCarsData value)? watchCarsData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchCarsData value)? watchCarsData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarsEventCopyWith<$Res> {
  factory $CarsEventCopyWith(CarsEvent value, $Res Function(CarsEvent) then) =
      _$CarsEventCopyWithImpl<$Res, CarsEvent>;
}

/// @nodoc
class _$CarsEventCopyWithImpl<$Res, $Val extends CarsEvent>
    implements $CarsEventCopyWith<$Res> {
  _$CarsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$WatchCarsDataCopyWith<$Res> {
  factory _$$WatchCarsDataCopyWith(
          _$WatchCarsData value, $Res Function(_$WatchCarsData) then) =
      __$$WatchCarsDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WatchCarsDataCopyWithImpl<$Res>
    extends _$CarsEventCopyWithImpl<$Res, _$WatchCarsData>
    implements _$$WatchCarsDataCopyWith<$Res> {
  __$$WatchCarsDataCopyWithImpl(
      _$WatchCarsData _value, $Res Function(_$WatchCarsData) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WatchCarsData implements WatchCarsData {
  const _$WatchCarsData();

  @override
  String toString() {
    return 'CarsEvent.watchCarsData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WatchCarsData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchCarsData,
  }) {
    return watchCarsData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchCarsData,
  }) {
    return watchCarsData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchCarsData,
    required TResult orElse(),
  }) {
    if (watchCarsData != null) {
      return watchCarsData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchCarsData value) watchCarsData,
  }) {
    return watchCarsData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WatchCarsData value)? watchCarsData,
  }) {
    return watchCarsData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchCarsData value)? watchCarsData,
    required TResult orElse(),
  }) {
    if (watchCarsData != null) {
      return watchCarsData(this);
    }
    return orElse();
  }
}

abstract class WatchCarsData implements CarsEvent {
  const factory WatchCarsData() = _$WatchCarsData;
}

/// @nodoc
mixin _$CarsState {
  List<Car> get cars => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CarsStateCopyWith<CarsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarsStateCopyWith<$Res> {
  factory $CarsStateCopyWith(CarsState value, $Res Function(CarsState) then) =
      _$CarsStateCopyWithImpl<$Res, CarsState>;
  @useResult
  $Res call({List<Car> cars});
}

/// @nodoc
class _$CarsStateCopyWithImpl<$Res, $Val extends CarsState>
    implements $CarsStateCopyWith<$Res> {
  _$CarsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cars = null,
  }) {
    return _then(_value.copyWith(
      cars: null == cars
          ? _value.cars
          : cars // ignore: cast_nullable_to_non_nullable
              as List<Car>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CarsStateCopyWith<$Res> implements $CarsStateCopyWith<$Res> {
  factory _$$_CarsStateCopyWith(
          _$_CarsState value, $Res Function(_$_CarsState) then) =
      __$$_CarsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Car> cars});
}

/// @nodoc
class __$$_CarsStateCopyWithImpl<$Res>
    extends _$CarsStateCopyWithImpl<$Res, _$_CarsState>
    implements _$$_CarsStateCopyWith<$Res> {
  __$$_CarsStateCopyWithImpl(
      _$_CarsState _value, $Res Function(_$_CarsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cars = null,
  }) {
    return _then(_$_CarsState(
      cars: null == cars
          ? _value._cars
          : cars // ignore: cast_nullable_to_non_nullable
              as List<Car>,
    ));
  }
}

/// @nodoc

class _$_CarsState implements _CarsState {
  const _$_CarsState({required final List<Car> cars}) : _cars = cars;

  final List<Car> _cars;
  @override
  List<Car> get cars {
    if (_cars is EqualUnmodifiableListView) return _cars;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cars);
  }

  @override
  String toString() {
    return 'CarsState(cars: $cars)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CarsState &&
            const DeepCollectionEquality().equals(other._cars, _cars));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cars));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CarsStateCopyWith<_$_CarsState> get copyWith =>
      __$$_CarsStateCopyWithImpl<_$_CarsState>(this, _$identity);
}

abstract class _CarsState implements CarsState {
  const factory _CarsState({required final List<Car> cars}) = _$_CarsState;

  @override
  List<Car> get cars;
  @override
  @JsonKey(ignore: true)
  _$$_CarsStateCopyWith<_$_CarsState> get copyWith =>
      throw _privateConstructorUsedError;
}
