import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'src/domain/di/injectable.dart';

import 'src/newsapp.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await dotenv.load(fileName: ".env");
  await congigureInjection();
  unawaited(SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp],
  ));

  Hive.initFlutter();
  runApp(const NewsApp());
}
