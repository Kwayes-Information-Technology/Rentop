import 'dart:async';

import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rentop/application/splash/splash_bloc.dart';
import 'package:rentop/infrastructure/core/assets.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: BlocListener<SplashBloc, SplashState>(
        listener: (context, state) {
          if (state is ReturnUser) {
            Timer(
              const Duration(seconds: 5),
              () => Navigator.pushNamed(context, '/Home'),
            );
          } else {
            context
                .read<SplashBloc>()
                .add(const SplashEvent.assignUserAsReturnUser());
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
