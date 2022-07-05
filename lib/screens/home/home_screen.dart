import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:lighthouse_delivery/screens/company_screen/company_screen.dart';
import 'package:lighthouse_delivery/screens/delirey_datails/delivery_details_page.dart';
import 'package:lighthouse_delivery/widgets/custom_drawer.dart';

import '../../models/delivery.dart';
import '../../widgets/delivery_card.dart';
import '../create_delivery/create_delivery_screen.dart';

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
  final List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];

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
        child: Hero(
            tag: 'card$index',
            child: DeliveryCard(
              delivery: delivery[index],
            )),
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
    final List<Widget> imageSliders = imgList
        .map((item) => Container(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 2.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    child: Stack(
                      children: <Widget>[
                        Image.network(item, fit: BoxFit.cover, width: 1000.0),
                        Positioned(
                          bottom: 0.0,
                          left: 0.0,
                          right: 0.0,
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromARGB(200, 0, 0, 0),
                                  Color.fromARGB(0, 0, 0, 0)
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                              ),
                            ),
                            padding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 20.0),
                            child: Text(
                              'No. ${imgList.indexOf(item)} image',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
            ))
        .toList();

    return Scaffold(
      backgroundColor: Colors.grey[300],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => CreateDeliveryScreen(
                  deliveryList: delivery, insert: insertAnimatedItem)));
        },
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
            onPressed: () {},
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
        child: Container(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: CarouselSlider(
                  options: CarouselOptions(
                    aspectRatio: 2.40,
                    enlargeStrategy: CenterPageEnlargeStrategy.scale,
                    enlargeCenterPage: true,
                    scrollDirection: Axis.horizontal,
                    autoPlay: true,
                  ),
                  items: imageSliders,
                ),
              ),
              Divider(),
              Expanded(
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
            ],
          ),
        ),
      ),
    );
  }

  void insertAnimatedItem() {
    _listKey.currentState?.insertItem(0, duration: Duration(milliseconds: 200));
  }
}
