import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:weather/feature/home_screen/ui/widget/builder_weather_response.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent,
          title: Text(
            "Weather",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {
                context.push("/searchscreen");
              },
            )
          ],
        ),
        body: WeatherResponseBuilder(
          date: 'Egypt',
        ));
  }
}
