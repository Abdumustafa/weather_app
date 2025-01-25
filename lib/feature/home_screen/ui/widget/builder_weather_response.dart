import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather/core/networking/api_service.dart';
import 'package:weather/feature/home_screen/date/model/result_weather_search.dart';
import 'package:weather/feature/home_screen/ui/widget/weather_body.dart';

class WeatherResponseBuilder extends StatefulWidget {
  const WeatherResponseBuilder({super.key, required this.date});
  final String date;

  @override
  State<WeatherResponseBuilder> createState() => _WeatherResponseBuilderState();
}

class _WeatherResponseBuilderState extends State<WeatherResponseBuilder> {
  late Future<List<ResultWeatherSearch>> future;

  @override
  void initState() {
    super.initState();
    future = ApiService(Dio()).getWeather(location: widget.date);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ResultWeatherSearch>>(
        future: future,
        builder: (context, Snapshot) {
          if (Snapshot.hasData) {
            return WeatherBody(data:Snapshot.data!.first ,);
          } else if (Snapshot.hasError) {
            return  Text("opps there was an error  try again");
          } else {
            return Center(child: CircularProgressIndicator());
          }
        });
  }
}













































// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:weather/core/networking/api_service.dart';
// import 'package:weather/feature/home_screen/date/model/result_weather_search.dart';
// import 'package:weather/feature/home_screen/ui/screen/home_screen.dart';
// import 'package:weather/feature/home_screen/ui/widget/weather_body.dart';

// class WeatherResponseBuilder extends StatefulWidget {
//   const WeatherResponseBuilder({super.key, required this.date});
//   final String date;

//   @override
//   State<WeatherResponseBuilder> createState() => _WeatherResponseBuilderState();
// }

// class _WeatherResponseBuilderState extends State<WeatherResponseBuilder> {
//   late Future<List<ResultWeatherSearch>> future;

//   @override
//   void initState() {
//     super.initState();
//     future = ApiService(Dio()).getWeather(location: widget.date);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder<List<ResultWeatherSearch>>(
//         future: future,
//         builder: (context, Snapshot) {
//           if (Snapshot.hasData) {
//             return WeatherBody(data:Snapshot.data! ,);
//           } else if (Snapshot.hasError) {
//             return SliverToBoxAdapter(
//                 child: Text("opps there was an error  try again"));
//           } else {
//             return SliverToBoxAdapter(
//                 child: Center(child: CircularProgressIndicator()));
//           }
//         });
//   }
// }
