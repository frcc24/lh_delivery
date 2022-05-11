import 'package:flutter/material.dart';
import 'package:lighthouse_delivery/screens/login_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Delivery"),
        actions: [
          IconButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginScreen()));
          }, icon: Icon(Icons.login))
        ],

      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text("Texto do Titulo do card"),
                        Text("Descricao")
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ListView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: SizedBox(
                                      child: Icon(Icons.emoji_food_beverage, size: 45,),
                                  height: 50,
                                  width: 50,),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Pedido Samucas"),
                                  Text("1 pacote"),
                                  Text("Valor frete: R\$ 3,00"),
                                  Text("Conteudo Fragil"),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: SizedBox(
                                      child: Icon(Icons.emoji_food_beverage, size: 45, color: Colors.red,),
                                  height: 50,
                                  width: 50,),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Pedido Samucas"),
                                  Text("1 pacote"),
                                  Text("Valor frete: R\$ 3,00"),
                                  Text("Conteudo Fragil"),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: SizedBox(
                                      child: Icon(Icons.fastfood,color: Colors.blue , size: 45,),
                                  height: 50,
                                  width: 50,),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Pedido Samucas"),
                                  Text("1 pacote"),
                                  Text("Valor frete: R\$ 3,00"),
                                  Text("Conteudo Fragil"),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],

            ),
          ),
        ),
      ),
    );
  }
}
