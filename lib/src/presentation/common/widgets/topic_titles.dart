import 'package:flutter/material.dart';

class SubTitleWidget extends StatelessWidget {
  final String subTitle;
  final Color textColor;
  final double size;
  final FontWeight fontWeight;
  final double paddinHeight;
  final TextAlign textAlign;
  final int maxlines;
  const SubTitleWidget({
    Key? key,
    required this.subTitle,
    this.textColor = Colors.black,
    this.size = 24,
    this.fontWeight = FontWeight.w600,
    this.paddinHeight = 8,
    this.textAlign = TextAlign.center,
    this.maxlines = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: paddinHeight),
      child: Text(
        subTitle,
        textAlign: textAlign,
        maxLines: maxlines,
        overflow: TextOverflow.ellipsis,
        style: Theme.of(context).textTheme.titleMedium!.copyWith(
              fontSize: size,
              fontWeight: fontWeight,
              color: textColor,
            ),
      ),
    );
  }
}
