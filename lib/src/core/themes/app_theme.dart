import 'package:flutter/material.dart';

import '../colors/colors.dart';
import 'theme_color.dart';
import 'theme_text.dart';

class AppThemesData {
  static final appThemeData = {
// ************************lighttheme***********************
    AppTheme.lightTheme: ThemeData(
      // primaryIconTheme:  IconThemeData(color: AppColor.vulcan),
      primaryColorDark: vulcanColor,
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        // backgroundColor: Colors.transparent,
        elevation: 5,
      ),
      scaffoldBackgroundColor: whiteColor,
      // primarySwatch: Colors.blue,
      primaryColor: whiteColor,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      backgroundColor: grey200Color,
      // shadowColor: Colors.grey.shade900,

      primarySwatch: Colors.grey,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          elevation: 5,
          backgroundColor: Colors.black87,
          selectedItemColor: whiteColor,
          unselectedItemColor: Colors.grey),
      brightness: Brightness.light,
      cardColor: whiteColor, //change if card is used anywhere
      unselectedWidgetColor: AppColor.royalBlue,
      textTheme: ThemeText.getLightTextTheme(),
      tabBarTheme: TabBarTheme(
        indicator: BoxDecoration(
          color: Colors.yellow.shade800,
          borderRadius: BorderRadius.circular(5),
        ),
        unselectedLabelStyle:
            const TextStyle(fontWeight: FontWeight.w300, fontSize: 18),
        labelStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),

        // indicatorSize: TabBarIndicatorSize.tab,
        // labelColor: Colors.red,
        unselectedLabelColor: Colors.grey,
      ),

      appBarTheme: AppBarTheme(
        // color: whiteColor,
        centerTitle: true,

        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: grey200Color,
        elevation: 10,
      ),
      inputDecorationTheme: const InputDecorationTheme(
        // hintStyle: Theme.of(context).textTheme.greySubtitle1,
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColor.vulcan,
          ),
        ),

        enabledBorder:
            UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
      ),
    ),

// ************************darktheme***********************

    //   AppTheme.darkTheme: ThemeData(
    //     primaryColorDark: whiteColor,
    //     scaffoldBackgroundColor: AppColor.vulcan,
    //     unselectedWidgetColor: AppColor.royalBlue,

    //     primaryColor: AppColor.vulcan,
    //     // primarySwatch: Colors.teal,
    //     backgroundColor: Colors.black,
    //     cardColor: Colors.grey.shade800, //change if card is used anywhere
    //     textTheme: ThemeText.getTextTheme(),
    //     visualDensity: VisualDensity.adaptivePlatformDensity,
    //     brightness: Brightness.dark,
    //     appBarTheme: AppBarTheme(
    //       // color: whiteColor,
    //       iconTheme: IconThemeData(
    //         color: whiteColor,
    //       ),
    //       backgroundColor: Colors.transparent,
    //       elevation: 0,
    //     ),
    //     tabBarTheme: TabBarTheme(
    //       indicator: BoxDecoration(
    //         color: vulcanColor.withOpacity(.6),
    //         borderRadius: BorderRadius.circular(20),
    //         boxShadow: [
    //           BoxShadow(
    //             offset: const Offset(5, 5),
    //             blurRadius: 50,
    //             color: AppColor.royalBlue.withOpacity(0.7),
    //           ),
    //         ],
    //       ),
    //       // labelColor:   Colors.amber,
    //       unselectedLabelColor: Colors.grey,
    //     ),

    //     inputDecorationTheme: InputDecorationTheme(
    //       // hintStyle: Theme.of(context).textTheme.greySubtitle1,
    //       focusedBorder: UnderlineInputBorder(
    //         borderSide: BorderSide(
    //           color: whiteColor,
    //         ),
    //       ),
    //       enabledBorder: const UnderlineInputBorder(
    //           borderSide: BorderSide(color: Colors.grey)),
    //     ),
    //   )
  };
}

enum AppTheme {
  lightTheme,
  darkTheme,
}

// from showplex app under theme

// theme: ThemeData(
//   unselectedWidgetColor: AppColor.royalBlue,
//   primaryColor:
//       theme == AppTheme.darkTheme ? AppColor.vulcan : Colors.white,
//   scaffoldBackgroundColor:
//       theme == AppTheme.darkTheme ? AppColor.vulcan : Colors.white,
//   // cardTheme: CardTheme(
//   //   color: theme == Themes.dark ? Colors.white : AppColor.vulcan,
//   // ),
//   // primarySwatch: Colors.blue,
//   brightness:
//       theme == AppTheme.darkTheme
//       ? Brightness.dark : Brightness.light,
//   visualDensity: VisualDensity.adaptivePlatformDensity,
//   textTheme: theme == AppTheme.darkTheme
//       ? ThemeText.getTextTheme()
//       : ThemeText.getLightTextTheme(),
//   inputDecorationTheme: InputDecorationTheme(
//     hintStyle: Theme.of(context).textTheme.greySubtitle1,
//     focusedBorder: UnderlineInputBorder(
//       borderSide: BorderSide(
//         color:
//             theme == AppTheme.darkTheme ? Colors.white : AppColor.vulcan,
//       ),
//     ),
//     enabledBorder: const UnderlineInputBorder(
//         borderSide: BorderSide(color: Colors.grey)),
//   ),
//   appBarTheme: const AppBarTheme(
//     // color: whiteColor,
//     backgroundColor: Colors.transparent,
//     elevation: 0,
//   ),
// ),
