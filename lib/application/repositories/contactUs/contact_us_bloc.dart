import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rentop/domain/core/api_failure.dart';
import 'package:rentop/domain/core/value_objects.dart';
import 'package:rentop/domain/repositories/i_contact_repository.dart';

part 'contact_us_event.dart';
part 'contact_us_state.dart';
part 'contact_us_bloc.freezed.dart';

@injectable
class ContactUsBloc extends Bloc<ContactUsEvent, ContactUsState> {
  final IContactRepository _contactRepository;
  ContactUsBloc(this._contactRepository) : super(ContactUsState.initial());

  @override
  Stream<ContactUsState> mapEventToState(
    ContactUsEvent event,
  ) async* {
    yield* event.map(
      firstNameChanged: (e) async* {
        yield state.copyWith(
          firstName: FirstName(e.firstName),
        );
      },
      lastNameChanged: (e) async* {
        yield state.copyWith(
          lastName: LastName(e.lastName),
        );
      },
      emailAddressChanged: (e) async* {
        yield state.copyWith(
          email: EmailAddress(e.email),
        );
      },
      phoneNumberChanged: (e) async* {
        yield state.copyWith(
          phone: PhoneNumber(e.phone),
        );
      },
      messageChanged: (e) async* {
        yield state.copyWith(
          message: e.message,
        );
      },
      btnPressed: (e) async* {
        Either<ApiFailure, Unit>? failureOrSuccess;
        final isFirstNameValid = state.firstName.isValid();
        final isLastNameValud = state.lastName.isValid();
        final isEmailValid = state.email.isValid();
        final isPhoneNumberValid = state.phone.isValid();
        final isMessageValid = state.message.isNotEmpty;
        if (isMessageValid &&
            isEmailValid &&
            isFirstNameValid &&
            isLastNameValud &&
            isPhoneNumberValid) {
          yield state.copyWith(
            isSubmitting: true,
            failureOrSuccessOption: none(),
          );
          failureOrSuccess = await _contactRepository.sendContactForm(
            firstName: state.firstName,
            lastName: state.lastName,
            email: state.email,
            phone: state.phone,
            message: state.message,
          );
        }
        yield state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          failureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      clear: (e) async* {
        yield state.copyWith(
          firstName: FirstName(""),
          lastName: LastName(""),
          email: EmailAddress(""),
          phone: PhoneNumber(""),
          message: "",
          showErrorMessages: false,
          isSubmitting: false,
          failureOrSuccessOption: none(),
        );
      },
    );
  }
}
