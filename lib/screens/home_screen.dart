import 'package:flutter/material.dart';
import 'package:lighthouse_delivery/screens/company_screen.dart';
import 'package:lighthouse_delivery/screens/delirey_datails/delivery_details_page.dart';
import 'package:lighthouse_delivery/widgets/custom_drawer.dart';

import '../models/delivery.dart';
import '../widgets/delivery_card.dart';
import 'create_delivery_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //final GlobalKey<SliverAnimatedListState> _listKey = GlobalKey<SliverAnimatedListState>();
  final GlobalKey<SliverAnimatedListState> _listKey =
      GlobalKey<SliverAnimatedListState>();
  int? _selectedItem;

  List<Delivery> delivery = [
    Delivery("Samucas"),
    Delivery("Samucas2"),
    Delivery("Samucas3"),
  ];

  Widget _buildItem(
      BuildContext context, int index, Animation<double> animation) {
    return SizeTransition(
      sizeFactor: animation,
      child: GestureDetector(
        child: Hero(tag: 'card$index', child: DeliveryCard(delivery: delivery[index],)),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) {
            return DeliveryDetailsPage('card$index');
          }));
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => CreateDeliveryScreen(deliveryList: delivery, insert: insertAnimatedItem)));
        },
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white70,
        child: Icon(Icons.add),
        splashColor: Colors.blue,
      ),
      drawer: CustomDrawer(),
      appBar: AppBar(
        title: Text("Delivery"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.login)),
          IconButton(
            onPressed: () {

            },
            icon: Icon(Icons.backpack_outlined),
            color: Colors.white70,
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => CompanyScreen()));
            },
            icon: Icon(Icons.delivery_dining),
            color: Colors.white70,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAnimatedList(
              key: _listKey,
              initialItemCount: delivery.length,
              itemBuilder: _buildItem,
            ),
          ],
        ),
      ),
    );
  }

  void insertAnimatedItem(){
    _listKey.currentState
        ?.insertItem(0, duration: Duration(milliseconds: 200));
  }
}
