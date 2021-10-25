// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Meu APPBAR',
            textDirection: TextDirection.ltr,
          ),
        ),
        body: Row(
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
        bottomNavigationBar: BottomAppBar(
          child: Container(
            height: 30.0,
            color: Colors.blue,
          ),
        ),
      ),
    ),
  );
}
