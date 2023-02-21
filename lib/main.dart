import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';
import 'package:rentop/application/auth/auth_bloc.dart';
import 'package:rentop/application/navigation/navigation_bloc.dart';
import 'package:rentop/application/repositories/car_fees/car_fees_bloc.dart';
import 'package:rentop/application/repositories/cars/cars_bloc.dart';
import 'package:rentop/application/repositories/favourites/favourites_bloc.dart';
import 'package:rentop/application/repositories/listings/listings_bloc.dart';
import 'package:rentop/application/repositories/profile/profile_bloc.dart';
import 'package:rentop/application/reset_password/reset_password_bloc.dart';
import 'package:rentop/application/sign_in/sign_in_bloc.dart';
import 'package:rentop/application/sign_up/sign_up_bloc.dart';
import 'package:rentop/injection.dart';
import 'package:rentop/presentation/core/app_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load();
  configureInjection(Environment.prod);
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<SignInBloc>()),
        BlocProvider(create: (context) => getIt<SignUpBloc>()),
        BlocProvider(
          create: (_) => getIt<AuthBloc>()
            ..add(
              const AuthEvent.authCheckRequested(),
            ),
        ),
        BlocProvider(create: (context) => getIt<NavigationBloc>()),
        BlocProvider(
          create: (context) => getIt<CarsBloc>()
            ..add(
              const CarsEvent.fetchTopCarsData(),
            ),
        ),
        BlocProvider(create: (_) => getIt<ResetPasswordBloc>()),
        BlocProvider(
          create: (_) => getIt<ListingsBloc>()
            ..add(const ListingsEvent.fetchListingsData()),
        ),
        BlocProvider(
          create: (_) => getIt<CarFeesBloc>()
            ..add(
              const CarFeesEvent.fetchCarFessData(),
            ),
        ),
        BlocProvider(
          create: (_) => getIt<ProfileBloc>()
            ..add(
              const ProfileEvent.fetchProfileData(),
            ),
        ),
        BlocProvider(
          create: (_) => getIt<FavouritesBloc>(),
        ),
      ],
      child: const AppWidget(),
    ),
  );
}
