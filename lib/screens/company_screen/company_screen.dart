import 'package:flutter/material.dart';

import '../../colors_schemas.dart';
import '../../widgets/custom_transport_card.dart';

class CompanyScreen extends StatelessWidget {
  const CompanyScreen({Key? key}) : super(key: key);

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
          title: Text("Samucas Bar e Restaurante"),
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
                        Icons.store,
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
                                  " Total a pagar,",
                                  style: textStyle,
                                ),
                                Text(
                                  "R\$ 231,30",
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
                  Text("Seus meios de transporte aceitos"),
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
                  Text("Sua Reputa????o"),
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
