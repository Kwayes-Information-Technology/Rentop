import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rentop/infrastructure/style/style.dart';
import 'package:rentop/presentation/error/error_screen.dart';
import 'package:rentop/presentation/forgetPassword/forget_password_screen.dart';
import 'package:rentop/presentation/home/home_screen.dart';
import 'package:rentop/presentation/signin/signin_screen.dart';
import 'package:rentop/presentation/signup/signup_screen.dart';
import 'package:rentop/presentation/splash/splash_screen.dart';
import 'package:rentop/presentation/welcome/welcome_screen.dart';

final GoRouter router = GoRouter(
  errorBuilder: (context, state) => const ErrorScreen(),
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
      name: 'home',
      path: '/home',
      builder: (context, state) => const HomeScreen(),
    ),
  ],
);

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
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
