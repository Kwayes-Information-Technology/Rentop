import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:rentop/application/auth/auth_bloc.dart';
import 'package:rentop/application/sign_in/sign_in_bloc.dart';
import 'package:rentop/application/sign_up/sign_up_bloc.dart';
import 'package:rentop/infrastructure/core/goRouterRefreshStream.dart';
import 'package:rentop/infrastructure/style/style.dart';
import 'package:rentop/injection.dart';
import 'package:rentop/presentation/error/error_screen.dart';
import 'package:rentop/presentation/forgetPassword/forget_password_screen.dart';
import 'package:rentop/presentation/home/home_screen.dart';
import 'package:rentop/presentation/signin/signin_screen.dart';
import 'package:rentop/presentation/signup/signup_screen.dart';
import 'package:rentop/presentation/splash/splash_screen.dart';
import 'package:rentop/presentation/welcome/welcome_screen.dart';

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
      ],
      child: const AppWidget(),
    ),
  );
}

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final authBloc = context.read<AuthBloc>();
    final GoRouter router = GoRouter(
      errorBuilder: (context, state) => const ErrorScreen(),
      refreshListenable: GoRouterRefreshStream(authBloc.stream),
      redirect: (context, state) {
        final loggedIn = authBloc.state == const AuthState.authenticated();
        final splash = state.subloc == '/';
        final welcome = state.subloc == '/welcome';
        final loggingIn = state.subloc == '/sign_in';
        final forgettingPasswordIn = state.subloc == '/forgetPassword';
        final signUpIn = state.subloc == '/sign_up';

        if (!loggedIn) {
          if (loggingIn) {
            return null;
          } else {
            if (forgettingPasswordIn || signUpIn || splash || welcome) {
              return null;
            } else {
              return '/';
            }
          }
        }

        if (loggingIn ||
            forgettingPasswordIn ||
            signUpIn ||
            splash ||
            welcome) {
          return '/home';
        }

        return null;
      },
      routes: <GoRoute>[
        GoRoute(
          name: 'splash',
          path: '/',
          builder: (context, state) => const SplashScreen(),
        ),
        GoRoute(
          name: "welcome",
          path: "/welcome",
          builder: (context, state) => const WelcomeScreen(),
        ),
        GoRoute(
          name: "SignUp",
          path: '/sign_up',
          builder: (context, state) => const SignUpScreen(),
        ),
        GoRoute(
          name: 'SignIn',
          path: '/sign_in',
          builder: (context, state) => const SignInScreen(),
        ),
        GoRoute(
          name: "ForgetPassword",
          path: "/forgetPassword",
          builder: (context, state) => const ForgetPasswordScreen(),
        ),
        GoRoute(
          name: 'Home',
          path: '/home',
          builder: (context, state) => const HomeScreen(),
        ),
      ],
    );
    return MaterialApp.router(
      routeInformationProvider: router.routeInformationProvider,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      debugShowCheckedModeBanner: false,
      theme: rentopTheme(),
      locale: const Locale('en', "US"),
    );
  }
}
