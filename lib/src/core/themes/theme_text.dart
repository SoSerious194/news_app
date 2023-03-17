import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'theme_color.dart';

class ThemeText {
  const ThemeText._();

  static TextTheme get _poppinsTextTheme => GoogleFonts.poppinsTextTheme();
  static TextTheme get _timesNewTextTheme => GoogleFonts.tinosTextTheme();

//************************ Poppins Text **************************************** */

  static TextStyle? get _whitePoppinsHeadline6 =>
      _poppinsTextTheme.headline6?.copyWith(
        fontSize: 18,
        color: Colors.white,
      );

  static TextStyle? get _vulcanPoppinsHeadline6 =>
      _whitePoppinsHeadline6?.copyWith(color: AppColor.vulcan, fontSize: 18);

  static TextStyle? get _whitePoppinsHeadline5 =>
      _poppinsTextTheme.headline5?.copyWith(
        fontSize: 24,
        color: Colors.white,
      );
  static TextStyle? get _vulcanPoppinsHeadline5 =>
      _whitePoppinsHeadline5?.copyWith(color: AppColor.vulcan);

  static TextStyle? get whitePoppinsSubtitle1 =>
      _poppinsTextTheme.subtitle1?.copyWith(
          fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold);
  static TextStyle? get whitePoppinsSubtitle2 =>
      _poppinsTextTheme.subtitle2?.copyWith(
        fontSize: 18,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      );

  static TextStyle? get vulcanPoppinsSubtitle1 =>
      whitePoppinsSubtitle1?.copyWith(color: AppColor.vulcan);
  static TextStyle? get vulcanPoppinsSubtitle2 =>
      whitePoppinsSubtitle1?.copyWith(color: Colors.black);

  static TextStyle? get _whitePoppinsButton =>
      _poppinsTextTheme.button?.copyWith(
        fontSize: 14,
        color: Colors.white,
      );

  static TextStyle? get whitePoppinsBodyText2 =>
      _poppinsTextTheme.bodyText2?.copyWith(
        color: Colors.white,
        fontSize: 14,
        wordSpacing: 0.25,
        letterSpacing: 0.25,
        height: 1.5,
      );
  static TextStyle? get vulcanPoppinsBodyText2 =>
      whitePoppinsBodyText2?.copyWith(color: AppColor.vulcan);

  static TextStyle? get colorBodyText => _poppinsTextTheme.bodyText1?.copyWith(
        color: Colors.grey,
        fontSize: 14,
        wordSpacing: 0.25,
        letterSpacing: 0.25,
        height: 1.5,
      );

  static TextStyle? get greyBodyText => _poppinsTextTheme.bodyText1?.copyWith(
        color: Colors.grey,
        fontSize: 14,
      );

  static TextStyle? get _darkCaption => _poppinsTextTheme.caption?.copyWith(
        color: AppColor.vulcan,
        fontSize: 14,
        wordSpacing: 0.25,
        letterSpacing: 0.25,
        height: 1.5,
      );
  static TextStyle? get _lightBodyText =>
      _darkCaption?.copyWith(color: Colors.black54);

  // static TextStyle? get _lightCaption =>
  //     _darkCaption?.copyWith(color: Colors.white);

  //************************ TIno/TimesNew ROman Text **************************************** */

  //  static TextStyle? get _whiteTimesNewHeadline6 =>
  //     _timesNewTextTheme.headline6?.copyWith(
  //       fontSize: 16,
  //       color: Colors.white,
  //     );

// static TextStyle? get _vulcanTimesNewHeadline6 =>
//       _whiteTimesNewHeadline6?.copyWith(color: AppColor.vulcan);

  static TextStyle? get _whiteTimesNewHeadline5 =>
      _poppinsTextTheme.headline5?.copyWith(
        fontSize: 24,
        color: Colors.white,
      );
  static TextStyle? get _vulcanTimesNewHeadline5 =>
      _whiteTimesNewHeadline5?.copyWith(color: AppColor.vulcan);

  static TextStyle? get whiteTimesNewSubtitle1 =>
      _timesNewTextTheme.subtitle1?.copyWith(
          fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold);
  static TextStyle? get whiteTimesNewSubtitle2 =>
      _timesNewTextTheme.subtitle2?.copyWith(
        fontSize: 18,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      );

  static TextStyle? get vulcanTimesNewSubtitle1 =>
      whiteTimesNewSubtitle1?.copyWith(color: AppColor.vulcan);
  static TextStyle? get vulcanTimesNewSubtitle2 =>
      whiteTimesNewSubtitle1?.copyWith(color: Colors.white);

  // static TextStyle? get _whiteTimesNewButton => _poppinsTextTheme.button?.copyWith(
  //       fontSize: 14,
  //       color: Colors.white,
  //     );

  static TextStyle? get whiteTimesNewBodyText2 =>
      _timesNewTextTheme.bodyText2?.copyWith(
        color: Colors.white,
        fontSize: 14,
        wordSpacing: 0.25,
        letterSpacing: 0.25,
        height: 1.5,
      );
  static TextStyle? get vulcanTimesNewBodyText2 =>
      whitePoppinsBodyText2?.copyWith(color: AppColor.vulcan);

  // static getTextTheme() => TextTheme(
  //       // headlineSmall: greyBodyText,
  //       headline5: _whitePoppinsHeadline5,
  //       headline6: _whitePoppinsHeadline6,
  //         headline3: _whiteTimesNewHeadline5,
  //       subtitle1: whitePoppinsSubtitle1,
  //       subtitle2: whitePoppinsSubtitle2,
  //       bodyText2: whitePoppinsBodyText2,
  //       bodyText1: colorBodyText,
  //       button: _whitePoppinsButton,
  //       // caption: _lightCaption,
  //       headline4: greyBodyText,
  //     );

  static getLightTextTheme() => TextTheme(
        // headlineSmall: _lightBodyText,
        headline5: _vulcanPoppinsHeadline5,
        headline6: _vulcanPoppinsHeadline6,
        headline3: _vulcanTimesNewHeadline5,
        subtitle1: vulcanPoppinsSubtitle1,
        subtitle2: vulcanTimesNewSubtitle1,
        bodyText2: vulcanPoppinsBodyText2,
        button: _whitePoppinsButton,

        caption: _darkCaption,
        headline4: _lightBodyText,
      );
}

extension ThemeTextExtension on TextTheme {
  TextStyle? get royalBlueSubtitle1 => subtitle1?.copyWith(
      color: AppColor.royalBlue, fontWeight: FontWeight.w600);

  TextStyle? get greySubtitle1 => subtitle1?.copyWith(color: Colors.grey);

  TextStyle? get violetHeadline6 => headline6?.copyWith(color: AppColor.violet);

  TextStyle? get vulcanBodyText2 =>
      bodyText2?.copyWith(color: AppColor.vulcan, fontWeight: FontWeight.w600);

  TextStyle? get whiteBodyText2 =>
      vulcanBodyText2?.copyWith(color: Colors.white);

  TextStyle? get greyCaption => caption?.copyWith(color: Colors.grey);

  TextStyle? get orangeSubtitle1 =>
      subtitle1?.copyWith(color: Colors.orangeAccent);
}
