import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  List<Widget> pageChildren() {
    return <Widget>[
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 90, horizontal: 150),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          
          children: [
            Text(
              "User Experience ",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0,
                  color: Colors.black),
            ),
            Image.asset(
              "assets/images/Designercp.png",
              height: 50,
              width: 200,
              
            ),
            
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
            mainAxisAlignment: MainAxisAlignment.start,
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
