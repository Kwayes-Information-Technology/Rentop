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
  SignUpBloc(this._authFacade) : super(SignUpState.intial()) {
    on<EmailAddressChanged>(emailAddressChanged);
    on<PasswordChanged>(passwordChanged);
    on<FirstNameChanged>(firstNameChanged);
    on<LastNameChanged>(lastNameChanged);
    on<PhoneNumberChanged>(phoneNumberChanged);
    on<UsernameChanged>(usernameChanged);
    on<BtnPressed>(btnPressed);
  }

  void emailAddressChanged(
      EmailAddressChanged event, Emitter<SignUpState> emit) {
    emit(state.copyWith(
      emailAddress: EmailAddress(event.email),
    ));
  }

  void passwordChanged(PasswordChanged event, Emitter<SignUpState> emit) {
    emit(state.copyWith(password: Password(event.password)));
  }

  void firstNameChanged(FirstNameChanged event, Emitter<SignUpState> emit) {
    emit(state.copyWith(firstName: FirstName(event.firstName)));
  }

  void lastNameChanged(LastNameChanged event, Emitter<SignUpState> emit) {
    emit(state.copyWith(lastName: LastName(event.lastName)));
  }

  void phoneNumberChanged(PhoneNumberChanged event, Emitter<SignUpState> emit) {
    emit(state.copyWith(phoneNumber: PhoneNumber(event.phone)));
  }

  void usernameChanged(UsernameChanged event, Emitter<SignUpState> emit) {
    emit(state.copyWith(username: Username(event.username)));
  }

  Stream<SignUpState> btnPressed(
    BtnPressed event,
    Emitter<SignUpState> emit,
  ) async* {
    Either<ApiFailure, Unit>? failureOrSuccess;
    final isEmailAddressValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();
    final isPhoneNumberValid = state.phoneNumber.isValid();
    final isFistNameValid = state.firstName.isValid();
    final isLastNameValid = state.lastName.isValid();
    final isUsernameValid = state.username.isValid();

    if (isEmailAddressValid &&
        isFistNameValid &&
        isPhoneNumberValid &&
        isLastNameValid &&
        isPasswordValid &&
        isUsernameValid) {
      emit(
        state.copyWith(
          isSubmitting: true,
          authFailureOrSuccessOption: none(),
        ),
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

    emit(state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      authFailureOrSuccessOption: optionOf(failureOrSuccess),
    ));
  }
}
