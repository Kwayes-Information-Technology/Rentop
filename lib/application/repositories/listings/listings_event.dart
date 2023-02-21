part of 'listings_bloc.dart';

@freezed
class ListingsEvent with _$ListingsEvent {
  const factory ListingsEvent.fetchListingsData() = FetchListingsData;
}
