import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../auth_screen/login_screen.dart';
import '../home_screen/home_screen.dart';

class LaunchScreen extends StatelessWidget {
  const LaunchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          // If the snapshot has user data, then they're already signed in.
          if (snapshot.hasData) {
            return HomeScreen(
              name: snapshot.data!.displayName.toString(),
            );
          }
          // not signed in. Show the sign in page.
          return const LoginScreen();
        });
  }
}
