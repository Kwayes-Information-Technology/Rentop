// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'messages_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MessagesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchMessagesData,
    required TResult Function() refreshData,
    required TResult Function() sendMessage,
    required TResult Function(Conversation? conversation)
        selectedConversationChanged,
    required TResult Function() unseenMessages,
    required TResult Function() scrollDown,
    required TResult Function(bool value) newConversationChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchMessagesData,
    TResult? Function()? refreshData,
    TResult? Function()? sendMessage,
    TResult? Function(Conversation? conversation)? selectedConversationChanged,
    TResult? Function()? unseenMessages,
    TResult? Function()? scrollDown,
    TResult? Function(bool value)? newConversationChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchMessagesData,
    TResult Function()? refreshData,
    TResult Function()? sendMessage,
    TResult Function(Conversation? conversation)? selectedConversationChanged,
    TResult Function()? unseenMessages,
    TResult Function()? scrollDown,
    TResult Function(bool value)? newConversationChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchMessagesData value) fetchMessagesData,
    required TResult Function(RefreshData value) refreshData,
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(SelectedConversationChanged value)
        selectedConversationChanged,
    required TResult Function(UnseenMessages value) unseenMessages,
    required TResult Function(ScrollDown value) scrollDown,
    required TResult Function(NewConversationChanged value)
        newConversationChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchMessagesData value)? fetchMessagesData,
    TResult? Function(RefreshData value)? refreshData,
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(SelectedConversationChanged value)?
        selectedConversationChanged,
    TResult? Function(UnseenMessages value)? unseenMessages,
    TResult? Function(ScrollDown value)? scrollDown,
    TResult? Function(NewConversationChanged value)? newConversationChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchMessagesData value)? fetchMessagesData,
    TResult Function(RefreshData value)? refreshData,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(SelectedConversationChanged value)?
        selectedConversationChanged,
    TResult Function(UnseenMessages value)? unseenMessages,
    TResult Function(ScrollDown value)? scrollDown,
    TResult Function(NewConversationChanged value)? newConversationChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessagesEventCopyWith<$Res> {
  factory $MessagesEventCopyWith(
          MessagesEvent value, $Res Function(MessagesEvent) then) =
      _$MessagesEventCopyWithImpl<$Res, MessagesEvent>;
}

/// @nodoc
class _$MessagesEventCopyWithImpl<$Res, $Val extends MessagesEvent>
    implements $MessagesEventCopyWith<$Res> {
  _$MessagesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchMessagesDataCopyWith<$Res> {
  factory _$$FetchMessagesDataCopyWith(
          _$FetchMessagesData value, $Res Function(_$FetchMessagesData) then) =
      __$$FetchMessagesDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchMessagesDataCopyWithImpl<$Res>
    extends _$MessagesEventCopyWithImpl<$Res, _$FetchMessagesData>
    implements _$$FetchMessagesDataCopyWith<$Res> {
  __$$FetchMessagesDataCopyWithImpl(
      _$FetchMessagesData _value, $Res Function(_$FetchMessagesData) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchMessagesData implements FetchMessagesData {
  const _$FetchMessagesData();

  @override
  String toString() {
    return 'MessagesEvent.fetchMessagesData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchMessagesData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchMessagesData,
    required TResult Function() refreshData,
    required TResult Function() sendMessage,
    required TResult Function(Conversation? conversation)
        selectedConversationChanged,
    required TResult Function() unseenMessages,
    required TResult Function() scrollDown,
    required TResult Function(bool value) newConversationChanged,
  }) {
    return fetchMessagesData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchMessagesData,
    TResult? Function()? refreshData,
    TResult? Function()? sendMessage,
    TResult? Function(Conversation? conversation)? selectedConversationChanged,
    TResult? Function()? unseenMessages,
    TResult? Function()? scrollDown,
    TResult? Function(bool value)? newConversationChanged,
  }) {
    return fetchMessagesData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchMessagesData,
    TResult Function()? refreshData,
    TResult Function()? sendMessage,
    TResult Function(Conversation? conversation)? selectedConversationChanged,
    TResult Function()? unseenMessages,
    TResult Function()? scrollDown,
    TResult Function(bool value)? newConversationChanged,
    required TResult orElse(),
  }) {
    if (fetchMessagesData != null) {
      return fetchMessagesData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchMessagesData value) fetchMessagesData,
    required TResult Function(RefreshData value) refreshData,
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(SelectedConversationChanged value)
        selectedConversationChanged,
    required TResult Function(UnseenMessages value) unseenMessages,
    required TResult Function(ScrollDown value) scrollDown,
    required TResult Function(NewConversationChanged value)
        newConversationChanged,
  }) {
    return fetchMessagesData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchMessagesData value)? fetchMessagesData,
    TResult? Function(RefreshData value)? refreshData,
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(SelectedConversationChanged value)?
        selectedConversationChanged,
    TResult? Function(UnseenMessages value)? unseenMessages,
    TResult? Function(ScrollDown value)? scrollDown,
    TResult? Function(NewConversationChanged value)? newConversationChanged,
  }) {
    return fetchMessagesData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchMessagesData value)? fetchMessagesData,
    TResult Function(RefreshData value)? refreshData,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(SelectedConversationChanged value)?
        selectedConversationChanged,
    TResult Function(UnseenMessages value)? unseenMessages,
    TResult Function(ScrollDown value)? scrollDown,
    TResult Function(NewConversationChanged value)? newConversationChanged,
    required TResult orElse(),
  }) {
    if (fetchMessagesData != null) {
      return fetchMessagesData(this);
    }
    return orElse();
  }
}

