import 'package:flutter/material.dart';

import 'pages/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: black,
        backgroundColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

const MaterialColor black = const MaterialColor(
  0xff363636,
  const <int, Color>{
    50: Color(0xff363636),
    100: Color(0xff363636),
    200: Color(0xff363636),
    300: Color(0xff363636),
    400: Color(0xff363636),
    500: Color(0xff363636),
    600: Color(0xff363636),
    700: Color(0xff363636),
    800: Color(0xff363636),
    900: Color(0xff363636),
  },
);
