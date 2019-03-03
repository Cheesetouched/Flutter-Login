import 'package:flutter/material.dart';
import 'package:flutter_login/login.dart';
import 'package:flutter_login/register.dart';
import 'package:flutter_login/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String,WidgetBuilder> {
    Login.tag: (context) => new Login(),
    Register.tag: (context) => new Register(),
    Home.tag: (context) => new Home()
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Login',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue
      ),
      home: Login(),
      routes: routes,
    );
  }
}