import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rentop/domain/core/api_failure.dart';
import 'package:rentop/domain/repositories/i_profile_repository.dart';
import 'package:rentop/infrastructure/models/profile.dart';

part 'account_details_event.dart';
part 'account_details_state.dart';
part 'account_details_bloc.freezed.dart';

@injectable
class AccountDetailsBloc
    extends Bloc<AccountDetailsEvent, AccountDetailsState> {
  final IProfileRepository _profileRepository;
  AccountDetailsBloc(this._profileRepository)
      : super(AccountDetailsState.initial());

  @override
  Stream<AccountDetailsState> mapEventToState(
    AccountDetailsEvent event,
  ) async* {
    yield* event.map(
      initialAccountDetails: (e) async* {
        state.firstName.text = e.profile.firstName!;
        state.lastName.text = e.profile.lastName!;
        state.displayName.text = e.profile.displayName!;
      },
      clear: (e) async* {
        yield state.copyWith(
          firstName: TextEditingController(),
          lastName: TextEditingController(),
          displayName: TextEditingController(),
          mobilePhone: TextEditingController(),
          isSubmitting: false,
          failureOrSuccessOption: none(),
        );
      },
      btnPressed: (e) async* {
        Either<ApiFailure, Unit>? failureOrSuccess;
        yield state.copyWith(
          isSubmitting: true,
          failureOrSuccessOption: none(),
        );
        failureOrSuccess = await _profileRepository.updateAccountDetails(
          firstName: state.firstName.text,
          lastName: state.lastName.text,
          displayName: state.displayName.text,
        );
        yield state.copyWith(
          isSubmitting: false,
          failureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
