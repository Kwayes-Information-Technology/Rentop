import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rentop/domain/core/api_failure.dart';
import 'package:rentop/domain/repositories/i_profile_repository.dart';
import 'package:rentop/infrastructure/models/billing.dart';

part 'billing_address_event.dart';
part 'billing_address_state.dart';
part 'billing_address_bloc.freezed.dart';

@injectable
class BillingAddressBloc
    extends Bloc<BillingAddressEvent, BillingAddressState> {
  final IProfileRepository _profileRepository;
  BillingAddressBloc(this._profileRepository)
      : super(BillingAddressState.initial());

  @override
  Stream<BillingAddressState> mapEventToState(
    BillingAddressEvent event,
  ) async* {
    yield* event.map(
      initialBillingAddress: (e) async* {
        state.firstName.text = e.billingInfo.firstName!;
        state.lastName.text = e.billingInfo.lastName!;
        state.companyName.text = e.billingInfo.company!;
        state.address1.text = e.billingInfo.address1!;
        state.address2.text = e.billingInfo.address2!;
        state.postcode.text = e.billingInfo.postcode!;
        state.email.text = e.billingInfo.email!;
        state.phoneNumber.text = e.billingInfo.phone!;
        state.city.text = e.billingInfo.city!;
        state.state.text = e.billingInfo.state!;
        if (e.billingInfo.country != null &&
            e.billingInfo.country!.isNotEmpty) {
          yield state.copyWith(
            country: e.billingInfo.country!,
          );
        }
      },
      clear: (e) async* {
        yield state.copyWith(
          firstName: TextEditingController(),
          lastName: TextEditingController(),
          companyName: TextEditingController(),
          country: '',
          address1: TextEditingController(),
          address2: TextEditingController(),
          city: TextEditingController(),
          state: TextEditingController(),
          postcode: TextEditingController(),
          email: TextEditingController(),
          phoneNumber: TextEditingController(),
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
        failureOrSuccess = await _profileRepository.updateBillingInfo(
          firstName: state.firstName.text,
          lastName: state.lastName.text,
          companyName: state.companyName.text,
          country: state.country,
          address1: state.address1.text,
          address2: state.address2.text,
          city: state.city.text,
          state: state.state.text,
          postcode: state.postcode.text,
          email: state.email.text,
          phoneNumber: state.phoneNumber.text,
        );
        yield state.copyWith(
          isSubmitting: false,
          failureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      countryChanged: (e) async* {
        yield state.copyWith(
          country: e.country,
        );
      },
    );
  }
}
