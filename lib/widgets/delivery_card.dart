import 'package:flutter/material.dart';
import 'package:lighthouse_delivery/colors_schemas.dart';
import 'package:lighthouse_delivery/models/delivery.dart';

class DeliveryCard extends StatelessWidget {
  Delivery delivery;

  DeliveryCard({Key? key, required this.delivery}) : super(key: key);

  //get name => null;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: Colors.orange,
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5.0),
                          child: Text(
                            "\$ 3,00",
                            style: TextStyle(
                                fontSize: 20, color: lightColorScheme.primary),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 18.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.timelapse),
                              Text(
                                "18:45",
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    height: 120,
                    width: 90,
                  ),
                  //Divider(height: 30, thickness: 1, color: Colors.grey,),
                  Container(
                    height: 80,
                    width: 1,
                    color: Colors.grey,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                            ),
                            Text(
                                "${delivery.companyName} - R. Joao P. Costa 338")
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.local_convenience_store_outlined),
                            Text("R. Santa rita de cassia 338 - Trevo")
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(5, 20, 0, 0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Pacotes: 2"),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text("Peso: 2kg"),
                              ),
                              Text("Tipo: sacola"),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Row(),
            ],
          ),
        ),
      ),
    );
  }
}
