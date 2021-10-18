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
        body: const Center(
          child: Text(
            'Body do App',
            textDirection: TextDirection.rtl,
          ),
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
