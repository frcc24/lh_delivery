import 'package:flutter/material.dart';
import 'package:lighthouse_delivery/screens/company_screen.dart';
import 'package:lighthouse_delivery/screens/login_screen.dart';
import 'package:lighthouse_delivery/widgets/custom_drawer.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

import '../widgets/delivery_card.dart';
import 'create_delivery_screen.dart';
import 'delivery_user_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        title: Text("Delivery"),
        actions: [
          IconButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginScreen()));
          }, icon: Icon(Icons.login)),
          IconButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => CreateDeliveryScreen()));
          }, icon: Icon(Icons.backpack_outlined), color: Colors.white70,),          IconButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => CompanyScreen()));
          }, icon: Icon(Icons.delivery_dining), color: Colors.white70,),
        ],

      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                DeliveryCard(),
                Expanded(
                  child: ListView(
                    children: [
                      WidgetAnimator(
                          incomingEffect: WidgetTransitionEffects.incomingSlideInFromLeft(),
                          child: DeliveryCard()),
                      WidgetAnimator(
                          incomingEffect: WidgetTransitionEffects.incomingSlideInFromRight(),
                          child: DeliveryCard()),
                      DeliveryCard(),
                      DeliveryCard(),
                      DeliveryCard(),
                      DeliveryCard(),
                    ],
                  ),
                )
              ],

            ),
          ),
        ),
      ),
    );
  }


}