abstract class FetchMessagesData implements MessagesEvent {
  const factory FetchMessagesData() = _$FetchMessagesData;
}

/// @nodoc
abstract class _$$RefreshDataCopyWith<$Res> {
  factory _$$RefreshDataCopyWith(
          _$RefreshData value, $Res Function(_$RefreshData) then) =
      __$$RefreshDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshDataCopyWithImpl<$Res>
    extends _$MessagesEventCopyWithImpl<$Res, _$RefreshData>
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
    return 'MessagesEvent.refreshData()';
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
    required TResult Function() fetchMessagesData,
    required TResult Function() refreshData,
    required TResult Function() sendMessage,
    required TResult Function(Conversation? conversation)
        selectedConversationChanged,
    required TResult Function() unseenMessages,
    required TResult Function() scrollDown,
    required TResult Function(bool value) newConversationChanged,
  }) {
    return refreshData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchMessagesData,
    TResult? Function()? refreshData,
    TResult? Function()? sendMessage,
    TResult? Function(Conversation? conversation)? selectedConversationChanged,
    TResult? Function()? unseenMessages,
    TResult? Function()? scrollDown,
    TResult? Function(bool value)? newConversationChanged,
  }) {
    return refreshData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchMessagesData,
    TResult Function()? refreshData,
    TResult Function()? sendMessage,
    TResult Function(Conversation? conversation)? selectedConversationChanged,
    TResult Function()? unseenMessages,
    TResult Function()? scrollDown,
    TResult Function(bool value)? newConversationChanged,
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
    required TResult Function(FetchMessagesData value) fetchMessagesData,
    required TResult Function(RefreshData value) refreshData,
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(SelectedConversationChanged value)
        selectedConversationChanged,
    required TResult Function(UnseenMessages value) unseenMessages,
    required TResult Function(ScrollDown value) scrollDown,
    required TResult Function(NewConversationChanged value)
        newConversationChanged,
  }) {
    return refreshData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchMessagesData value)? fetchMessagesData,
    TResult? Function(RefreshData value)? refreshData,
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(SelectedConversationChanged value)?
        selectedConversationChanged,
    TResult? Function(UnseenMessages value)? unseenMessages,
    TResult? Function(ScrollDown value)? scrollDown,
    TResult? Function(NewConversationChanged value)? newConversationChanged,
  }) {
    return refreshData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchMessagesData value)? fetchMessagesData,
    TResult Function(RefreshData value)? refreshData,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(SelectedConversationChanged value)?
        selectedConversationChanged,
    TResult Function(UnseenMessages value)? unseenMessages,
    TResult Function(ScrollDown value)? scrollDown,
    TResult Function(NewConversationChanged value)? newConversationChanged,
    required TResult orElse(),
  }) {
    if (refreshData != null) {
      return refreshData(this);
    }
    return orElse();
  }
}

