part of 'entries_bloc.dart';

@freezed
class EntriesEvent with _$EntriesEvent {
  const factory EntriesEvent.fetchEntriesData() = FetchEntriesData;
  const factory EntriesEvent.refreshData() = RefreshData;
}
