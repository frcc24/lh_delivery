import 'package:flutter/material.dart';
import 'package:lighthouse_delivery/colors_schemas.dart';
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
          useMaterial3: true,
          // Define the default font family.
          fontFamily: 'Arial',
          colorScheme: lightColorScheme,
            //brightness: Brightness.dark,

            // dividerColor: const Color.fromARGB(255, 9, 71, 22)
    ),
    debugShowCheckedModeBanner: false,
    home: const SplashScreen( ),
    );
  }
}