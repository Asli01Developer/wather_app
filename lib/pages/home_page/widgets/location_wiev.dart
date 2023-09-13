import 'package:flutter/cupertino.dart';
import 'package:wether_app/styles/app_colors.dart';
import 'package:wether_app/utils/time_exetsions.dart';

class LocationView extends StatefulWidget {
  const LocationView({super.key});

  @override
  State<LocationView> createState() => _LocationViewState();
}

class _LocationViewState extends State<LocationView> {
  @override
  Widget build(BuildContext context) => Padding(
        padding: EdgeInsets.symmetric(horizontal: 18, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Tashkent, Uzbekistan",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              DateTime.now().weekMonthDay,
              style: TextStyle(
                fontSize: 11,
                color: AppColors.grayText,
              ),
            )
          ],
        ),
      );
}
