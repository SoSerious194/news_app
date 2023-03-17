import 'package:flutter/material.dart';
import 'package:mobilefirst/src/core/utils/utils.dart';

class DemoErrorScreen extends StatelessWidget {
  const DemoErrorScreen({Key? key, required this.results}) : super(key: key);
  final dynamic results;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        const Text('Error!',
            style: TextStyle(fontSize: 30, color: Colors.black)),
        const SizedBox(
          height: 20,
        ),
        Stack(
          children: [
            Image.asset(
              'assets/images/7_Error.png',
              fit: BoxFit.cover,
              height: screenHeight(context) * .6,
              width: screenWidth(context),
            ),
            const Positioned(
              bottom: 20,
              left: 20,
              right: 20,
              child: Text(
                'Something went wrong, Please Check Your Network',
                style: TextStyle(fontSize: 18, color: Colors.black54),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
