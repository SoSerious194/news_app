import 'dart:developer';

import 'package:flutter/material.dart';
import '../colors/colors.dart';

double screenHeight(context) => MediaQuery.of(context).size.height;
double screenWidth(context) => MediaQuery.of(context).size.width;

snackBarFn({
  required BuildContext context,
  required String title,
  required bool isAdded,
  int duration = 1,
}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        title,
        textAlign: TextAlign.center,
        style:
            Theme.of(context).textTheme.subtitle1!.copyWith(color: whiteColor),
      ),
      behavior: SnackBarBehavior.floating,
      elevation: 10,
      padding: const EdgeInsets.all(12),
      backgroundColor:
          isAdded ? Colors.green.withOpacity(.8) : Colors.red.withOpacity(.8),
      dismissDirection: DismissDirection.startToEnd,
      shape: const StadiumBorder(),
      duration: Duration(seconds: duration),
    ),
  );
}
