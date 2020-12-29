import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  List<Widget> pageChildren() {
    return <Widget>[
      Container(
        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          
          children: [
            Text(
              "User Experience",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0,
                  color: Colors.black),
            ),
            Image.asset(
              "assets/images/logo@2x.png",
              height: 100,
              width: 100,
            ),
            Text("Tanmoy Pal")
          ],
        ),
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: pageChildren(),
          );
        } else {
          return Column(
            children: pageChildren(),
          );
        }
      },
    );
  }
}
