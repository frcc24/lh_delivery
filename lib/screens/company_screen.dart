import 'package:flutter/material.dart';

class CompanyScreen extends StatelessWidget {
  const CompanyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("SAMUCAS BAR"),
          actions: [],
        ),
        body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      Text("Bem vindo,"),
                      Text("Nome Usuario"),
                    ],
                  ),
                  Icon(Icons.alarm_add)
                ],
              ),
              SizedBox(height: 18,),
              Card(
                color: Colors.orangeAccent,
                child: Padding(
                  padding: const EdgeInsets.all(38.0),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text("Sua Conta até o momento,"),
                          Text("R\$ 31,30"),
                        ],
                      ),
                      Icon(Icons.account_balance_wallet_outlined, size: 50,)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 18,),
              Text("Meios de transporte Aceitos"),
              SizedBox(height: 18,),
              Row(
                children: [
                  Card(
                    color: Colors.white70,
                    child: SizedBox(height: 70, width: 110, child: Icon(Icons.bike_scooter),),
                  ),
                  Card(
                    color: Colors.white70,
                    child: SizedBox(height: 70, width: 110, child: Icon(Icons.car_rental),),
                  ),                Card(
                    color: Colors.white70,
                    child: SizedBox(height: 70, width: 110, child: Icon(Icons.airplanemode_active_outlined),),
                  ),

                ],
              ),
              SizedBox(height: 18,),
              Text("Sua Reputação"),
              SizedBox(height: 18,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 55.0, vertical: 10),
                        child: Column(
                          children: [
                            Icon(Icons.emoji_emotions_outlined, size: 70, color: Colors.green,),
                            Text("25%"),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 55.0, vertical: 10),
                        child: Column(
                          children: [
                            Icon(Icons.emoji_emotions, size: 70, color: Colors.redAccent,),
                            Text("75%"),
                          ],
                        ),
                      ),

                    ],
                  ),
                ],
              ),
              SizedBox(height: 18,),
            ],
          ),
        )
    );
  }
}
