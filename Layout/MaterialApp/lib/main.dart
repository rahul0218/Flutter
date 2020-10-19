import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter layout demo'),
        ),
        body: 
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Hello World'),
            Image.asset(
              'images/lake.jpg',
              fit: BoxFit.cover,
            ),
            
            Row(
              
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                Icons.star,
                color: Colors.red[500],
              ),
              Icon(
                Icons.star,
                color: Colors.red[500],
              ),
              Icon(
                Icons.star,
                color: Colors.red[500],
              ),
              Icon(
                Icons.star,
                color: Colors.red[500],
              ),
              
              Icon(
                Icons.star,
                color: Colors.red[100],
              ),
              ],
            ),
            
          
          ],
           
        ),
        
      ),
    );
  }
}