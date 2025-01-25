import 'package:flutter/material.dart';
import 'package:weather/feature/home_screen/date/model/result_weather_search.dart';

class WeatherBody extends StatelessWidget {
  const WeatherBody({super.key, required this.data});
  final ResultWeatherSearch data ;

  @override
  Widget build(BuildContext context) {
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
                  data.city,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
                Text(
                  "update at: ${data.lastUpdated}",
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
                    "${data.tempC}",
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
              "${data.condition}",
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
