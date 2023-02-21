// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'listings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ListingsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchListingsData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchListingsData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchListingsData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchListingsData value) fetchListingsData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchListingsData value)? fetchListingsData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchListingsData value)? fetchListingsData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListingsEventCopyWith<$Res> {
  factory $ListingsEventCopyWith(
          ListingsEvent value, $Res Function(ListingsEvent) then) =
      _$ListingsEventCopyWithImpl<$Res, ListingsEvent>;
}

/// @nodoc
class _$ListingsEventCopyWithImpl<$Res, $Val extends ListingsEvent>
    implements $ListingsEventCopyWith<$Res> {
  _$ListingsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchListingsDataCopyWith<$Res> {
  factory _$$FetchListingsDataCopyWith(
          _$FetchListingsData value, $Res Function(_$FetchListingsData) then) =
      __$$FetchListingsDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchListingsDataCopyWithImpl<$Res>
    extends _$ListingsEventCopyWithImpl<$Res, _$FetchListingsData>
    implements _$$FetchListingsDataCopyWith<$Res> {
  __$$FetchListingsDataCopyWithImpl(
      _$FetchListingsData _value, $Res Function(_$FetchListingsData) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchListingsData implements FetchListingsData {
  const _$FetchListingsData();

  @override
  String toString() {
    return 'ListingsEvent.fetchListingsData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchListingsData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchListingsData,
  }) {
    return fetchListingsData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchListingsData,
  }) {
    return fetchListingsData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchListingsData,
    required TResult orElse(),
  }) {
    if (fetchListingsData != null) {
      return fetchListingsData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchListingsData value) fetchListingsData,
  }) {
    return fetchListingsData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchListingsData value)? fetchListingsData,
  }) {
    return fetchListingsData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchListingsData value)? fetchListingsData,
    required TResult orElse(),
  }) {
    if (fetchListingsData != null) {
      return fetchListingsData(this);
    }
    return orElse();
  }
}

abstract class FetchListingsData implements ListingsEvent {
  const factory FetchListingsData() = _$FetchListingsData;
}

