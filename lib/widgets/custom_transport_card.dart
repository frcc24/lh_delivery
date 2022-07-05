import 'package:flutter/material.dart';
import 'package:lighthouse_delivery/colors_schemas.dart';

class CustomTransportCard extends StatelessWidget {
  var icon;

  CustomTransportCard({required this.icon});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: lightColorScheme.primary,
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Icon(
          icon,
          size: 40,
          color: Colors.white70,
        ),
      ),
    );
  }
}
