import 'package:flutter/material.dart';
import 'package:login_app/login.dart';

void main() {
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login App',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: Login(),
    );
  }
}
