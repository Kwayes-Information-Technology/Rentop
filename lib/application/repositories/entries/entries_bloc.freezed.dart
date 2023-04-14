// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'entries_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EntriesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchEntriesData,
    required TResult Function() refreshData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchEntriesData,
    TResult? Function()? refreshData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchEntriesData,
    TResult Function()? refreshData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchEntriesData value) fetchEntriesData,
    required TResult Function(RefreshData value) refreshData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchEntriesData value)? fetchEntriesData,
    TResult? Function(RefreshData value)? refreshData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchEntriesData value)? fetchEntriesData,
    TResult Function(RefreshData value)? refreshData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntriesEventCopyWith<$Res> {
  factory $EntriesEventCopyWith(
          EntriesEvent value, $Res Function(EntriesEvent) then) =
      _$EntriesEventCopyWithImpl<$Res, EntriesEvent>;
}

/// @nodoc
class _$EntriesEventCopyWithImpl<$Res, $Val extends EntriesEvent>
    implements $EntriesEventCopyWith<$Res> {
  _$EntriesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchEntriesDataCopyWith<$Res> {
  factory _$$FetchEntriesDataCopyWith(
          _$FetchEntriesData value, $Res Function(_$FetchEntriesData) then) =
      __$$FetchEntriesDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchEntriesDataCopyWithImpl<$Res>
    extends _$EntriesEventCopyWithImpl<$Res, _$FetchEntriesData>
    implements _$$FetchEntriesDataCopyWith<$Res> {
  __$$FetchEntriesDataCopyWithImpl(
      _$FetchEntriesData _value, $Res Function(_$FetchEntriesData) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchEntriesData implements FetchEntriesData {
  const _$FetchEntriesData();

  @override
  String toString() {
    return 'EntriesEvent.fetchEntriesData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchEntriesData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchEntriesData,
    required TResult Function() refreshData,
  }) {
    return fetchEntriesData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchEntriesData,
    TResult? Function()? refreshData,
  }) {
    return fetchEntriesData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchEntriesData,
    TResult Function()? refreshData,
    required TResult orElse(),
  }) {
    if (fetchEntriesData != null) {
      return fetchEntriesData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchEntriesData value) fetchEntriesData,
    required TResult Function(RefreshData value) refreshData,
  }) {
    return fetchEntriesData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchEntriesData value)? fetchEntriesData,
    TResult? Function(RefreshData value)? refreshData,
  }) {
    return fetchEntriesData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchEntriesData value)? fetchEntriesData,
    TResult Function(RefreshData value)? refreshData,
    required TResult orElse(),
  }) {
    if (fetchEntriesData != null) {
      return fetchEntriesData(this);
    }
    return orElse();
  }
}

abstract class FetchEntriesData implements EntriesEvent {
  const factory FetchEntriesData() = _$FetchEntriesData;
}

/// @nodoc
abstract class _$$RefreshDataCopyWith<$Res> {
  factory _$$RefreshDataCopyWith(
          _$RefreshData value, $Res Function(_$RefreshData) then) =
      __$$RefreshDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshDataCopyWithImpl<$Res>
    extends _$EntriesEventCopyWithImpl<$Res, _$RefreshData>
    implements _$$RefreshDataCopyWith<$Res> {
  __$$RefreshDataCopyWithImpl(
      _$RefreshData _value, $Res Function(_$RefreshData) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RefreshData implements RefreshData {
  const _$RefreshData();

  @override
  String toString() {
    return 'EntriesEvent.refreshData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RefreshData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchEntriesData,
    required TResult Function() refreshData,
  }) {
    return refreshData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchEntriesData,
    TResult? Function()? refreshData,
  }) {
    return refreshData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchEntriesData,
    TResult Function()? refreshData,
    required TResult orElse(),
  }) {
    if (refreshData != null) {
      return refreshData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchEntriesData value) fetchEntriesData,
    required TResult Function(RefreshData value) refreshData,
  }) {
    return refreshData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchEntriesData value)? fetchEntriesData,
    TResult? Function(RefreshData value)? refreshData,
  }) {
    return refreshData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchEntriesData value)? fetchEntriesData,
    TResult Function(RefreshData value)? refreshData,
    required TResult orElse(),
  }) {
    if (refreshData != null) {
      return refreshData(this);
    }
    return orElse();
  }
}