abstract class RefreshData implements MessagesEvent {
  const factory RefreshData() = _$RefreshData;
}

/// @nodoc
abstract class _$$SendMessageCopyWith<$Res> {
  factory _$$SendMessageCopyWith(
          _$SendMessage value, $Res Function(_$SendMessage) then) =
      __$$SendMessageCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SendMessageCopyWithImpl<$Res>
    extends _$MessagesEventCopyWithImpl<$Res, _$SendMessage>
    implements _$$SendMessageCopyWith<$Res> {
  __$$SendMessageCopyWithImpl(
      _$SendMessage _value, $Res Function(_$SendMessage) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SendMessage implements SendMessage {
  const _$SendMessage();

  @override
  String toString() {
    return 'MessagesEvent.sendMessage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SendMessage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchMessagesData,
    required TResult Function() refreshData,
    required TResult Function() sendMessage,
    required TResult Function(Conversation? conversation)
        selectedConversationChanged,
    required TResult Function() unseenMessages,
    required TResult Function() scrollDown,
    required TResult Function(bool value) newConversationChanged,
  }) {
    return sendMessage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchMessagesData,
    TResult? Function()? refreshData,
    TResult? Function()? sendMessage,
    TResult? Function(Conversation? conversation)? selectedConversationChanged,
    TResult? Function()? unseenMessages,
    TResult? Function()? scrollDown,
    TResult? Function(bool value)? newConversationChanged,
  }) {
    return sendMessage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchMessagesData,
    TResult Function()? refreshData,
    TResult Function()? sendMessage,
    TResult Function(Conversation? conversation)? selectedConversationChanged,
    TResult Function()? unseenMessages,
    TResult Function()? scrollDown,
    TResult Function(bool value)? newConversationChanged,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchMessagesData value) fetchMessagesData,
    required TResult Function(RefreshData value) refreshData,
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(SelectedConversationChanged value)
        selectedConversationChanged,
    required TResult Function(UnseenMessages value) unseenMessages,
    required TResult Function(ScrollDown value) scrollDown,
    required TResult Function(NewConversationChanged value)
        newConversationChanged,
  }) {
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchMessagesData value)? fetchMessagesData,
    TResult? Function(RefreshData value)? refreshData,
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(SelectedConversationChanged value)?
        selectedConversationChanged,
    TResult? Function(UnseenMessages value)? unseenMessages,
    TResult? Function(ScrollDown value)? scrollDown,
    TResult? Function(NewConversationChanged value)? newConversationChanged,
  }) {
    return sendMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchMessagesData value)? fetchMessagesData,
    TResult Function(RefreshData value)? refreshData,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(SelectedConversationChanged value)?
        selectedConversationChanged,
    TResult Function(UnseenMessages value)? unseenMessages,
    TResult Function(ScrollDown value)? scrollDown,
    TResult Function(NewConversationChanged value)? newConversationChanged,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(this);
    }
    return orElse();
  }
}

abstract class SendMessage implements MessagesEvent {
  const factory SendMessage() = _$SendMessage;
}

/// @nodoc
abstract class _$$SelectedConversationChangedCopyWith<$Res> {
  factory _$$SelectedConversationChangedCopyWith(
          _$SelectedConversationChanged value,
          $Res Function(_$SelectedConversationChanged) then) =
      __$$SelectedConversationChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({Conversation? conversation});
}

/// @nodoc
class __$$SelectedConversationChangedCopyWithImpl<$Res>
    extends _$MessagesEventCopyWithImpl<$Res, _$SelectedConversationChanged>
    implements _$$SelectedConversationChangedCopyWith<$Res> {
  __$$SelectedConversationChangedCopyWithImpl(
      _$SelectedConversationChanged _value,
      $Res Function(_$SelectedConversationChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversation = freezed,
  }) {
    return _then(_$SelectedConversationChanged(
      freezed == conversation
          ? _value.conversation
          : conversation // ignore: cast_nullable_to_non_nullable
              as Conversation?,
    ));
  }
}

