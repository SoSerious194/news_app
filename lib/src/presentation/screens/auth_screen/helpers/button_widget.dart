import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/colors/colors.dart';

class IconButtonWidget extends StatelessWidget {
  final String text;
  final Function() onPressed;
  final bool isColored;
  final Color buttonColor;
  final IconData? icon;
  final double fontSize;

  const IconButtonWidget({
    Key? key,
    required this.text,
    required this.onPressed,
    this.buttonColor = redAppBarColor,
    this.isColored = true,
    this.fontSize = 18,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeIn,

      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        gradient: LinearGradient(
          colors: isColored
              ? [
                  buttonColor.withOpacity(.7),
                  buttonColor,
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
      child: InkWell(
        onTap: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            icon != null
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Icon(
                      icon,
                      color: Colors.white,
                    ),
                  )
                : const SizedBox.shrink(),
            TextButton(
              key: const ValueKey('main_button'),
              onPressed: onPressed,
              child: Text(
                text,
                // text.t(context),
                style: Theme.of(context).textTheme.button!.copyWith(
                      fontSize: fontSize,
                      color: whiteColor,
                    ),
              ),
            ),
            const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