abstract class RefreshData implements EntriesEvent {
  const factory RefreshData() = _$RefreshData;
}

/// @nodoc
mixin _$EntriesState {
  List<Entry> get entries => throw _privateConstructorUsedError;
  RefreshController get refreshController => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EntriesStateCopyWith<EntriesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntriesStateCopyWith<$Res> {
  factory $EntriesStateCopyWith(
          EntriesState value, $Res Function(EntriesState) then) =
      _$EntriesStateCopyWithImpl<$Res, EntriesState>;
  @useResult
  $Res call({List<Entry> entries, RefreshController refreshController});
}

/// @nodoc
class _$EntriesStateCopyWithImpl<$Res, $Val extends EntriesState>
    implements $EntriesStateCopyWith<$Res> {
  _$EntriesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entries = null,
    Object? refreshController = null,
  }) {
    return _then(_value.copyWith(
      entries: null == entries
          ? _value.entries
          : entries // ignore: cast_nullable_to_non_nullable
              as List<Entry>,
      refreshController: null == refreshController
          ? _value.refreshController
          : refreshController // ignore: cast_nullable_to_non_nullable
              as RefreshController,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EntriesStateCopyWith<$Res>
    implements $EntriesStateCopyWith<$Res> {
  factory _$$_EntriesStateCopyWith(
          _$_EntriesState value, $Res Function(_$_EntriesState) then) =
      __$$_EntriesStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Entry> entries, RefreshController refreshController});
}

/// @nodoc
class __$$_EntriesStateCopyWithImpl<$Res>
    extends _$EntriesStateCopyWithImpl<$Res, _$_EntriesState>
    implements _$$_EntriesStateCopyWith<$Res> {
  __$$_EntriesStateCopyWithImpl(
      _$_EntriesState _value, $Res Function(_$_EntriesState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entries = null,
    Object? refreshController = null,
  }) {
    return _then(_$_EntriesState(
      entries: null == entries
          ? _value._entries
          : entries // ignore: cast_nullable_to_non_nullable
              as List<Entry>,
      refreshController: null == refreshController
          ? _value.refreshController
          : refreshController // ignore: cast_nullable_to_non_nullable
              as RefreshController,
    ));
  }
}

/// @nodoc

class _$_EntriesState implements _EntriesState {
  const _$_EntriesState(
      {required final List<Entry> entries, required this.refreshController})
      : _entries = entries;

  final List<Entry> _entries;
  @override
  List<Entry> get entries {
    if (_entries is EqualUnmodifiableListView) return _entries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_entries);
  }

  @override
  final RefreshController refreshController;

  @override
  String toString() {
    return 'EntriesState(entries: $entries, refreshController: $refreshController)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EntriesState &&
            const DeepCollectionEquality().equals(other._entries, _entries) &&
            (identical(other.refreshController, refreshController) ||
                other.refreshController == refreshController));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_entries), refreshController);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EntriesStateCopyWith<_$_EntriesState> get copyWith =>
      __$$_EntriesStateCopyWithImpl<_$_EntriesState>(this, _$identity);
}

abstract class _EntriesState implements EntriesState {
  const factory _EntriesState(
      {required final List<Entry> entries,
      required final RefreshController refreshController}) = _$_EntriesState;

  @override
  List<Entry> get entries;
  @override
  RefreshController get refreshController;
  @override
  @JsonKey(ignore: true)
  _$$_EntriesStateCopyWith<_$_EntriesState> get copyWith =>
      throw _privateConstructorUsedError;
}
