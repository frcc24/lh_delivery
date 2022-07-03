import 'package:flutter/material.dart';
import 'package:lighthouse_delivery/colors_schemas.dart';
import 'package:lighthouse_delivery/screens/splashscreen/splash_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Lighthouse Delivery',

        theme: ThemeData(
          //useMaterial3: true,

          // Define the default font family.
          fontFamily: 'Arial',
          colorScheme: lightColorScheme,
          primaryColor: lightColorScheme.primary,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          scaffoldBackgroundColor: lightColorScheme.primary,
          cursorColor: lightColorScheme.primary,
          appBarTheme: AppBarTheme(
            elevation: 0,
          )

    ),
    debugShowCheckedModeBanner: false,
    home: const SplashScreen( ),
    );
  }
}