/// @nodoc

class _$SelectedConversationChanged implements SelectedConversationChanged {
  const _$SelectedConversationChanged(this.conversation);

  @override
  final Conversation? conversation;

  @override
  String toString() {
    return 'MessagesEvent.selectedConversationChanged(conversation: $conversation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectedConversationChanged &&
            (identical(other.conversation, conversation) ||
                other.conversation == conversation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, conversation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectedConversationChangedCopyWith<_$SelectedConversationChanged>
      get copyWith => __$$SelectedConversationChangedCopyWithImpl<
          _$SelectedConversationChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchMessagesData,
    required TResult Function() refreshData,
    required TResult Function() sendMessage,
    required TResult Function(Conversation? conversation)
        selectedConversationChanged,
    required TResult Function() unseenMessages,
    required TResult Function() scrollDown,
    required TResult Function(bool value) newConversationChanged,
  }) {
    return selectedConversationChanged(conversation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchMessagesData,
    TResult? Function()? refreshData,
    TResult? Function()? sendMessage,
    TResult? Function(Conversation? conversation)? selectedConversationChanged,
    TResult? Function()? unseenMessages,
    TResult? Function()? scrollDown,
    TResult? Function(bool value)? newConversationChanged,
  }) {
    return selectedConversationChanged?.call(conversation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchMessagesData,
    TResult Function()? refreshData,
    TResult Function()? sendMessage,
    TResult Function(Conversation? conversation)? selectedConversationChanged,
    TResult Function()? unseenMessages,
    TResult Function()? scrollDown,
    TResult Function(bool value)? newConversationChanged,
    required TResult orElse(),
  }) {
    if (selectedConversationChanged != null) {
      return selectedConversationChanged(conversation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchMessagesData value) fetchMessagesData,
    required TResult Function(RefreshData value) refreshData,
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(SelectedConversationChanged value)
        selectedConversationChanged,
    required TResult Function(UnseenMessages value) unseenMessages,
    required TResult Function(ScrollDown value) scrollDown,
    required TResult Function(NewConversationChanged value)
        newConversationChanged,
  }) {
    return selectedConversationChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchMessagesData value)? fetchMessagesData,
    TResult? Function(RefreshData value)? refreshData,
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(SelectedConversationChanged value)?
        selectedConversationChanged,
    TResult? Function(UnseenMessages value)? unseenMessages,
    TResult? Function(ScrollDown value)? scrollDown,
    TResult? Function(NewConversationChanged value)? newConversationChanged,
  }) {
    return selectedConversationChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchMessagesData value)? fetchMessagesData,
    TResult Function(RefreshData value)? refreshData,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(SelectedConversationChanged value)?
        selectedConversationChanged,
    TResult Function(UnseenMessages value)? unseenMessages,
    TResult Function(ScrollDown value)? scrollDown,
    TResult Function(NewConversationChanged value)? newConversationChanged,
    required TResult orElse(),
  }) {
    if (selectedConversationChanged != null) {
      return selectedConversationChanged(this);
    }
    return orElse();
  }
}

abstract class SelectedConversationChanged implements MessagesEvent {
  const factory SelectedConversationChanged(final Conversation? conversation) =
      _$SelectedConversationChanged;

