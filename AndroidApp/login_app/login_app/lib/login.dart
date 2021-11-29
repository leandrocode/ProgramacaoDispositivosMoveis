// ignore_for_file: prefer_const_constructors, unnecessary_new, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:login_app/address_form.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var user = "Leandro";
  var senha = "123";
  var usuario = TextEditingController();
  var passwd = TextEditingController();
  bool validaUser = true;
  bool validaSenha = true;

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
                controller: usuario,
                autofocus: true,
                keyboardType: TextInputType.text,
                style: new TextStyle(color: Colors.black87, fontSize: 20),
                decoration: InputDecoration(
                  icon: new Icon(Icons.person),
                  errorText: validaUser ? "Preencha este campo" : null,
                  labelText: 'Usuário',
                  hintText: 'Digite seu Usuário',
                  hintStyle: TextStyle(color: Colors.black87, fontSize: 15),
                  labelStyle: TextStyle(color: Colors.black87),
                ),
              ),
              Divider(),
              TextFormField(
                controller: passwd,
                autofocus: true,
                obscureText: true,
                keyboardType: TextInputType.text,
                style: new TextStyle(color: Colors.black87, fontSize: 20),
                decoration: InputDecoration(
                  icon: new Icon(Icons.keyboard),
                  errorText: validaSenha ? "Preencha este campo" : null,
                  labelText: 'Senha',
                  labelStyle: TextStyle(color: Colors.black87),
                ),
              ),
              Divider(),
              ButtonTheme(
                height: 60.0,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (usuario.text.isEmpty || passwd.text.isEmpty) {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: Text("Erro !!!"),
                            content: Text("Usuário e/ou senha inválidos"),
                            actions: [
                              ElevatedButton(
                                onPressed: () {
                                  /* variavelDialog.dispose(); */
                                },
                                child: Text("OK"),
                              )
                            ],
                          ),
                        );
                      } else {
                        if (usuario.text == user && passwd.text == senha) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AddressForm(),
                            ),
                          );
                        }
                      }
                    });
                  },
                  child: const Text('Entrar'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
