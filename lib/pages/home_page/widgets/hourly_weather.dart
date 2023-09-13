import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wether_app/styles/app_colors.dart';
import 'package:wether_app/styles/app_icons.dart';

class HourlyWeather extends StatelessWidget {
  const HourlyWeather({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      width: double.infinity,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: SizedBox(
              height: 5,
              width: double.infinity,
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 1.5,
                    ),
                    child: SizedBox(
                      height: 1,
                      width: double.infinity,
                      child: ColoredBox(
                        color: AppColors.divider,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: SizedBox(
                      width: 10,
                      height: 4,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              5,
                            ),
                          ),
                          color: AppColors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 15,
              itemBuilder: (BuildContext context, int index) => const SizedBox(
                width: 10,
              ),
              separatorBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: SizedBox(
                    height: 60,
                    width: 45,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: AppColors.white50,
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            20,
                          ),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "8:00",
                            style: TextStyle(
                              fontSize: 11,
                            ),
                          ),
                          Image(
                            image: AssetImage(
                              AppIcons.icClody,
                            ),
                          ),
                          Text(
                            "20°",
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
