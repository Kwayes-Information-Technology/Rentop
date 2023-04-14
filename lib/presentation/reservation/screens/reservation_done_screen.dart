import 'dart:async';

import 'package:flutter/material.dart';

class ReservationDoneScreen extends StatelessWidget {
  const ReservationDoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final messageTxt = ModalRoute.of(context)!.settings.arguments! as String;
    Timer(
      const Duration(seconds: 10),
      () => Navigator.pushNamedAndRemoveUntil(
          context, '/Home', (Route<dynamic> route) => false),
    );
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.check_circle,
                color: Colors.green,
                size: 75,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Thank you !",
                style: Theme.of(context).textTheme.headline1!.copyWith(
                      color: Colors.green,
                    ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(messageTxt,
                  style: Theme.of(context)
                      .textTheme
                      .headline1!
                      .copyWith(color: Colors.green, fontSize: 20),
                  textAlign: TextAlign.center)
            ],
          ),
        ),
      ),
    );
  }
}
