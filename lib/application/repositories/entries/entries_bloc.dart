import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:rentop/domain/repositories/i_entries_facade.dart';
import 'package:rentop/infrastructure/models/entry.dart';

part 'entries_event.dart';
part 'entries_state.dart';
part 'entries_bloc.freezed.dart';

@injectable
class EntriesBloc extends Bloc<EntriesEvent, EntriesState> {
  final IEntriesRepository _entriesRepository;

  EntriesBloc(this._entriesRepository) : super(EntriesState.initial());

  @override
  Stream<EntriesState> mapEventToState(
    EntriesEvent event,
  ) async* {
    yield* event.map(
      fetchEntriesData: (e) async* {
        final entries = await _entriesRepository.getEntries();
        yield entries.fold(
          () {
            state.refreshController.loadFailed();
            return state.copyWith(
              entries: [],
            );
          },
          (data) {
            state.refreshController.loadComplete();
            return state.copyWith(
              entries: data,
            );
          },
        );
      },
      refreshData: (e) async* {
        yield state.copyWith(entries: []);
        final entries = await _entriesRepository.getEntries();
        yield entries.fold(
          () {
            state.refreshController.refreshFailed();
            return state.copyWith(
              entries: [],
            );
          },
          (data) {
            state.refreshController.refreshCompleted();
            return state.copyWith(
              entries: data,
            );
          },
        );
      },
    );
  }
}
