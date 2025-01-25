import 'package:dio/dio.dart';
import 'package:weather/feature/home_screen/date/model/result_weather_search.dart';

class ApiService {
  final Dio dio;
  final String baseUrl = "https://api.weatherapi.com/v1/";
    final String apiKey = "4674146fd90c4c37b81143745252401";


  ApiService(this.dio);

  Future<List<ResultWeatherSearch>> getWeather(
      {required String location}) async {
    try {
      var response = await dio.get(
          "$baseUrl/current.json?key$apiKey=&q=$location");

      Map<String, dynamic> jsonResponse = response.data;

      ResultWeatherSearch resultWeatherSearch =
          ResultWeatherSearch.fromJson(jsonResponse);

      return [resultWeatherSearch];
    } catch (e) {
      return [];
    }
  }
}
