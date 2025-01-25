import 'package:flutter/material.dart';

class NoWeatherBody extends StatelessWidget {
  const NoWeatherBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
          child: Text(
            textAlign: TextAlign.center,
            "There is no weather 😧 start searching now 🔎 ",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
          ),
        );
  }
}