// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'navigation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NavigationEvent {
  int get index => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) selectedIndexChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? selectedIndexChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? selectedIndexChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectedIndexChanged value) selectedIndexChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectedIndexChanged value)? selectedIndexChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectedIndexChanged value)? selectedIndexChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NavigationEventCopyWith<NavigationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigationEventCopyWith<$Res> {
  factory $NavigationEventCopyWith(
          NavigationEvent value, $Res Function(NavigationEvent) then) =
      _$NavigationEventCopyWithImpl<$Res, NavigationEvent>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class _$NavigationEventCopyWithImpl<$Res, $Val extends NavigationEvent>
    implements $NavigationEventCopyWith<$Res> {
  _$NavigationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SelectedIndexChangedCopyWith<$Res>
    implements $NavigationEventCopyWith<$Res> {
  factory _$$SelectedIndexChangedCopyWith(_$SelectedIndexChanged value,
          $Res Function(_$SelectedIndexChanged) then) =
      __$$SelectedIndexChangedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$SelectedIndexChangedCopyWithImpl<$Res>
    extends _$NavigationEventCopyWithImpl<$Res, _$SelectedIndexChanged>
    implements _$$SelectedIndexChangedCopyWith<$Res> {
  __$$SelectedIndexChangedCopyWithImpl(_$SelectedIndexChanged _value,
      $Res Function(_$SelectedIndexChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$SelectedIndexChanged(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SelectedIndexChanged implements SelectedIndexChanged {
  const _$SelectedIndexChanged(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'NavigationEvent.selectedIndexChanged(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectedIndexChanged &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectedIndexChangedCopyWith<_$SelectedIndexChanged> get copyWith =>
      __$$SelectedIndexChangedCopyWithImpl<_$SelectedIndexChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) selectedIndexChanged,
  }) {
    return selectedIndexChanged(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? selectedIndexChanged,
  }) {
    return selectedIndexChanged?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? selectedIndexChanged,
    required TResult orElse(),
  }) {
    if (selectedIndexChanged != null) {
      return selectedIndexChanged(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectedIndexChanged value) selectedIndexChanged,
  }) {
    return selectedIndexChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectedIndexChanged value)? selectedIndexChanged,
  }) {
    return selectedIndexChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectedIndexChanged value)? selectedIndexChanged,
    required TResult orElse(),
  }) {
    if (selectedIndexChanged != null) {
      return selectedIndexChanged(this);
    }
    return orElse();
  }
}

abstract class SelectedIndexChanged implements NavigationEvent {
  const factory SelectedIndexChanged(final int index) = _$SelectedIndexChanged;

  @override
  int get index;
  @override
  @JsonKey(ignore: true)
  _$$SelectedIndexChangedCopyWith<_$SelectedIndexChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NavigationState {
  int get selectedIndex => throw _privateConstructorUsedError;
  List<Widget> get screens => throw _privateConstructorUsedError;
  List<String> get items => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NavigationStateCopyWith<NavigationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigationStateCopyWith<$Res> {
  factory $NavigationStateCopyWith(
          NavigationState value, $Res Function(NavigationState) then) =
      _$NavigationStateCopyWithImpl<$Res, NavigationState>;
  @useResult
  $Res call({int selectedIndex, List<Widget> screens, List<String> items});
}

/// @nodoc
class _$NavigationStateCopyWithImpl<$Res, $Val extends NavigationState>
    implements $NavigationStateCopyWith<$Res> {
  _$NavigationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedIndex = null,
    Object? screens = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
      screens: null == screens
          ? _value.screens
          : screens // ignore: cast_nullable_to_non_nullable
              as List<Widget>,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NavigationStateCopyWith<$Res>
    implements $NavigationStateCopyWith<$Res> {
  factory _$$_NavigationStateCopyWith(
          _$_NavigationState value, $Res Function(_$_NavigationState) then) =
      __$$_NavigationStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int selectedIndex, List<Widget> screens, List<String> items});
}

/// @nodoc
class __$$_NavigationStateCopyWithImpl<$Res>
    extends _$NavigationStateCopyWithImpl<$Res, _$_NavigationState>
    implements _$$_NavigationStateCopyWith<$Res> {
  __$$_NavigationStateCopyWithImpl(
      _$_NavigationState _value, $Res Function(_$_NavigationState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedIndex = null,
    Object? screens = null,
    Object? items = null,
  }) {
    return _then(_$_NavigationState(
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
      screens: null == screens
          ? _value._screens
          : screens // ignore: cast_nullable_to_non_nullable
              as List<Widget>,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_NavigationState implements _NavigationState {
  const _$_NavigationState(
      {required this.selectedIndex,
      required final List<Widget> screens,
      required final List<String> items})
      : _screens = screens,
        _items = items;

  @override
  final int selectedIndex;
  final List<Widget> _screens;
  @override
  List<Widget> get screens {
    if (_screens is EqualUnmodifiableListView) return _screens;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_screens);
  }

  final List<String> _items;
  @override
  List<String> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'NavigationState(selectedIndex: $selectedIndex, screens: $screens, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NavigationState &&
            (identical(other.selectedIndex, selectedIndex) ||
                other.selectedIndex == selectedIndex) &&
            const DeepCollectionEquality().equals(other._screens, _screens) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      selectedIndex,
      const DeepCollectionEquality().hash(_screens),
      const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NavigationStateCopyWith<_$_NavigationState> get copyWith =>
      __$$_NavigationStateCopyWithImpl<_$_NavigationState>(this, _$identity);
}

abstract class _NavigationState implements NavigationState {
  const factory _NavigationState(
      {required final int selectedIndex,
      required final List<Widget> screens,
      required final List<String> items}) = _$_NavigationState;

  @override
  int get selectedIndex;
  @override
  List<Widget> get screens;
  @override
  List<String> get items;
  @override
  @JsonKey(ignore: true)
  _$$_NavigationStateCopyWith<_$_NavigationState> get copyWith =>
      throw _privateConstructorUsedError;
}
