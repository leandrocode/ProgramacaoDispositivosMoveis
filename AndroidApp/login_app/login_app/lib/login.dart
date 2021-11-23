import 'package:flutter/material.dart';
import 'package:login_app/address_form.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Login',
          textDirection: TextDirection.ltr,
        ),
      ),
      backgroundColor: Colors.blueGrey[50],
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                autofocus: true,
                keyboardType: TextInputType.text,
                style: new TextStyle(color: Colors.black87, fontSize: 20),
                decoration: InputDecoration(
                  icon: new Icon(Icons.person),
                  labelText: 'Usuário',
                  hintText: 'Digite seu Usuário',
                  hintStyle: TextStyle(color: Colors.black87, fontSize: 15),
                  labelStyle: TextStyle(color: Colors.black87),
                ),
              ),
              Divider(),
              TextFormField(
                autofocus: true,
                obscureText: true,
                keyboardType: TextInputType.number,
                style: new TextStyle(color: Colors.black87, fontSize: 20),
                decoration: InputDecoration(
                  icon: new Icon(Icons.keyboard),
                  labelText: 'Senha',
                  labelStyle: TextStyle(color: Colors.black87),
                ),
              ),
              Divider(),
              ButtonTheme(
                height: 60.0,
                child: ElevatedButton(
                  onPressed: () => {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => AddressForm())),
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                  ),
                  child: Text(
                    'Entrar',
                    style: TextStyle(color: Colors.black),
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
