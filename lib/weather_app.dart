import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather/feature/home_screen/logic/get_weather_cubit.dart';

import 'core/router.dart';

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: BlocProvider(
        create: (context) => GetWeatherCubit(),
        child: MaterialApp.router(
          routerConfig: routerApp,
          title: "ScanBox",
          theme: ThemeData(
            primaryColor: Colors.green,
          ),
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}
