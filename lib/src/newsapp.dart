import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobilefirst/src/presentation/screens/launch_screen/launch_screen.dart';

import 'application/auth/user_auth_bloc.dart';
import 'domain/repos/auth_repositary.dart';
import 'presentation/screens/detail_screen/detail_screen.dart';
import 'presentation/screens/home_screen/home_screen.dart';

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => AuthRepository(),
      child: BlocProvider(
        create: (context) => UserAuthBloc(
          authRepository: RepositoryProvider.of<AuthRepository>(context),
        ),
        child: MaterialApp(
          title: 'News App',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
            textTheme: GoogleFonts.openSansTextTheme(
              Theme.of(context).textTheme,
            ),
          ),
          home: const LaunchScreen(),
          routes: {
            "DetailedNewsPage": (context) => const NewsDetailPage(),
          },
        ),
      ),
    );
  }
}
