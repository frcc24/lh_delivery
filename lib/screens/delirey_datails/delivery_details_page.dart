import 'package:flutter/material.dart';

class DeliveryDetailsPage extends StatelessWidget {
  String cardtag;

  DeliveryDetailsPage(this.cardtag);



  @override
  Widget build(BuildContext context) {
    return
      Scaffold(

    appBar: AppBar(
    title: Text("Delivery"),
      
    ),
    body:
    Hero(
      tag: cardtag,
      child: Container(
        color: Colors.red,
      ),
    )
      );
  }
}
