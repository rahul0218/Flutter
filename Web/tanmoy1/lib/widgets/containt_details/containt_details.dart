import 'package:flutter/material.dart';

class ContaintDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1200,
      color: Colors.blue,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Use Experiance ', style: TextStyle(fontWeight: FontWeight.w900, height: 0.9,fontSize: 50),),
          Image.asset(
        "assets/images/Designercp.png",
        height: 50,
        width: 200,
      ),
        ],
      ),
    );
  }
}