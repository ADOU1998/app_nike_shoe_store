import 'package:app_nike_shoe_store/pages/itemPage.dart';
import 'package:flutter/material.dart';
import 'package:app_nike_shoe_store/pages/LoginPage.dart';
import 'package:app_nike_shoe_store/pages/HomePage.dart';
import 'package:app_nike_shoe_store/pages/RegisterPage.dart';

var _couleurPrin = Color(0xFFCEDDEE);

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: _couleurPrin,
      ),
      routes: {
        "/": (context) => LoginPage(),
        "homePage": (context) => HomePage(),
        "registerPage": (context) => RegisterPage(),
        "itemPage": (context) => itemPage(),
      },
    );
  }
}
