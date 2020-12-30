import 'package:flutter/material.dart';
import 'package:tanmoypal/Navbar/Footer.dart';
import 'package:tanmoypal/Navbar/Navbar.dart';
import 'package:tanmoypal/LandingPage/Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tanmoy',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        
        child: Column(
          children: <Widget>[Navbar(),Home(),Footer()],
        ),
      ),
    );
  }
}


