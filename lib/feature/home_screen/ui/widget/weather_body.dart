import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/core/helper/string_to_data_type.dart';
import 'package:weather/feature/home_screen/date/model/weather_model.dart';
import 'package:weather/feature/home_screen/logic/get_weather_cubit.dart';

class WeatherBody extends StatelessWidget {
  WeatherBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    WeatherModel dataModel =
        BlocProvider.of<GetWeatherCubit>(context).dataWeatherModel;

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blue, Colors.white],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Text(
                  dataModel.city,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
                Text(
                  "update at: ${stringToDataType(dataModel.lastUpdated).hour}",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 25),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 50, top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset("assets/images/rainy.png"),
                  Text(
                    "${dataModel.tempC}",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Column(
                    children: [
                      Text("maxTemp: 17"),
                      Text("minTemp: 10"),
                    ],
                  )
                ],
              ),
            ),
            Text(
              "${dataModel.condition}",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}
