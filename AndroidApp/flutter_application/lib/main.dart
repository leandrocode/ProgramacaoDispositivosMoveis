// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MeuApp2());
}

class MeuApp extends StatelessWidget {
  const MeuApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Meu APPBAR',
            textDirection: TextDirection.ltr,
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment
                .spaceEvenly, //criar espaçamento igual entre os elementos
            children: <Widget>[
              Expanded(
                child: Text(
                  "Testando a Coluna da Esquerda",
                  textDirection: TextDirection.ltr,
                ),
              ),
              Expanded(
                child: Text(
                  "Testando a Coluna da Direita",
                  textDirection: TextDirection.ltr,
                ),
              ),
              Expanded(
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: FlutterLogo(),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Botão 1"),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            height: 30.0,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}

class MeuApp2 extends StatelessWidget {
  const MeuApp2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Minha Aplicação 2"),
        ),
        body: Container(
          child: campoTexto(),
        ),
      ),
    );
  }

//método que retorna um text field
  campoTexto() {
    return TextField(
      autofocus: true,
      decoration: InputDecoration(
          border: InputBorder.none,
          icon: Icon(Icons.person),
          hintText: "Adicione uma pessoa"),
    );
  }
}

//Criar um novo stateless widget com widget padrao e
//Chamar este widget no home
