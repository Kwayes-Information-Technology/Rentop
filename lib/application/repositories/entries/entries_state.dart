part of 'entries_bloc.dart';

@freezed
abstract class EntriesState with _$EntriesState {
  const factory EntriesState({
    required List<Entry> entries,
    required RefreshController refreshController,
  }) = _EntriesState;

  factory EntriesState.initial() => EntriesState(
        entries: [],
        refreshController: RefreshController(initialRefresh: true),
      );
}
