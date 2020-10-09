import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  GlobalKey _bottomNavigationKey = GlobalKey();
  int _selectedIndex = 0;

  static List<Widget> _widgetsOptions = <Widget>[
    Text(
      'Home',
      style: TextStyle(fontSize: 20, color: Colors.white),
    ),
    Text(
      'Book',
      style: TextStyle(fontSize: 20, color: Colors.white),
    ),
    Text(
      'Code',
      style: TextStyle(fontSize: 20, color: Colors.white),
    ),
    Text(
      'Profile',
      style: TextStyle(fontSize: 20, color: Colors.white),
    ),
  ];

  void _onItemSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Navigation'),
          ),
          bottomNavigationBar: CurvedNavigationBar(
            key: _bottomNavigationKey,
            index: 0,
            height: 65,
            items: [
              Icon(
                Icons.home,
                size: 30,
              ),
              Icon(
                Icons.menu_book_rounded,
                size: 30,
              ),
              Icon(
                Icons.code_rounded,
                size: 30,
              ),
              Icon(
                Icons.person_rounded,
                size: 30,
              )
            ],
            color:  Colors.white,
            buttonBackgroundColor: Colors.white,
            backgroundColor: Colors.blueAccent,
            onTap: _onItemSelected,
          ),
          body: Container(
            color: Colors.blueAccent,
            child: Center(
              child: _widgetsOptions.elementAt(_selectedIndex),
            ),
          ),
        ),
      ),
    );
  }
}
