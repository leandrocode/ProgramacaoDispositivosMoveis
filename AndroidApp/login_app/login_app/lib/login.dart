import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                autofocus: true,
                keyboardType: TextInputType.number,
                style: new TextStyle(color: Colors.white, fontSize: 20),
                decoration: InputDecoration(
                    labelText: 'Usuário',
                    labelStyle: TextStyle(color: Colors.white)),
              ),
              Divider(),
              TextFormField(
                autofocus: true,
                obscureText: true,
                keyboardType: TextInputType.text,
                style: new TextStyle(color: Colors.white, fontSize: 20),
                decoration: InputDecoration(
                    labelText: 'Senha',
                    labelStyle: TextStyle(color: Colors.white)),
              ),
              Divider(),
              ButtonTheme(
                height: 60.0,
                child: ElevatedButton(
                  onPressed: () => {},
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white)),
                  child: Text(
                    'Entrar',
                    style: TextStyle(color: Colors.deepPurple),
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
