import 'package:flutter/material.dart';
import 'package:lighthouse_delivery/screens/home/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Card(
            //color:theme.primaryColor,
            elevation: 8,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
            margin: EdgeInsets.symmetric(horizontal: 32),
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Acessar com email",
                    textAlign: TextAlign.center,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 3, bottom: 4, top: 8),
                    child: Text(
                      "Email",
                      style: TextStyle(
                          color: Colors.grey[900],
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), isDense: true),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 3, bottom: 4, top: 8),
                        child: Text(
                          "Senha",
                          style: TextStyle(
                              color: Colors.grey[900],
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Text('Esqueceu sua senha')
                    ],
                  ),
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), isDense: true),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: 40,
                    child: RaisedButton(
                      color: Theme.of(context).primaryColor,
                      onPressed: () => {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => HomeScreen()))
                      },
                      child: Text("Entrar"),
                      textColor: Colors.white70,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Divider(),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      children: [
                        Text("Nao tem uma conta? "),
                        GestureDetector(
                          onTap: () {},
                          child: Text("Criar"),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
