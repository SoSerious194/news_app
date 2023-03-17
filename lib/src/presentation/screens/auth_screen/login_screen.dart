import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobilefirst/src/presentation/common/widgets/topic_titles.dart';

import '../../../application/auth/user_auth_bloc.dart';
import '../../../core/utils/utils.dart';
import 'helpers/button_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: screenHeight(context) * .25,
            ),
            Center(
              child: Image.asset(
                "assets/images/firebase.png",
                width: 180,
                height: 180,
              ),
            ),
            SizedBox(
              height: screenHeight(context) * .05,
            ),
            const SubTitleWidget(subTitle: "Login to NewsApp"),
            SizedBox(
              height: screenHeight(context) * .02,
            ),
            SizedBox(
              width: screenWidth(context) * .8,
              child: IconButtonWidget(
                isColored: true,
                buttonColor: Colors.blue,
                text: "Google",
                
                icon: FontAwesomeIcons.google,
                onPressed: () {
                  BlocProvider.of<UserAuthBloc>(context).add(
                    const GoogleSignInRequested(),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
