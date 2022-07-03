
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lighthouse_delivery/screens/login/login_screen.dart';


import '../tiles/drawer_tile.dart';
class CustomDrawer extends StatefulWidget {


  CustomDrawer( );

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {

  Widget _buildDrawerBack() => Container(

    decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Theme.of(context).secondaryHeaderColor ,
            Theme.of(context).primaryColor   ,

          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomCenter,
        )
    ),
  );

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.horizontal(right: Radius.circular(40)),
      child: Drawer(
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
                      Positioned(
                        top: 45.0,
                        left: 16.0,
                        child: Text("Lighthouse\nDelivery",
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
                      Positioned(
                        child: GestureDetector(
                          onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (_) =>  LoginScreen()));},
                          child: Column(
                          children: [
                            Icon(Icons.person, size: 50, color: Theme.of(context).primaryColor,),
                            Text("Login", style: TextStyle(color: Theme.of(context).primaryColor),)
                          ],
                      ),
                        ), right: 32, top: 50,)

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
      ),
    );
  }
}