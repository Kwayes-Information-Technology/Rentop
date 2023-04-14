import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rentop/domain/core/api_failure.dart';
import 'package:rentop/domain/repositories/i_profile_repository.dart';
import 'package:rentop/infrastructure/models/shipping.dart';

part 'shipping_address_event.dart';
part 'shipping_address_state.dart';
part 'shipping_address_bloc.freezed.dart';

@injectable
class ShippingAddressBloc
    extends Bloc<ShippingAddressEvent, ShippingAddressState> {
  final IProfileRepository _profileRepository;
  ShippingAddressBloc(this._profileRepository)
      : super(ShippingAddressState.initial());

  @override
  Stream<ShippingAddressState> mapEventToState(
    ShippingAddressEvent event,
  ) async* {
    yield* event.map(
      initialShippingAddress: (e) async* {
        state.firstName.text = e.shippingInfo.firstName!;
        state.lastName.text = e.shippingInfo.lastName!;
        state.companyName.text = e.shippingInfo.company!;
        state.address1.text = e.shippingInfo.address1!;
        state.address2.text = e.shippingInfo.address2!;
        state.postcode.text = e.shippingInfo.postcode!;
        state.city.text = e.shippingInfo.city!;
        state.state.text = e.shippingInfo.state!;
        if (e.shippingInfo.country != null &&
            e.shippingInfo.country!.isNotEmpty) {
          yield state.copyWith(
            country: e.shippingInfo.country!,
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
        failureOrSuccess = await _profileRepository.updateShippingInfo(
          firstName: state.firstName.text,
          lastName: state.lastName.text,
          companyName: state.companyName.text,
          country: state.country,
          address1: state.address1.text,
          address2: state.address2.text,
          city: state.city.text,
          state: state.state.text,
          postcode: state.postcode.text,
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
