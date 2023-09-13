import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wether_app/pages/home_page/widgets/custom_app_bar.dart';
import 'package:wether_app/pages/home_page/widgets/location_wiev.dart';
import 'package:wether_app/styles/app_colors.dart';

import 'widgets/hourly_weather.dart';
import 'widgets/schedule_of_week.dart';
import 'widgets/weather_celseus.dart';
import 'widgets/weather_info.dart';

class HomePages extends StatefulWidget {
  const HomePages({super.key});

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: AppColors.appBgGradent,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: ListView(
            children: [
              CustomAppBar(),
              LocationView(),
              WeatherCelsius(),
              WeatherInfo(),
              ScheduleOfWeek(),
              HourlyWeather(),
            ],
          ),
        ),
      ),
    );
  }
}
