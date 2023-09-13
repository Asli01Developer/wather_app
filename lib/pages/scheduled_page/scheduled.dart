import 'package:flutter/material.dart';
import 'package:wether_app/pages/scheduled_page/widgets/tomorrow_weather_info.dart';

import '../../styles/app_colors.dart';
import 'widgets/custom_app_bar.dart';

class ScheduledPages extends StatefulWidget {
  const ScheduledPages({super.key});

  @override
  State<ScheduledPages> createState() => _ScheduledPagesState();
}

class _ScheduledPagesState extends State<ScheduledPages> {
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
              CustomAppBaR(),
              TomorrowWeatherInfo(),
            ],
          ),
        ),
      ),
    );
  }
}
