import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rentop/domain/core/api_failure.dart';
import 'package:rentop/domain/core/value_objects.dart';
import 'package:rentop/domain/repositories/i_auth_facade.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';
part 'sign_up_bloc.freezed.dart';

@injectable
class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final IAuthFacade _authFacade;
  SignUpBloc(this._authFacade) : super(SignUpState.intial());

  @override
  Stream<SignUpState> mapEventToState(SignUpEvent event) async* {
    yield* event.map(
      emailAddressChanged: (e) async* {
        yield state.copyWith(
          emailAddress: EmailAddress(e.email),
        );
      },
      passwordChanged: (e) async* {
        yield state.copyWith(
          password: Password(e.password),
          repeatPassword: RepeatPassword(
            e.password,
            state.repeatPassword.value.getOrElse(() => ''),
          ),
        );
      },
      repeatPasswordChanged: (e) async* {
        yield state.copyWith(
          repeatPassword: RepeatPassword(
            state.password.value.getOrElse(() => ''),
            e.password,
          ),
        );
      },
      phoneNumberChanged: (e) async* {
        yield state.copyWith(
          phoneNumber: PhoneNumber(e.phone),
        );
      },
      firstNameChagned: (e) async* {
        yield state.copyWith(
          firstName: FirstName(e.firstName),
        );
      },
      lastNameChanged: (e) async* {
        yield state.copyWith(
          lastName: LastName(e.lastName),
        );
      },
      usernameChanged: (e) async* {
        yield state.copyWith(
          username: Username(e.username),
        );
      },
      termsAndConditionsChanged: (e) async* {
        yield state.copyWith(
          termsAndConditions: e.check,
        );
      },
      btnPressed: (e) async* {
        Either<ApiFailure, Unit>? failureOrSuccess;
        final isEmailAddressValid = state.emailAddress.isValid();
        final isPasswordValid = state.password.isValid();
        final isRepeatPasswordValid = state.repeatPassword.isValid();
        final isPhoneNumberValid = state.phoneNumber.isValid();
        final isFistNameValid = state.firstName.isValid();
        final isLastNameValid = state.lastName.isValid();
        final isUsernameValid = state.username.isValid();
        final isTermsAndConditionsValid = state.termsAndConditions == true;

        if (isEmailAddressValid &&
            isFistNameValid &&
            isPhoneNumberValid &&
            isLastNameValid &&
            isPasswordValid &&
            isRepeatPasswordValid &&
            isUsernameValid &&
            isTermsAndConditionsValid) {
          yield state.copyWith(
            isSubmitting: true,
            authFailureOrSuccessOption: none(),
          );

          failureOrSuccess = await _authFacade.signUpWithEmailAndPassword(
            emailAddress: state.emailAddress,
            password: state.password,
            phoneNumber: state.phoneNumber,
            firstName: state.firstName,
            lastName: state.lastName,
            username: state.username,
          );
        }

        yield state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          authFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
