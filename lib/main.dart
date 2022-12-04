import 'dart:async';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'package:jiit_counselling_trial1/firebase_options.dart';
import 'homeRoute.dart';
import 'secondRoute.dart';
import 'thirdRoute.dart';
import 'fourthRoute.dart';
import 'FifthRoute.dart';
import 'SixthRoute.dart'; //ADDED THIS
import 'SeventhRoute.dart'; //ADDED THIS and REMOVE JS:DART
import 'EightRoute.dart'; //ADDED THIS
import 'NinthRoute.dart';
import 'package:flutter/services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => const HomeRoute(),
      '/second': (context) => const SecondRoute(),
      '/third': (context) => const ThirdRoute(),
      '/FourthRoute': (context) => const FourthRoute(),
      '/FifthRoute': (context) => const FifthRoute(),
      '/SixthRoute': (context) => const SixthRoute(), //ADDED THIS
      '/SeventhRoute': (context) => const SeventhRoute(), //ADDED THIS
      '/EightRoute': (context) => const EightRoute(), //ADDED THIS
      '/NinthRoute': (context) => const NinthRoute(),
    },
  ));
}
