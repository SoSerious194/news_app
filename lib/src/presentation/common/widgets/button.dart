import 'package:flutter/material.dart';

import '../../../core/colors/colors.dart';
import '../../../core/themes/theme_color.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final Function() onPressed;
  final bool isColored;
  final bool isEnabled;
  final Color buttonColor;
  final double fontSize;

  const ButtonWidget({
    Key? key,
    required this.text,
    required this.onPressed,
    this.isEnabled = true,
    this.buttonColor = redAppBarColor,
    this.isColored = false,
    this.fontSize = 18,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeIn,

      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        // borderRadius: const BorderRadius.only(
        //   bottomRight: Radius.elliptical(25, 15),
        // ),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        gradient: LinearGradient(
          colors: isColored
              ? [
                  isEnabled ? buttonColor : Colors.grey,
                  isEnabled ? buttonColor : Colors.grey
                ]
              : isEnabled
                  ? [
                      AppColor.violet,
                      AppColor.royalBlue,
                    ]
                  : [
                      Colors.grey,
                      Colors.grey,
                    ],
        ),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 5,
      ),
      // margin: EdgeInsets.symmetric(vertical: 1.h),
      height: 44,
      child: TextButton(
        key: const ValueKey('main_button'),
        onPressed: isEnabled ? onPressed : null,
        child: Text(
          text,
          // text.t(context),
          style: Theme.of(context).textTheme.button!.copyWith(
                fontSize: fontSize,
              ),
        ),
      ),
    );
  }
}
