import 'package:flutter/material.dart';
import 'package:lighthouse_delivery/models/delivery.dart';

class CreateDeliveryScreen extends StatefulWidget {
  void Function() insert;
  List<Delivery> deliveryList;

  CreateDeliveryScreen(
      {Key? key, required this.insert, required this.deliveryList})
      : super(key: key);

  @override
  State<CreateDeliveryScreen> createState() => _CreateDeliveryScreenState();
}

class _CreateDeliveryScreenState extends State<CreateDeliveryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Criar entrega"),
      ),
      // drawer: CustomDrawer(),
      body: Card(
        margin: EdgeInsets.all(32),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Transporte",
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Card(
                    color: Theme.of(context).cardColor,
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Icon(Icons.bike_scooter),
                    ),
                  ),
                  Card(
                    color: Theme.of(context).cardColor,
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Icon(Icons.car_rental),
                    ),
                  ),
                  Card(
                    color: Theme.of(context).cardColor,
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Icon(Icons.airplanemode_active_outlined),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                padding:
                    EdgeInsets.only(left: 10.0, right: 10, top: 5, bottom: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Theme.of(context).primaryColor.withAlpha(25),
                ),
                child: TextFormField(
                  style: TextStyle(color: Colors.white, fontSize: 18),
                  //controller: _passController,
                  validator: (text) {
                    if (text!.isEmpty || text.length < 6) {
                      return "Invalid Password, cannot be less than 6 digits";
                    }
                  },
                  obscureText: false,
                  decoration: InputDecoration(
                      icon: Icon(
                        Icons.location_on_outlined,
                        color: Theme.of(context).primaryColor,
                      ),
                      hintText: "Seu endereco ja preenchido",
                      focusColor: Colors.red,
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                          fontStyle: FontStyle.italic,
                          color: Colors.black54,
                          fontSize: 16)),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                padding:
                    EdgeInsets.only(left: 10.0, right: 10, top: 5, bottom: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Theme.of(context).primaryColor.withAlpha(25),
                ),
                child: TextFormField(
                  style: TextStyle(color: Colors.white, fontSize: 18),
                  //controller: _passController,
                  validator: (text) {
                    if (text!.isEmpty || text.length < 6) {
                      return "Invalid Password, cannot be less than 6 digits";
                    }
                  },
                  obscureText: false,
                  decoration: InputDecoration(
                      icon: Icon(Icons.location_history_outlined,
                          color: Theme.of(context).primaryColor),
                      hintText: "Endereco destino",
                      focusColor: Colors.red,
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                          fontStyle: FontStyle.italic,
                          color: Colors.black54,
                          fontSize: 16)),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                "Opçoes Adicionais",
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                padding:
                    EdgeInsets.only(left: 10.0, right: 10, top: 5, bottom: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Theme.of(context).primaryColor.withAlpha(25),
                ),
                child: TextFormField(
                  style: TextStyle(color: Colors.white, fontSize: 18),
                  //controller: _passController,
                  validator: (text) {
                    if (text!.isEmpty || text.length < 6) {
                      return "Invalid Password, cannot be less than 6 digits";
                    }
                  },
                  obscureText: false,
                  decoration: InputDecoration(
                      icon: Icon(
                        Icons.backpack_outlined,
                        color: Theme.of(context).primaryColor,
                      ),
                      hintText: "Quantidade de pacotes",
                      focusColor: Colors.red,
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                          fontStyle: FontStyle.italic,
                          color: Colors.black54,
                          fontSize: 16)),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                padding:
                    EdgeInsets.only(left: 10.0, right: 10, top: 5, bottom: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Theme.of(context).primaryColor.withAlpha(25),
                ),
                child: TextFormField(
                  style: TextStyle(color: Colors.white, fontSize: 18),
                  //controller: _passController,
                  validator: (text) {
                    if (text!.isEmpty || text.length < 6) {
                      return "Invalid Password, cannot be less than 6 digits";
                    }
                  },
                  obscureText: false,
                  decoration: InputDecoration(
                      icon: Icon(
                        Icons.info_outline,
                        color: Theme.of(context).primaryColor,
                      ),
                      hintText: "Observações",
                      focusColor: Colors.red,
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                          fontStyle: FontStyle.italic,
                          color: Colors.black54,
                          fontSize: 16)),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                "Preço final da entrega",
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                "\$ 3,00",
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                //width: 300,
                //padding: EdgeInsets.only(left: 10.0, right: 10, top: 5, bottom: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Theme.of(context).primaryColor,
                ),
                // margin: const EdgeInsets.only(bottom: 10.0),
                child: RaisedButton(
                  color: Theme.of(context).primaryColor,
                  onPressed: () {
                    widget.deliveryList.insert(0, Delivery("teste"));
                    widget.insert();
                    Navigator.pop(context);
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: const Padding(
                    padding: EdgeInsets.all(14.0),
                    child: Text(
                      "Criar Entrega",
                      style: TextStyle(
                        fontFamily: 'Myriad',
                        letterSpacing: 1,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
