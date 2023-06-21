import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rentop/domain/core/api_failure.dart';
import 'package:rentop/domain/repositories/i_profile_repository.dart';

part 'delete_account_event.dart';
part 'delete_account_state.dart';
part 'delete_account_bloc.freezed.dart';

@injectable
class DeleteAccountBloc extends Bloc<DeleteAccountEvent, DeleteAccountState> {
  final IProfileRepository _profileRepository;
  DeleteAccountBloc(this._profileRepository)
      : super(DeleteAccountState.initial());

  @override
  Stream<DeleteAccountState> mapEventToState(
    DeleteAccountEvent event,
  ) async* {
    yield* event.map(
      reasonChanged: (e) async* {
        yield state.copyWith(reason: e.reason);
      },
      btnPressed: (e) async* {
        Either<ApiFailure, Unit>? failureOrSuccess;
        final isReasonValid = state.reason.isNotEmpty;
        if (isReasonValid) {
          yield state.copyWith(
            isSubmitting: true,
            failureOrSuccessOption: none(),
          );

          failureOrSuccess =
              await _profileRepository.deleteMyAccount(reason: state.reason);
        }
        yield state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          failureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      clear: (e) async* {
        yield state.copyWith(
          reason: "",
          showErrorMessages: false,
          isSubmitting: false,
          failureOrSuccessOption: none(),
        );
      },
    );
  }
}
