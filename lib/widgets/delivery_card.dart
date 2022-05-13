import 'package:flutter/material.dart';

class DeliveryCard extends StatelessWidget {
  const DeliveryCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        color: Colors.red,
        child: Card(
          margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 18.0),
                          child: Text("\$ 3,00" , style: TextStyle(fontSize: 20, color: Colors.grey),),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 18.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.timelapse),
                              Text("18:45",),

                            ],
                          ),
                        )
                      ],
                    ),
                    height: 120,
                    width: 90,
                  ),
                  //Divider(height: 30, thickness: 1, color: Colors.grey,),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon( Icons.location_on_outlined, ),
                            Text("Samucas - R. Joao P. Costa 338")
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon( Icons.local_convenience_store_outlined),
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
                                padding: const EdgeInsets.symmetric(horizontal: 8.0),
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
