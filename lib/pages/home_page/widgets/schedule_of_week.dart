import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wether_app/pages/scheduled_page/scheduled.dart';

class ScheduleOfWeek extends StatelessWidget {
  const ScheduleOfWeek({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                "Today",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Tomorrow",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ScheduledPages(),
                ),
              );
            },
            child: Row(
              children: [
                Text(
                  "Next 7 Days",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 12,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