  Conversation? get conversation;
  @JsonKey(ignore: true)
  _$$SelectedConversationChangedCopyWith<_$SelectedConversationChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnseenMessagesCopyWith<$Res> {
  factory _$$UnseenMessagesCopyWith(
          _$UnseenMessages value, $Res Function(_$UnseenMessages) then) =
      __$$UnseenMessagesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnseenMessagesCopyWithImpl<$Res>
    extends _$MessagesEventCopyWithImpl<$Res, _$UnseenMessages>
    implements _$$UnseenMessagesCopyWith<$Res> {
  __$$UnseenMessagesCopyWithImpl(
      _$UnseenMessages _value, $Res Function(_$UnseenMessages) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnseenMessages implements UnseenMessages {
  const _$UnseenMessages();

  @override
  String toString() {
    return 'MessagesEvent.unseenMessages()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnseenMessages);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchMessagesData,
    required TResult Function() refreshData,
    required TResult Function() sendMessage,
    required TResult Function(Conversation? conversation)
        selectedConversationChanged,
    required TResult Function() unseenMessages,
    required TResult Function() scrollDown,
    required TResult Function(bool value) newConversationChanged,
  }) {
    return unseenMessages();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchMessagesData,
    TResult? Function()? refreshData,
    TResult? Function()? sendMessage,
    TResult? Function(Conversation? conversation)? selectedConversationChanged,
    TResult? Function()? unseenMessages,
    TResult? Function()? scrollDown,
    TResult? Function(bool value)? newConversationChanged,
  }) {
    return unseenMessages?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchMessagesData,
    TResult Function()? refreshData,
    TResult Function()? sendMessage,
    TResult Function(Conversation? conversation)? selectedConversationChanged,
    TResult Function()? unseenMessages,
    TResult Function()? scrollDown,
    TResult Function(bool value)? newConversationChanged,
    required TResult orElse(),
  }) {
    if (unseenMessages != null) {
      return unseenMessages();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchMessagesData value) fetchMessagesData,
    required TResult Function(RefreshData value) refreshData,
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(SelectedConversationChanged value)
        selectedConversationChanged,
    required TResult Function(UnseenMessages value) unseenMessages,
    required TResult Function(ScrollDown value) scrollDown,
    required TResult Function(NewConversationChanged value)
        newConversationChanged,
  }) {
    return unseenMessages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchMessagesData value)? fetchMessagesData,
    TResult? Function(RefreshData value)? refreshData,
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(SelectedConversationChanged value)?
        selectedConversationChanged,
    TResult? Function(UnseenMessages value)? unseenMessages,
    TResult? Function(ScrollDown value)? scrollDown,
    TResult? Function(NewConversationChanged value)? newConversationChanged,
  }) {
    return unseenMessages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchMessagesData value)? fetchMessagesData,
    TResult Function(RefreshData value)? refreshData,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(SelectedConversationChanged value)?
        selectedConversationChanged,
    TResult Function(UnseenMessages value)? unseenMessages,
    TResult Function(ScrollDown value)? scrollDown,
    TResult Function(NewConversationChanged value)? newConversationChanged,
    required TResult orElse(),
  }) {
    if (unseenMessages != null) {
      return unseenMessages(this);
    }
    return orElse();
  }
}

abstract class UnseenMessages implements MessagesEvent {
  const factory UnseenMessages() = _$UnseenMessages;
}

/// @nodoc
abstract class _$$ScrollDownCopyWith<$Res> {
  factory _$$ScrollDownCopyWith(
          _$ScrollDown value, $Res Function(_$ScrollDown) then) =
      __$$ScrollDownCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ScrollDownCopyWithImpl<$Res>
    extends _$MessagesEventCopyWithImpl<$Res, _$ScrollDown>
    implements _$$ScrollDownCopyWith<$Res> {
  __$$ScrollDownCopyWithImpl(
      _$ScrollDown _value, $Res Function(_$ScrollDown) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ScrollDown implements ScrollDown {
  const _$ScrollDown();

  @override
  String toString() {
    return 'MessagesEvent.scrollDown()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ScrollDown);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchMessagesData,
    required TResult Function() refreshData,
    required TResult Function() sendMessage,
    required TResult Function(Conversation? conversation)
        selectedConversationChanged,
    required TResult Function() unseenMessages,
    required TResult Function() scrollDown,
    required TResult Function(bool value) newConversationChanged,
  }) {
    return scrollDown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchMessagesData,
    TResult? Function()? refreshData,
    TResult? Function()? sendMessage,
    TResult? Function(Conversation? conversation)? selectedConversationChanged,
    TResult? Function()? unseenMessages,
    TResult? Function()? scrollDown,
    TResult? Function(bool value)? newConversationChanged,
  }) {
    return scrollDown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchMessagesData,
    TResult Function()? refreshData,
    TResult Function()? sendMessage,
    TResult Function(Conversation? conversation)? selectedConversationChanged,
    TResult Function()? unseenMessages,
    TResult Function()? scrollDown,
    TResult Function(bool value)? newConversationChanged,
    required TResult orElse(),
  }) {
    if (scrollDown != null) {
      return scrollDown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchMessagesData value) fetchMessagesData,
    required TResult Function(RefreshData value) refreshData,
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(SelectedConversationChanged value)
        selectedConversationChanged,
    required TResult Function(UnseenMessages value) unseenMessages,
    required TResult Function(ScrollDown value) scrollDown,
    required TResult Function(NewConversationChanged value)
        newConversationChanged,
  }) {
    return scrollDown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchMessagesData value)? fetchMessagesData,
    TResult? Function(RefreshData value)? refreshData,
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(SelectedConversationChanged value)?
        selectedConversationChanged,
    TResult? Function(UnseenMessages value)? unseenMessages,
    TResult? Function(ScrollDown value)? scrollDown,
    TResult? Function(NewConversationChanged value)? newConversationChanged,
  }) {
    return scrollDown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchMessagesData value)? fetchMessagesData,
    TResult Function(RefreshData value)? refreshData,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(SelectedConversationChanged value)?
        selectedConversationChanged,
    TResult Function(UnseenMessages value)? unseenMessages,
    TResult Function(ScrollDown value)? scrollDown,
    TResult Function(NewConversationChanged value)? newConversationChanged,
    required TResult orElse(),
  }) {
    if (scrollDown != null) {
      return scrollDown(this);
    }
    return orElse();
  }
}

