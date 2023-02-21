// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:rentop/application/auth/auth_bloc.dart' as _i21;
import 'package:rentop/application/navigation/navigation_bloc.dart' as _i16;
import 'package:rentop/application/repositories/car_fees/car_fees_bloc.dart'
    as _i22;
import 'package:rentop/application/repositories/cars/cars_bloc.dart' as _i23;
import 'package:rentop/application/repositories/favourites/favourites_bloc.dart'
    as _i24;
import 'package:rentop/application/repositories/listings/listings_bloc.dart'
    as _i15;
import 'package:rentop/application/repositories/profile/profile_bloc.dart'
    as _i17;
import 'package:rentop/application/reset_password/reset_password_bloc.dart'
    as _i18;
import 'package:rentop/application/sign_in/sign_in_bloc.dart' as _i19;
import 'package:rentop/application/sign_up/sign_up_bloc.dart' as _i20;
import 'package:rentop/domain/repositories/i_auth_facade.dart' as _i3;
import 'package:rentop/domain/repositories/i_car_fees_repository.dart' as _i5;
import 'package:rentop/domain/repositories/i_cars_repository.dart' as _i7;
import 'package:rentop/domain/repositories/i_favourites_repository.dart' as _i9;
import 'package:rentop/domain/repositories/i_listings_facade.dart' as _i11;
import 'package:rentop/domain/repositories/i_profile_repository.dart' as _i13;
import 'package:rentop/infrastructure/repositories/auth_facade.dart' as _i4;
import 'package:rentop/infrastructure/repositories/car_fees_repository.dart'
    as _i6;
import 'package:rentop/infrastructure/repositories/cars_repository.dart' as _i8;
import 'package:rentop/infrastructure/repositories/favourites_repository.dart'
    as _i10;
import 'package:rentop/infrastructure/repositories/listings_repository.dart'
    as _i12;
import 'package:rentop/infrastructure/repositories/profile_repository.dart'
    as _i14;

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.lazySingleton<_i3.IAuthFacade>(() => _i4.AuthFacade());
  gh.lazySingleton<_i5.ICarFeesRepository>(() => _i6.CarFeesRepository());
  gh.lazySingleton<_i7.ICarsRepository>(() => _i8.CarsRepository());
  gh.lazySingleton<_i9.IFavouritesRepository>(
      () => _i10.FavouritesRepository());
  gh.lazySingleton<_i11.IListingsRepository>(() => _i12.ListingsRepository());
  gh.lazySingleton<_i13.IProfileRepository>(() => _i14.ProfileRepository());
  gh.factory<_i15.ListingsBloc>(
      () => _i15.ListingsBloc(gh<_i11.IListingsRepository>()));
  gh.factory<_i16.NavigationBloc>(() => _i16.NavigationBloc());
  gh.factory<_i17.ProfileBloc>(
      () => _i17.ProfileBloc(gh<_i13.IProfileRepository>()));
  gh.factory<_i18.ResetPasswordBloc>(
      () => _i18.ResetPasswordBloc(gh<_i3.IAuthFacade>()));
  gh.factory<_i19.SignInBloc>(() => _i19.SignInBloc(gh<_i3.IAuthFacade>()));
  gh.factory<_i20.SignUpBloc>(() => _i20.SignUpBloc(gh<_i3.IAuthFacade>()));
  gh.factory<_i21.AuthBloc>(() => _i21.AuthBloc(gh<_i3.IAuthFacade>()));
  gh.factory<_i22.CarFeesBloc>(
      () => _i22.CarFeesBloc(gh<_i5.ICarFeesRepository>()));
  gh.factory<_i23.CarsBloc>(() => _i23.CarsBloc(gh<_i7.ICarsRepository>()));
  gh.factory<_i24.FavouritesBloc>(
      () => _i24.FavouritesBloc(gh<_i9.IFavouritesRepository>()));
  return getIt;
}
