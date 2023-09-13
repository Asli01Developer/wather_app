import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wether_app/styles/app_colors.dart';

import '../scheduled.dart';

class CustomAppBaR extends StatelessWidget {
  const CustomAppBaR({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(
        "Next 7 Days",
      ),
      backgroundColor: Colors.transparent,
      leading: Icon(
        Icons.arrow_back,
      ),
    );
  }
}
