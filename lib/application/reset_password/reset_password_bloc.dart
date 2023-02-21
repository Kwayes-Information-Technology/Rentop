import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rentop/domain/core/reset_password_api_failure.dart';
import 'package:rentop/domain/core/value_objects.dart';
import 'package:rentop/domain/repositories/i_auth_facade.dart';

part 'reset_password_event.dart';
part 'reset_password_state.dart';
part 'reset_password_bloc.freezed.dart';

@injectable
class ResetPasswordBloc extends Bloc<ResetPasswordEvent, ResetPasswordState> {
  final IAuthFacade _authFacade;
  ResetPasswordBloc(this._authFacade) : super(ResetPasswordState.initial());

  @override
  Stream<ResetPasswordState> mapEventToState(ResetPasswordEvent event) async* {
    yield* event.map(
      emailAddressChanged: (e) async* {
        yield state.copyWith(
          emailAddress: EmailAddress(e.email),
        );
      },
      sendResetCode: (e) async* {
        Either<ResetPasswordApiFailure, Unit>? failureOrSuccess;
        final isEmailAddressValid = state.emailAddress.isValid();

        if (isEmailAddressValid) {
          yield state.copyWith(
            isSubmitting: true,
            codeSentFailureOrSuccessOption: none(),
          );

          failureOrSuccess = await _authFacade.sendResetCode(
            emailAddress: state.emailAddress,
          );
        }

        yield state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          codeSentFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      passwordChanged: (e) async* {
        yield state.copyWith(
          password: Password(e.password),
        );
      },
      resetPassword: (e) async* {
        Either<ResetPasswordApiFailure, Unit>? failureOrSuccess;
        final isEmailAddressValid = state.emailAddress.isValid();
        final isCodeValid = state.code.isValid();
        final isPasswordValid = state.password.isValid();

        if (isEmailAddressValid && isCodeValid && isPasswordValid) {
          yield state.copyWith(
            isSubmitting: true,
            passwordResetFailureOrSuccessOption: none(),
          );

          failureOrSuccess = await _authFacade.resetPassword(
            emailAddress: state.emailAddress,
            code: state.code,
            password: state.password,
          );
        }

        yield state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          passwordResetFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      resetCodeChanged: (e) async* {
        yield state.copyWith(
          code: ResetCode(e.code),
        );
      },
      validateResetCode: (e) async* {
        Either<ResetPasswordApiFailure, Unit>? failureOrSuccess;
        final isEmailAddressValid = state.emailAddress.isValid();
        final isCodeValid = state.code.isValid();

        if (isEmailAddressValid && isCodeValid) {
          yield state.copyWith(
            isSubmitting: true,
            validateCodeFailureOrSuccessOption: none(),
          );

          failureOrSuccess = await _authFacade.validateResetCode(
            emailAddress: state.emailAddress,
            code: state.code,
          );
        }

        yield state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          validateCodeFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