/// @nodoc
mixin _$ListingsState {
  List<CarBrand> get carBrands => throw _privateConstructorUsedError;
  List<CarCategory> get carCategories => throw _privateConstructorUsedError;
  List<CarFeature> get carFeatures => throw _privateConstructorUsedError;
  List<CarSpecification> get carSpecifications =>
      throw _privateConstructorUsedError;
  List<CarRegion> get carRegions => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ListingsStateCopyWith<ListingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListingsStateCopyWith<$Res> {
  factory $ListingsStateCopyWith(
          ListingsState value, $Res Function(ListingsState) then) =
      _$ListingsStateCopyWithImpl<$Res, ListingsState>;
  @useResult
  $Res call(
      {List<CarBrand> carBrands,
      List<CarCategory> carCategories,
      List<CarFeature> carFeatures,
      List<CarSpecification> carSpecifications,
      List<CarRegion> carRegions});
}

/// @nodoc
class _$ListingsStateCopyWithImpl<$Res, $Val extends ListingsState>
    implements $ListingsStateCopyWith<$Res> {
  _$ListingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? carBrands = null,
    Object? carCategories = null,
    Object? carFeatures = null,
    Object? carSpecifications = null,
    Object? carRegions = null,
  }) {
    return _then(_value.copyWith(
      carBrands: null == carBrands
          ? _value.carBrands
          : carBrands // ignore: cast_nullable_to_non_nullable
              as List<CarBrand>,
      carCategories: null == carCategories
          ? _value.carCategories
          : carCategories // ignore: cast_nullable_to_non_nullable
              as List<CarCategory>,
      carFeatures: null == carFeatures
          ? _value.carFeatures
          : carFeatures // ignore: cast_nullable_to_non_nullable
              as List<CarFeature>,
      carSpecifications: null == carSpecifications
          ? _value.carSpecifications
          : carSpecifications // ignore: cast_nullable_to_non_nullable
              as List<CarSpecification>,
      carRegions: null == carRegions
          ? _value.carRegions
          : carRegions // ignore: cast_nullable_to_non_nullable
              as List<CarRegion>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ListingsStateCopyWith<$Res>
    implements $ListingsStateCopyWith<$Res> {
  factory _$$_ListingsStateCopyWith(
          _$_ListingsState value, $Res Function(_$_ListingsState) then) =
      __$$_ListingsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CarBrand> carBrands,
      List<CarCategory> carCategories,
      List<CarFeature> carFeatures,
      List<CarSpecification> carSpecifications,
      List<CarRegion> carRegions});
}

/// @nodoc
class __$$_ListingsStateCopyWithImpl<$Res>
    extends _$ListingsStateCopyWithImpl<$Res, _$_ListingsState>
    implements _$$_ListingsStateCopyWith<$Res> {
  __$$_ListingsStateCopyWithImpl(
      _$_ListingsState _value, $Res Function(_$_ListingsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? carBrands = null,
    Object? carCategories = null,
    Object? carFeatures = null,
    Object? carSpecifications = null,
    Object? carRegions = null,
  }) {
    return _then(_$_ListingsState(
      carBrands: null == carBrands
          ? _value._carBrands
          : carBrands // ignore: cast_nullable_to_non_nullable
              as List<CarBrand>,
      carCategories: null == carCategories
          ? _value._carCategories
          : carCategories // ignore: cast_nullable_to_non_nullable
              as List<CarCategory>,
      carFeatures: null == carFeatures
          ? _value._carFeatures
          : carFeatures // ignore: cast_nullable_to_non_nullable
              as List<CarFeature>,
      carSpecifications: null == carSpecifications
          ? _value._carSpecifications
          : carSpecifications // ignore: cast_nullable_to_non_nullable
              as List<CarSpecification>,
      carRegions: null == carRegions
          ? _value._carRegions
          : carRegions // ignore: cast_nullable_to_non_nullable
              as List<CarRegion>,
    ));
  }
}

/// @nodoc

class _$_ListingsState implements _ListingsState {
  const _$_ListingsState(
      {required final List<CarBrand> carBrands,
      required final List<CarCategory> carCategories,
      required final List<CarFeature> carFeatures,
      required final List<CarSpecification> carSpecifications,
      required final List<CarRegion> carRegions})
      : _carBrands = carBrands,
        _carCategories = carCategories,
        _carFeatures = carFeatures,
        _carSpecifications = carSpecifications,
        _carRegions = carRegions;

  final List<CarBrand> _carBrands;
  @override
  List<CarBrand> get carBrands {
    if (_carBrands is EqualUnmodifiableListView) return _carBrands;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_carBrands);
  }

  final List<CarCategory> _carCategories;
  @override
  List<CarCategory> get carCategories {
    if (_carCategories is EqualUnmodifiableListView) return _carCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_carCategories);
  }

  final List<CarFeature> _carFeatures;
  @override
  List<CarFeature> get carFeatures {
    if (_carFeatures is EqualUnmodifiableListView) return _carFeatures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_carFeatures);
  }

  final List<CarSpecification> _carSpecifications;
  @override
  List<CarSpecification> get carSpecifications {
    if (_carSpecifications is EqualUnmodifiableListView)
      return _carSpecifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_carSpecifications);
  }

  final List<CarRegion> _carRegions;
  @override
  List<CarRegion> get carRegions {
    if (_carRegions is EqualUnmodifiableListView) return _carRegions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_carRegions);
  }

  @override
  String toString() {
    return 'ListingsState(carBrands: $carBrands, carCategories: $carCategories, carFeatures: $carFeatures, carSpecifications: $carSpecifications, carRegions: $carRegions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListingsState &&
            const DeepCollectionEquality()
                .equals(other._carBrands, _carBrands) &&
            const DeepCollectionEquality()
                .equals(other._carCategories, _carCategories) &&
            const DeepCollectionEquality()
                .equals(other._carFeatures, _carFeatures) &&
            const DeepCollectionEquality()
                .equals(other._carSpecifications, _carSpecifications) &&
            const DeepCollectionEquality()
                .equals(other._carRegions, _carRegions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_carBrands),
      const DeepCollectionEquality().hash(_carCategories),
      const DeepCollectionEquality().hash(_carFeatures),
      const DeepCollectionEquality().hash(_carSpecifications),
      const DeepCollectionEquality().hash(_carRegions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ListingsStateCopyWith<_$_ListingsState> get copyWith =>
      __$$_ListingsStateCopyWithImpl<_$_ListingsState>(this, _$identity);
}

abstract class _ListingsState implements ListingsState {
  const factory _ListingsState(
      {required final List<CarBrand> carBrands,
      required final List<CarCategory> carCategories,
      required final List<CarFeature> carFeatures,
      required final List<CarSpecification> carSpecifications,
      required final List<CarRegion> carRegions}) = _$_ListingsState;

  @override
  List<CarBrand> get carBrands;
  @override
  List<CarCategory> get carCategories;
  @override
  List<CarFeature> get carFeatures;
  @override
  List<CarSpecification> get carSpecifications;
  @override
  List<CarRegion> get carRegions;
  @override
  @JsonKey(ignore: true)
  _$$_ListingsStateCopyWith<_$_ListingsState> get copyWith =>
      throw _privateConstructorUsedError;
}
