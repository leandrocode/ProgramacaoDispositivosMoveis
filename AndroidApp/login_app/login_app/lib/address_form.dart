import 'package:flutter/material.dart';

class AddressForm extends StatefulWidget {
  const AddressForm({Key? key}) : super(key: key);

  @override
  _AddressFormState createState() => _AddressFormState();
}

class _AddressFormState extends State<AddressForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Endereço',
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
                  icon: new Icon(Icons.arrow_forward_outlined),
                  labelText: 'CEP',
                  hintText: 'Digite seu CEP',
                  hintStyle: TextStyle(color: Colors.black87, fontSize: 15),
                  labelStyle: TextStyle(color: Colors.black87),
                ),
              ),
              Divider(),
              TextFormField(
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
                autofocus: true,
                keyboardType: TextInputType.text,
                style: new TextStyle(color: Colors.black87, fontSize: 20),
                decoration: InputDecoration(
                  icon: new Icon(Icons.arrow_forward_outlined),
                  labelText: 'Número',
                  hintText: 'Digite o Número',
                  hintStyle: TextStyle(color: Colors.black87, fontSize: 15),
                  labelStyle: TextStyle(color: Colors.black87),
                ),
              ),
              Divider(),
              TextFormField(
                autofocus: true,
                keyboardType: TextInputType.text,
                style: new TextStyle(color: Colors.black87, fontSize: 20),
                decoration: InputDecoration(
                  icon: new Icon(Icons.home),
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