abstract class ScrollDown implements MessagesEvent {
  const factory ScrollDown() = _$ScrollDown;
}

/// @nodoc
abstract class _$$NewConversationChangedCopyWith<$Res> {
  factory _$$NewConversationChangedCopyWith(_$NewConversationChanged value,
          $Res Function(_$NewConversationChanged) then) =
      __$$NewConversationChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({bool value});
}

/// @nodoc
class __$$NewConversationChangedCopyWithImpl<$Res>
    extends _$MessagesEventCopyWithImpl<$Res, _$NewConversationChanged>
    implements _$$NewConversationChangedCopyWith<$Res> {
  __$$NewConversationChangedCopyWithImpl(_$NewConversationChanged _value,
      $Res Function(_$NewConversationChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$NewConversationChanged(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$NewConversationChanged implements NewConversationChanged {
  const _$NewConversationChanged(this.value);

  @override
  final bool value;

  @override
  String toString() {
    return 'MessagesEvent.newConversationChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewConversationChanged &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewConversationChangedCopyWith<_$NewConversationChanged> get copyWith =>
      __$$NewConversationChangedCopyWithImpl<_$NewConversationChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchMessagesData,
    required TResult Function() refreshData,
    required TResult Function() sendMessage,
    required TResult Function(Conversation? conversation)
        selectedConversationChanged,
    required TResult Function() unseenMessages,
    required TResult Function() scrollDown,
    required TResult Function(bool value) newConversationChanged,
  }) {
    return newConversationChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchMessagesData,
    TResult? Function()? refreshData,
    TResult? Function()? sendMessage,
    TResult? Function(Conversation? conversation)? selectedConversationChanged,
    TResult? Function()? unseenMessages,
    TResult? Function()? scrollDown,
    TResult? Function(bool value)? newConversationChanged,
  }) {
    return newConversationChanged?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchMessagesData,
    TResult Function()? refreshData,
    TResult Function()? sendMessage,
    TResult Function(Conversation? conversation)? selectedConversationChanged,
    TResult Function()? unseenMessages,
    TResult Function()? scrollDown,
    TResult Function(bool value)? newConversationChanged,
    required TResult orElse(),
  }) {
    if (newConversationChanged != null) {
      return newConversationChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchMessagesData value) fetchMessagesData,
    required TResult Function(RefreshData value) refreshData,
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(SelectedConversationChanged value)
        selectedConversationChanged,
    required TResult Function(UnseenMessages value) unseenMessages,
    required TResult Function(ScrollDown value) scrollDown,
    required TResult Function(NewConversationChanged value)
        newConversationChanged,
  }) {
    return newConversationChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchMessagesData value)? fetchMessagesData,
    TResult? Function(RefreshData value)? refreshData,
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(SelectedConversationChanged value)?
        selectedConversationChanged,
    TResult? Function(UnseenMessages value)? unseenMessages,
    TResult? Function(ScrollDown value)? scrollDown,
    TResult? Function(NewConversationChanged value)? newConversationChanged,
  }) {
    return newConversationChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchMessagesData value)? fetchMessagesData,
    TResult Function(RefreshData value)? refreshData,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(SelectedConversationChanged value)?
        selectedConversationChanged,
    TResult Function(UnseenMessages value)? unseenMessages,
    TResult Function(ScrollDown value)? scrollDown,
    TResult Function(NewConversationChanged value)? newConversationChanged,
    required TResult orElse(),
  }) {
    if (newConversationChanged != null) {
      return newConversationChanged(this);
    }
    return orElse();
  }
}

