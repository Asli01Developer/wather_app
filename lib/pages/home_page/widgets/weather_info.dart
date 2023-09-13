import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wether_app/styles/app_colors.dart';
import 'package:wether_app/styles/app_icons.dart';
import 'package:wether_app/utils/list_exition.dart';

class WeatherInfo extends StatelessWidget {
  const WeatherInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          DetailItem(
            icon: AppIcons.icUmberilla,
            info: "RainFall",
            action: "3cm",
          ),
          DetailItem(
            icon: AppIcons.icHumidity,
            info: "Wind",
            action: "19km/h",
          ),
          DetailItem(
            icon: AppIcons.icNewHuminity,
            info: "Humidity",
            action: "64%",
          ),
        ].addBetween(
          const SizedBox(
            height: 5,
          ),
        ),
      ),
    );
  }
}

class DetailItem extends StatelessWidget {
  final String icon;
  final String info;
  final String action;

  const DetailItem(
      {super.key,
      required this.icon,
      required this.info,
      required this.action});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: double.infinity,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
          border: Border.all(
            width: 1,
            color: AppColors.white50,
          ),
          color: AppColors.white30,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                if (info == "Humidity")
                  SizedBox(
                    height: 70,
                    width: 70,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(12),
                            ),
                            image: DecorationImage(
                              image: AssetImage(icon),
                              fit: BoxFit.cover,
                            ),
                            color: AppColors.white,
                            boxShadow: const [
                              BoxShadow(
                                offset: Offset(0.5, 10),
                                spreadRadius: 0.1,
                                blurRadius: 10,
                                color: AppColors.blue,
                              )
                            ]
                        ),
                      ),
                    ),
                  )
                else
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Image(
                    image: AssetImage(icon),
                    width: 70,
                    height: 70,
                    fit: BoxFit.cover,
                  ),
                ),
                Text(info),
                Padding(
                  padding: const EdgeInsets.only(left: 300),
                  child: Text(action),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
