// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:rentop/application/auth/auth_bloc.dart' as _i10;
import 'package:rentop/application/navigation/navigation_bloc.dart' as _i7;
import 'package:rentop/application/repositories/cars/bloc/cars_bloc.dart'
    as _i11;
import 'package:rentop/application/sign_in/sign_in_bloc.dart' as _i8;
import 'package:rentop/application/sign_up/sign_up_bloc.dart' as _i9;
import 'package:rentop/domain/repositories/i_auth_facade.dart' as _i3;
import 'package:rentop/domain/repositories/i_cars_repository.dart' as _i5;
import 'package:rentop/infrastructure/repositories/auth_facade.dart' as _i4;
import 'package:rentop/infrastructure/repositories/cars_repository.dart' as _i6;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of main-scope dependencies inside of [GetIt]
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
  gh.lazySingleton<_i5.ICarsRepository>(() => _i6.CarsRepository());
  gh.factory<_i7.NavigationBloc>(() => _i7.NavigationBloc());
  gh.factory<_i8.SignInBloc>(() => _i8.SignInBloc(gh<_i3.IAuthFacade>()));
  gh.factory<_i9.SignUpBloc>(() => _i9.SignUpBloc(gh<_i3.IAuthFacade>()));
  gh.factory<_i10.AuthBloc>(() => _i10.AuthBloc(gh<_i3.IAuthFacade>()));
  gh.factory<_i11.CarsBloc>(() => _i11.CarsBloc(gh<_i5.ICarsRepository>()));
  return getIt;
}
