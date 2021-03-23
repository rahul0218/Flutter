import 'package:flutter/material.dart';

class ContaintDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 90, vertical:5),
      alignment: Alignment.topCenter,
      width: 1200,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(child: 
              Text(
                'Use Experiance ',
                style: TextStyle(
                    fontWeight: FontWeight.w100, height: 0.9, fontSize: 80),
              ),
              ),
              
            ],
          ),
          Row(
            children: [
              Image.asset(
                "assets/images/Designercp.png",
                height: 80,
                width: 300,
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Row( children:[
          Text(
            'Tanmoy Pal',
            style: TextStyle(fontSize: 21, height: 1.7),
          ),]),
          SizedBox(
            height: 50,
          ),
          Text(
            'I have always been intrigued by the psychology behind people’s problems and behaviours. This particular interest to pursue a career in UX. I am interested in learning more about how feelings, thoughts, and actions can be improved by good design. “Design is about 3 dimensions and 5 senses.” - Danielle Sacks',
            style: TextStyle(fontSize: 15, height: 1.5),
          ),
        ],
      ),
    );
  }
}
