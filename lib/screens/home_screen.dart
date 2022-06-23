import 'package:flutter/material.dart';
import 'package:lighthouse_delivery/screens/company_screen.dart';
import 'package:lighthouse_delivery/screens/delirey_datails/delivery_details_page.dart';
import 'package:lighthouse_delivery/screens/login_screen.dart';
import 'package:lighthouse_delivery/widgets/custom_drawer.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

import '../models/delivery.dart';
import '../widgets/delivery_card.dart';
import 'create_delivery_screen.dart';
import 'delivery_user_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();
  int? _selectedItem;

  List<Delivery> delivery = [
    Delivery("Samucas"),

  ];



  Widget _buildItem(
      BuildContext context, int index, Animation<double> animation) {
    return SizeTransition(
      sizeFactor: animation,
        child: GestureDetector(child: Hero(tag: 'card$index', child: DeliveryCard()), onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (_) {
            return DeliveryDetailsPage('card$index');
          }));
        },),

    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () { setState(() {
   delivery.add(Delivery('nova'));
   _listKey.currentState!.insertItem(0, duration: Duration(milliseconds: 200));
          });
 },  backgroundColor: Colors.blueAccent, foregroundColor: Colors.white70, child: Icon(Icons.add), splashColor: Colors.blue, ),
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
                  child: AnimatedList(
                    key: _listKey,
                    initialItemCount: delivery.length,
                    itemBuilder: _buildItem,
                  ),
                  // child: ListView(
                  //   children: [
                  //     GestureDetector(child: Hero(tag: 'card1', child: DeliveryCard()), onTap: (){
                  //       Navigator.push(context, MaterialPageRoute(builder: (_) {
                  //         return DeliveryDetailsPage('card1');
                  //       }));
                  //     },),
                  //     GestureDetector(child: Hero(tag: 'card', child: DeliveryCard()), onTap: (){
                  //       Navigator.push(context, MaterialPageRoute(builder: (_) {
                  //         return DeliveryDetailsPage('card');
                  //       }));
                  //     },),
                  //     WidgetAnimator(
                  //         incomingEffect: WidgetTransitionEffects.incomingSlideInFromLeft(),
                  //         child: DeliveryCard()),
                  //     WidgetAnimator(
                  //         incomingEffect: WidgetTransitionEffects.incomingSlideInFromRight(),
                  //         child: DeliveryCard()),
                  //     DeliveryCard(),
                  //     DeliveryCard(),
                  //     DeliveryCard(),
                  //     DeliveryCard(),
                  //   ],
                  // ),
                )
              ],

            ),
          ),
        ),
      ),
    );
  }


}
