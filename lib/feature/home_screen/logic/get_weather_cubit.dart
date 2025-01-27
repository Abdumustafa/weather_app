import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/core/networking/api_service.dart';
import 'package:weather/feature/home_screen/date/model/weather_model.dart';
part 'get_weather_state.dart';

class GetWeatherCubit extends Cubit<GetWeatherState> {
  GetWeatherCubit() : super(NoWeatherState());
  late WeatherModel dataWeatherModel;

  getWeather({required String location}) async {
    try {
       dataWeatherModel =
          await ApiService(Dio()).getWeather(location: location);
      emit(WeatherLoadedState());
    } catch (e) {
      emit(WeatherFailureState());
    }
  }
}