abstract class NewConversationChanged implements MessagesEvent {
  const factory NewConversationChanged(final bool value) =
      _$NewConversationChanged;

  bool get value;
  @JsonKey(ignore: true)
  _$$NewConversationChangedCopyWith<_$NewConversationChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MessagesState {
  List<Conversation> get conversations => throw _privateConstructorUsedError;
  Conversation? get selectedConversation => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  bool get newConversation => throw _privateConstructorUsedError;
  TextEditingController get textEditingController =>
      throw _privateConstructorUsedError;
  ScrollController get scrollController => throw _privateConstructorUsedError;
  RefreshController get refreshController => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MessagesStateCopyWith<MessagesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessagesStateCopyWith<$Res> {
  factory $MessagesStateCopyWith(
          MessagesState value, $Res Function(MessagesState) then) =
      _$MessagesStateCopyWithImpl<$Res, MessagesState>;
  @useResult
  $Res call(
      {List<Conversation> conversations,
      Conversation? selectedConversation,
      int totalPages,
      int currentPage,
      bool newConversation,
      TextEditingController textEditingController,
      ScrollController scrollController,
      RefreshController refreshController});
}

/// @nodoc
class _$MessagesStateCopyWithImpl<$Res, $Val extends MessagesState>
    implements $MessagesStateCopyWith<$Res> {
  _$MessagesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversations = null,
    Object? selectedConversation = freezed,
    Object? totalPages = null,
    Object? currentPage = null,
    Object? newConversation = null,
    Object? textEditingController = null,
    Object? scrollController = null,
    Object? refreshController = null,
  }) {
    return _then(_value.copyWith(
      conversations: null == conversations
          ? _value.conversations
          : conversations // ignore: cast_nullable_to_non_nullable
              as List<Conversation>,
      selectedConversation: freezed == selectedConversation
          ? _value.selectedConversation
          : selectedConversation // ignore: cast_nullable_to_non_nullable
              as Conversation?,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      newConversation: null == newConversation
          ? _value.newConversation
          : newConversation // ignore: cast_nullable_to_non_nullable
              as bool,
      textEditingController: null == textEditingController
          ? _value.textEditingController
          : textEditingController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      scrollController: null == scrollController
          ? _value.scrollController
          : scrollController // ignore: cast_nullable_to_non_nullable
              as ScrollController,
      refreshController: null == refreshController
          ? _value.refreshController
          : refreshController // ignore: cast_nullable_to_non_nullable
              as RefreshController,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MessagesStateCopyWith<$Res>
    implements $MessagesStateCopyWith<$Res> {
  factory _$$_MessagesStateCopyWith(
          _$_MessagesState value, $Res Function(_$_MessagesState) then) =
      __$$_MessagesStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Conversation> conversations,
      Conversation? selectedConversation,
      int totalPages,
      int currentPage,
      bool newConversation,
      TextEditingController textEditingController,
      ScrollController scrollController,
      RefreshController refreshController});
}

/// @nodoc
class __$$_MessagesStateCopyWithImpl<$Res>
    extends _$MessagesStateCopyWithImpl<$Res, _$_MessagesState>
    implements _$$_MessagesStateCopyWith<$Res> {
  __$$_MessagesStateCopyWithImpl(
      _$_MessagesState _value, $Res Function(_$_MessagesState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversations = null,
    Object? selectedConversation = freezed,
    Object? totalPages = null,
    Object? currentPage = null,
    Object? newConversation = null,
    Object? textEditingController = null,
    Object? scrollController = null,
    Object? refreshController = null,
  }) {
    return _then(_$_MessagesState(
      conversations: null == conversations
          ? _value._conversations
          : conversations // ignore: cast_nullable_to_non_nullable
              as List<Conversation>,
      selectedConversation: freezed == selectedConversation
          ? _value.selectedConversation
          : selectedConversation // ignore: cast_nullable_to_non_nullable
              as Conversation?,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      newConversation: null == newConversation
          ? _value.newConversation
          : newConversation // ignore: cast_nullable_to_non_nullable
              as bool,
      textEditingController: null == textEditingController
          ? _value.textEditingController
          : textEditingController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      scrollController: null == scrollController
          ? _value.scrollController
          : scrollController // ignore: cast_nullable_to_non_nullable
              as ScrollController,
      refreshController: null == refreshController
          ? _value.refreshController
          : refreshController // ignore: cast_nullable_to_non_nullable
              as RefreshController,
    ));
  }
}

/// @nodoc

class _$_MessagesState implements _MessagesState {
  const _$_MessagesState(
      {required final List<Conversation> conversations,
      required this.selectedConversation,
      required this.totalPages,
      required this.currentPage,
      required this.newConversation,
      required this.textEditingController,
      required this.scrollController,
      required this.refreshController})
      : _conversations = conversations;

  final List<Conversation> _conversations;
  @override
  List<Conversation> get conversations {
    if (_conversations is EqualUnmodifiableListView) return _conversations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_conversations);
  }

  @override
  final Conversation? selectedConversation;
  @override
  final int totalPages;
  @override
  final int currentPage;
  @override
  final bool newConversation;
  @override
  final TextEditingController textEditingController;
  @override
  final ScrollController scrollController;
  @override
  final RefreshController refreshController;

  @override
  String toString() {
    return 'MessagesState(conversations: $conversations, selectedConversation: $selectedConversation, totalPages: $totalPages, currentPage: $currentPage, newConversation: $newConversation, textEditingController: $textEditingController, scrollController: $scrollController, refreshController: $refreshController)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MessagesState &&
            const DeepCollectionEquality()
                .equals(other._conversations, _conversations) &&
            (identical(other.selectedConversation, selectedConversation) ||
                other.selectedConversation == selectedConversation) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.newConversation, newConversation) ||
                other.newConversation == newConversation) &&
            (identical(other.textEditingController, textEditingController) ||
                other.textEditingController == textEditingController) &&
            (identical(other.scrollController, scrollController) ||
                other.scrollController == scrollController) &&
            (identical(other.refreshController, refreshController) ||
                other.refreshController == refreshController));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_conversations),
      selectedConversation,
      totalPages,
      currentPage,
      newConversation,
      textEditingController,
      scrollController,
      refreshController);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MessagesStateCopyWith<_$_MessagesState> get copyWith =>
      __$$_MessagesStateCopyWithImpl<_$_MessagesState>(this, _$identity);
}

abstract class _MessagesState implements MessagesState {
  const factory _MessagesState(
      {required final List<Conversation> conversations,
      required final Conversation? selectedConversation,
      required final int totalPages,
      required final int currentPage,
      required final bool newConversation,
      required final TextEditingController textEditingController,
      required final ScrollController scrollController,
      required final RefreshController refreshController}) = _$_MessagesState;

  @override
  List<Conversation> get conversations;
  @override
  Conversation? get selectedConversation;
  @override
  int get totalPages;
  @override
  int get currentPage;
  @override
  bool get newConversation;
  @override
  TextEditingController get textEditingController;
  @override
  ScrollController get scrollController;
  @override
  RefreshController get refreshController;
  @override
  @JsonKey(ignore: true)
  _$$_MessagesStateCopyWith<_$_MessagesState> get copyWith =>
      throw _privateConstructorUsedError;
}
