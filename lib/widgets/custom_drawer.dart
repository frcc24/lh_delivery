import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


import '../tiles/drawer_tile.dart';
class CustomDrawer extends StatelessWidget {

  //final PageController pageController;

  const CustomDrawer( );

  Widget _buildDrawerBack() => Container(
    decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 194, 191, 191),
            Color.fromARGB(255, 8, 32, 50)
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomCenter,
        )
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Stack(
        children: <Widget> [
          _buildDrawerBack(),
          ListView(
            padding: EdgeInsets.only(left: 8.0, top: 32.0 ),
            children: <Widget> [
              Container(
                margin: EdgeInsets.only(bottom: 8.0),
                height: 170.0,
                child: Stack(
                  children: [
                    const Positioned(
                      top: 18.0,
                      left: 10.0,
                      child: Text("Lighthouse\nDelivery",
                        style: TextStyle(
                            fontSize: 34,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        ),
                      ),
                    ),

                  ],
                ),
              ),
              const Divider(),
              DrawerTile(FontAwesomeIcons.bicycle, "Criar Nova Entrega", 0),
              const Divider(),
              DrawerTile(Icons.self_improvement_outlined, "Reputação",1),
              const Divider(),
              DrawerTile(FontAwesomeIcons.locationArrow, "Localizar a loja",2),
              const Divider(),
              DrawerTile(Icons.policy, "Politica de Privacidade",3),

            ],
          ),

        ],
      ),
    );
  }
}