import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:project/constants.dart';
import 'package:project/screens/auth/welcome-screen.dart';
import 'package:project/screens/main-screen.dart';
import 'package:project/screens/splash/splash-screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('fa', ''), // Persian, no country code
      ],
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: TextTheme(
              bodyText1: const TextStyle(
                  fontFamily: 'iransans',
                  color: constantsColor.whiteColor,
                  fontSize: 14),
              bodyText2: const TextStyle(
                  fontFamily: 'iransans',
                  color: constantsColor.whiteColor,
                  fontSize: 16),
              headline1: TextStyle(
                  fontFamily: 'iransans',
                  color: constantsColor.mediumBlueColor,
                  fontSize: 14),
                   headline2: TextStyle(
                  fontFamily: 'iransans',
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 14))),
      home: Main(),
    );
  }
}
