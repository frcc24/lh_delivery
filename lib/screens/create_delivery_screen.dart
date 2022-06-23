import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CreateDeliveryScreen extends StatefulWidget {
  const CreateDeliveryScreen({Key? key}) : super(key: key);

  @override
  State<CreateDeliveryScreen> createState() => _CreateDeliveryScreenState();
}

class _CreateDeliveryScreenState extends State<CreateDeliveryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: Text("Criar entrega"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Text("Transporte", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
            Row(
              children: [
                Card(
                  color: Theme.of(context).colorScheme.secondaryContainer,
                  child: SizedBox(height: 70, width: 110,
                    child: Icon( Icons.bike_scooter,
                      size: 50,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
                Card(
                  color: Theme.of(context).colorScheme.secondaryContainer,
                  child: SizedBox(height: 70, width: 110,
                    child: Icon( Icons.airplanemode_active_outlined,
                      size: 50,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
                Card(
                  color: Theme.of(context).colorScheme.secondaryContainer,
                  child: SizedBox(height: 70, width: 110,
                    child: Icon( Icons.car_rental,
                      size: 50,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16,),
            Container(
              padding: EdgeInsets.only(left: 10.0, right: 10, top: 5, bottom: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white24,
              ),
              child: TextFormField(
                style: TextStyle(color: Colors.white,  fontSize: 18),
                //controller: _passController,
                validator: (text){
                  if(text!.isEmpty || text.length < 6) {
                    return "Invalid Password, cannot be less than 6 digits";
                  }
                },
                obscureText: false,
                decoration: InputDecoration(
                    icon: Icon(Icons.location_on_outlined, color: Theme.of(context).primaryColor,),
                    hintText: "Seu endereco ja preenchido",
                    focusColor: Colors.red,
                    border: InputBorder.none,
                    hintStyle: TextStyle(fontStyle: FontStyle.italic, color: Colors.black54, fontSize: 16)
                ),
              ),
            ),
            const SizedBox(height: 16,),
            Container(
              padding: EdgeInsets.only(left: 10.0, right: 10, top: 5, bottom: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white24,
              ),
              child: TextFormField(
                style: TextStyle(color: Colors.white,  fontSize: 18),
                //controller: _passController,
                validator: (text){
                  if(text!.isEmpty || text.length < 6) {
                    return "Invalid Password, cannot be less than 6 digits";
                  }
                },
                obscureText: false,
                decoration:  InputDecoration(
                    icon: Icon(Icons.location_history_outlined, color: Theme.of(context).primaryColor),
                    hintText: "Endereco destino",
                    focusColor: Colors.red,
                    border: InputBorder.none,
                    hintStyle: TextStyle(fontStyle: FontStyle.italic, color: Colors.black54, fontSize: 16)
                ),
              ),
            ),
            const SizedBox(height: 16,),
            Text("Opçoes Adicionais", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
            const SizedBox(height: 16,),
            Container(
              padding: EdgeInsets.only(left: 10.0, right: 10, top: 5, bottom: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white24,
              ),
              child: TextFormField(
                style: TextStyle(color: Colors.white,  fontSize: 18),
                //controller: _passController,
                validator: (text){
                  if(text!.isEmpty || text.length < 6) {
                    return "Invalid Password, cannot be less than 6 digits";
                  }
                },
                obscureText: false,
                decoration: InputDecoration(
                    icon: Icon(Icons.backpack_outlined, color: Theme.of(context).primaryColor,),
                    hintText: "Quantidade de pacotes",
                    focusColor: Colors.red,
                    border: InputBorder.none,
                    hintStyle: TextStyle(fontStyle: FontStyle.italic, color: Colors.black54, fontSize: 16)
                ),
              ),
            ),
            const SizedBox(height: 16,),
            Container(
              padding: EdgeInsets.only(left: 10.0, right: 10, top: 5, bottom: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white24,
              ),
              child: TextFormField(
                style: TextStyle(color: Colors.white,  fontSize: 18),
                //controller: _passController,
                validator: (text){
                  if(text!.isEmpty || text.length < 6) {
                    return "Invalid Password, cannot be less than 6 digits";
                  }
                },
                obscureText: false,
                decoration: InputDecoration(
                    icon: Icon(Icons.info_outline, color: Theme.of(context).primaryColor,),
                    hintText: "Observações",
                    focusColor: Colors.red,
                    border: InputBorder.none,
                    hintStyle: TextStyle(fontStyle: FontStyle.italic, color: Colors.black54 , fontSize: 16)
                ),
              ),
            ),
            const SizedBox(height: 16,),
            Text("Preço final da entrega", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
            const SizedBox(height: 8,),
            Text("\$ 3,00", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
            const SizedBox(height: 8,),
            Container(
              width: 240,
              padding: EdgeInsets.only(left: 10.0, right: 10, top: 5, bottom: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Theme.of(context).primaryColor,
              ),
              margin: const EdgeInsets.only(bottom: 10.0),
              child: FlatButton(
                onPressed: (){

                },

                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Text("Criar Entrega", style:
                  TextStyle(
                    fontFamily: 'Myriad',
                    letterSpacing: 1,
                    color: Theme.of(context).secondaryHeaderColor,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
