import 'package:flutter/material.dart';
import 'package:rentop/infrastructure/style/style.dart';
import 'package:rentop/presentation/carDetails/car_details_screen.dart';
import 'package:rentop/presentation/contact/contact_screen.dart';
import 'package:rentop/presentation/core/app_screen.dart';
import 'package:rentop/presentation/core/splash_screen.dart';
import 'package:rentop/presentation/explore/screens/filter_screen/filter_screen.dart';
import 'package:rentop/presentation/faq/faq_screen.dart';
import 'package:rentop/presentation/forgetPassword/forget_password_screen.dart';
import 'package:rentop/presentation/forgetPassword/screens/reset_password_screen.dart';
import 'package:rentop/presentation/forgetPassword/screens/validate_reset_code_screen.dart';
import 'package:rentop/presentation/onboarding/onboarding_screen.dart';
import 'package:rentop/presentation/signin/signin_screen.dart';
import 'package:rentop/presentation/signup/signup_screen.dart';
import 'package:rentop/presentation/welcome/welcome_screen.dart';

Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  '/Onboarding': (BuildContext context) => const OnboardingScreen(),
  '/Welcome': (BuildContext context) => const WelcomeScreen(),
  '/SignIn': (BuildContext context) => const SignInScreen(),
  '/SignUp': (BuildContext context) => const SignUpScreen(),
  '/ForgetPassword': (BuildContext context) => const ForgetPasswordScreen(),
  '/ValidateResetCode': (BuildContext context) =>
      const ValidateResetCodeScreen(),
  '/ResetPasswordScreen': (BuildContext context) => const ResetPasswordScreen(),
  '/Home': (BuildContext context) => const AppScreen(),
  '/FAQ': (BuildContext context) => const FAQScreen(),
  '/CarDetails': (BuildContext context) => const CarDetailsScreen(),
  '/Contact': (BuildContext context) => const ContactScreen(),
  '/Filter': (BuildContext context) => const FilterScreen(),
};

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      theme: rentopTheme(),
      locale: const Locale('en', "US"),
      routes: routes,
    );
  }
}
