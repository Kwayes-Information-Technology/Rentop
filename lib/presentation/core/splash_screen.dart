import 'dart:async';

import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rentop/application/auth/auth_bloc.dart';
import 'package:rentop/infrastructure/core/assets.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is Authenticated) {
            Timer(
              const Duration(seconds: 5),
              () => Navigator.pushNamed(context, '/Home'),
            );
          } else {
            Timer(
              const Duration(seconds: 5),
              () => Navigator.pushNamed(context, '/Onboarding'),
            );
          }
        },
        child: FadedScaleAnimation(
          child: Center(
            child: SizedBox(
              height: 200,
              width: 200,
              child: Image.asset(
                Assets.logo,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
