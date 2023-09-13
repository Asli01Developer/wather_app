import 'package:flutter/material.dart';
import 'package:wether_app/styles/app_colors.dart';
import 'package:wether_app/styles/app_icons.dart';

class TomorrowWeatherInfo extends StatefulWidget {
  const TomorrowWeatherInfo({super.key});

  @override
  State<TomorrowWeatherInfo> createState() => _TomorrowWeatherInfoState();
}

class _TomorrowWeatherInfoState extends State<TomorrowWeatherInfo> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(11.0),
      child: SizedBox(
        height: 108,
        width: double.infinity,
        child: DecoratedBox(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Stack(children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Tommorow",
                        style: TextStyle(
                          color: AppColors.black,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "22°",
                            style: TextStyle(
                              color: AppColors.black,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 32,
                            width: 32,
                            child: Image(
                              image: AssetImage(
                                AppIcons.icClody,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 150),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              height: 50,
                              width: 50,
                              child: Image(
                                image: AssetImage(
                                  AppIcons.icHumidity,
                                ),
                              ),
                            ),
                            Text(
                              "1 cm",
                              style: TextStyle(
                                color: AppColors.black,
                                fontSize: 7,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              )
            ]),
          ),
          decoration: BoxDecoration(
            color: AppColors.white30,
            borderRadius: BorderRadius.all(
              Radius.circular(
                10,
              ),
            ),
            border: Border.all(
              width: 1.5,
              color: AppColors.white50,
            ),
          ),
        ),
      ),
    );
  }
}
