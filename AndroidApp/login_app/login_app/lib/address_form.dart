// ignore_for_file: prefer_const_constructors, unnecessary_new

import 'package:flutter/material.dart';

class AddressForm extends StatefulWidget {
  const AddressForm({Key? key}) : super(key: key);

  @override
  AddressFormState createState() => AddressFormState();
}

class AddressFormState extends State<AddressForm> {
  var cep = TextEditingController();
  var rua = TextEditingController();
  var numero = TextEditingController();
  var bairro = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Cadastro',
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
                controller: cep,
                autofocus: true,
                keyboardType: TextInputType.number,
                style: new TextStyle(color: Colors.black87, fontSize: 20),
                decoration: InputDecoration(
                  icon: new Icon(Icons.mail_outlined),
                  labelText: 'CEP',
                  hintText: 'Digite seu CEP',
                  hintStyle: TextStyle(color: Colors.black87, fontSize: 15),
                  labelStyle: TextStyle(color: Colors.black87),
                ),
              ),
              Divider(),
              TextFormField(
                controller: rua,
                autofocus: true,
                keyboardType: TextInputType.text,
                style: new TextStyle(color: Colors.black87, fontSize: 20),
                decoration: InputDecoration(
                  icon: new Icon(Icons.room_outlined),
                  labelText: 'Rua',
                  hintText: 'Digite o nome da Rua',
                  hintStyle: TextStyle(color: Colors.black87, fontSize: 15),
                  labelStyle: TextStyle(color: Colors.black87),
                ),
              ),
              Divider(),
              TextFormField(
                controller: numero,
                autofocus: true,
                keyboardType: TextInputType.number,
                style: new TextStyle(color: Colors.black87, fontSize: 20),
                decoration: InputDecoration(
                  icon: new Icon(Icons.arrow_forward_outlined),
                  labelText: 'N??mero',
                  hintText: 'Digite o N??mero',
                  hintStyle: TextStyle(color: Colors.black87, fontSize: 15),
                  labelStyle: TextStyle(color: Colors.black87),
                ),
              ),
              Divider(),
              TextFormField(
                controller: bairro,
                autofocus: true,
                keyboardType: TextInputType.text,
                style: new TextStyle(color: Colors.black87, fontSize: 20),
                decoration: InputDecoration(
                  icon: new Icon(Icons.home_outlined),
                  labelText: 'Bairro',
                  hintText: 'Digite o nome do Bairro',
                  hintStyle: TextStyle(color: Colors.black87, fontSize: 15),
                  labelStyle: TextStyle(color: Colors.black87),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
