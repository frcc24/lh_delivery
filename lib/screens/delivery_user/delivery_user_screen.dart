import 'package:flutter/material.dart';
import 'package:lighthouse_delivery/colors_schemas.dart';
import 'package:lighthouse_delivery/widgets/custom_transport_card.dart';

class DeliveryUserScreen extends StatefulWidget {
  const DeliveryUserScreen({Key? key}) : super(key: key);

  @override
  State<DeliveryUserScreen> createState() => _DeliveryUserScreenState();
}

class _DeliveryUserScreenState extends State<DeliveryUserScreen> {
  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(
      color: Colors.white70,
      fontSize: 20,
    );

    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          centerTitle: false,
          title: Text("Bem vindo, Samuel Cesário"),
          actions: [],
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(40)),
              child: Container(
                color: lightColorScheme.primary,
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: SizedBox(
                    height: 100,
                    child: CircleAvatar(
                      backgroundColor: Colors.white12,
                      child: Icon(
                        Icons.person,
                        size: 50,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.grey[300],
              child: Column(
                children: [
                  SizedBox(
                    height: 18,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      color: lightColorScheme.primary,
                      child: Padding(
                        padding: const EdgeInsets.all(38.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              //crossAxisAlignment: CrossAxisAlignment.stretch,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Seu Saldo,",
                                  style: textStyle,
                                ),
                                Text(
                                  "R\$ 200,00",
                                  style: textStyle,
                                ),
                              ],
                            ),
                            Icon(
                              Icons.account_balance_wallet_outlined,
                              size: 50,
                              color: Colors.white70,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text("Seus meios de transporte"),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomTransportCard(icon: Icons.bike_scooter),
                      CustomTransportCard(icon: Icons.car_rental),
                      CustomTransportCard(
                          icon: Icons.airplanemode_active_outlined),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text("Sua Reputação"),
                  SizedBox(
                    height: 12,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Icon(
                                Icons.emoji_emotions_outlined,
                                size: 100,
                                color: lightColorScheme.primary,
                              ),
                              Text("25%"),
                            ],
                          ),
                          Column(
                            children: [
                              Icon(
                                Icons.face,
                                size: 100,
                                color: lightColorScheme.secondary,
                              ),
                              Text("75%"),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 18,
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
