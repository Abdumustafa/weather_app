// ignore_for_file: avoid_types_as_parameter_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:weather/feature/home_screen/logic/get_weather_cubit.dart';
import 'package:weather/feature/home_screen/ui/widget/no_weather_body.dart';
import 'package:weather/feature/home_screen/ui/widget/weather_body.dart';

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
        body: BlocBuilder<GetWeatherCubit, GetWeatherState>(
            builder: (context, State) {
          if (State is NoWeatherState) {
            return const NoWeatherBody();
          } else if (State is WeatherLoadedState) {
            return WeatherBody();
          } else {
            return const Center(child: Text("oops there are was error Try again"));
          }
        })); 
  }
}
