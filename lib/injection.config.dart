// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:rentop/application/auth/auth_bloc.dart' as _i27;
import 'package:rentop/application/navigation/navigation_bloc.dart' as _i19;
import 'package:rentop/application/repositories/accountDetails/account_details_bloc.dart'
    as _i26;
import 'package:rentop/application/repositories/billingAddress/billing_address_bloc.dart'
    as _i28;
import 'package:rentop/application/repositories/cars/cars_bloc.dart' as _i29;
import 'package:rentop/application/repositories/checkout/checkout_bloc.dart'
    as _i30;
import 'package:rentop/application/repositories/entries/entries_bloc.dart'
    as _i31;
import 'package:rentop/application/repositories/entryCheckout/entry_checkout_bloc.dart'
    as _i32;
import 'package:rentop/application/repositories/favourites/favourites_bloc.dart'
    as _i33;
import 'package:rentop/application/repositories/listings/listings_bloc.dart'
    as _i17;
import 'package:rentop/application/repositories/messages/messages_bloc.dart'
    as _i18;
import 'package:rentop/application/repositories/profile/profile_bloc.dart'
    as _i20;
import 'package:rentop/application/repositories/shippingAddress/shipping_address_bloc.dart'
    as _i23;
import 'package:rentop/application/reset_password/reset_password_bloc.dart'
    as _i21;
import 'package:rentop/application/sign_in/sign_in_bloc.dart' as _i24;
import 'package:rentop/application/sign_up/sign_up_bloc.dart' as _i25;
import 'package:rentop/application/splash/splash_bloc.dart' as _i36;
import 'package:rentop/domain/repositories/i_auth_facade.dart' as _i3;
import 'package:rentop/domain/repositories/i_cars_repository.dart' as _i5;
import 'package:rentop/domain/repositories/i_entries_facade.dart' as _i7;
import 'package:rentop/domain/repositories/i_listings_facade.dart' as _i9;
import 'package:rentop/domain/repositories/i_messages_repository.dart' as _i11;
import 'package:rentop/domain/repositories/i_orders_repository.dart' as _i13;
import 'package:rentop/domain/repositories/i_profile_repository.dart' as _i15;
import 'package:rentop/domain/repositories/i_splash_facade.dart' as _i34;
import 'package:rentop/infrastructure/core/injectable_modules.dart' as _i37;
import 'package:rentop/infrastructure/repositories/auth_facade.dart' as _i4;
import 'package:rentop/infrastructure/repositories/cars_repository.dart' as _i6;
import 'package:rentop/infrastructure/repositories/entries_repository.dart'
    as _i8;
import 'package:rentop/infrastructure/repositories/listings_repository.dart'
    as _i10;
import 'package:rentop/infrastructure/repositories/messages_repository.dart'
    as _i12;
import 'package:rentop/infrastructure/repositories/orders_repository.dart'
    as _i14;
import 'package:rentop/infrastructure/repositories/profile_repository.dart'
    as _i16;
import 'package:rentop/infrastructure/repositories/splash_facade.dart' as _i35;
import 'package:shared_preferences/shared_preferences.dart' as _i22;

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// initializes the registration of main-scope dependencies inside of GetIt
Future<_i1.GetIt> init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final injectableModules = _$InjectableModules();
  gh.lazySingleton<_i3.IAuthFacade>(() => _i4.AuthFacade());
  gh.lazySingleton<_i5.ICarsRepository>(() => _i6.CarsRepository());
  gh.lazySingleton<_i7.IEntriesRepository>(() => _i8.EntriesRepository());
  gh.lazySingleton<_i9.IListingsRepository>(() => _i10.ListingsRepository());
  gh.lazySingleton<_i11.IMessagesRepository>(() => _i12.MessagesRepository());
  gh.lazySingleton<_i13.IOrdersRepository>(() => _i14.OrdersRepository());
  gh.lazySingleton<_i15.IProfileRepository>(() => _i16.ProfileRepository());
  gh.factory<_i17.ListingsBloc>(
      () => _i17.ListingsBloc(gh<_i9.IListingsRepository>()));
  gh.factory<_i18.MessagesBloc>(
      () => _i18.MessagesBloc(gh<_i11.IMessagesRepository>()));
  gh.factory<_i19.NavigationBloc>(() => _i19.NavigationBloc());
  gh.factory<_i20.ProfileBloc>(
      () => _i20.ProfileBloc(gh<_i15.IProfileRepository>()));
  gh.factory<_i21.ResetPasswordBloc>(
      () => _i21.ResetPasswordBloc(gh<_i3.IAuthFacade>()));
  await gh.factoryAsync<_i22.SharedPreferences>(
    () => injectableModules.sharedPreferences,
    preResolve: true,
  );
  gh.factory<_i23.ShippingAddressBloc>(
      () => _i23.ShippingAddressBloc(gh<_i15.IProfileRepository>()));
  gh.factory<_i24.SignInBloc>(() => _i24.SignInBloc(gh<_i3.IAuthFacade>()));
  gh.factory<_i25.SignUpBloc>(() => _i25.SignUpBloc(gh<_i3.IAuthFacade>()));
  gh.factory<_i26.AccountDetailsBloc>(
      () => _i26.AccountDetailsBloc(gh<_i15.IProfileRepository>()));
  gh.factory<_i27.AuthBloc>(() => _i27.AuthBloc(gh<_i3.IAuthFacade>()));
  gh.factory<_i28.BillingAddressBloc>(
      () => _i28.BillingAddressBloc(gh<_i15.IProfileRepository>()));
  gh.factory<_i29.CarsBloc>(() => _i29.CarsBloc(gh<_i5.ICarsRepository>()));
  gh.factory<_i30.CheckoutBloc>(
      () => _i30.CheckoutBloc(gh<_i13.IOrdersRepository>()));
  gh.factory<_i31.EntriesBloc>(
      () => _i31.EntriesBloc(gh<_i7.IEntriesRepository>()));
  gh.factory<_i32.EntryCheckoutBloc>(
      () => _i32.EntryCheckoutBloc(gh<_i13.IOrdersRepository>()));
  gh.factory<_i33.FavouritesBloc>(
      () => _i33.FavouritesBloc(gh<_i15.IProfileRepository>()));
  gh.lazySingleton<_i34.ISplashFacade>(
      () => _i35.SplashFacade(gh<_i22.SharedPreferences>()));
  gh.factory<_i36.SplashBloc>(() => _i36.SplashBloc(gh<_i34.ISplashFacade>()));
  return getIt;
}

class _$InjectableModules extends _i37.InjectableModules {}
