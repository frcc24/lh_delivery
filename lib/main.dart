import 'package:flutter/material.dart';
import 'package:lighthouse_delivery/screens/splash_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Lighthouse Delivery',
        theme: ThemeData(
        backgroundColor: const Color.fromARGB(255, 13, 26, 6) ,
    dividerColor: const Color.fromARGB(255, 20, 43, 7) ,
    accentColor: const Color.fromARGB(255, 51, 71, 86),
    primaryColor:  const Color.fromARGB(255, 36, 200, 150),
    secondaryHeaderColor: const Color.fromARGB(255, 220, 220, 220),
    primaryColorDark: const Color.fromARGB(255, 8, 32, 50),
    primaryColorLight: const Color.fromARGB(255, 245, 245, 245),

    ),
    debugShowCheckedModeBanner: false,
    home: const SplashScreen( ),
    );
  }
}