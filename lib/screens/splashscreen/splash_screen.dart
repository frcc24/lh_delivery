import 'package:flutter/material.dart';
import 'package:lighthouse_delivery/screens/login/login_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        height: 20.0,
        width: 40.0,
        child: RaisedButton(
          color: Colors.red,
          onPressed: () => {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => LoginScreen()))
          },
        ),
      ),
      color: Colors.white,
    );
  }
}
