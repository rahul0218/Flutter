import 'package:flutter/material.dart';

Widget headingSection = Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          "User Experience ",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 40.0, color: Colors.black),
        ),
        Image.asset(
          "assets/images/Designercp.png",
          height: 50,
          width: 200,
        ),
      ],
    ),
  );

  Widget nameSection = Container(
    child: Text("Tanmoy Pal"),
  );
  Widget textSection = Padding(
    
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 60),
      child:  
        Text('I have always been intrigued by the psychology behind people’s problems and behaviours.' 
      'This particular interest to pursue a career in UX. I am interested in learning more about how feelings,' 
      'thoughts, and actions can be improved by good design. “Design is about 3 dimensions and 5 senses.” - Danielle Sacks',
      ),
    
  );


class Home extends StatelessWidget {
  List<Widget> pageChildren() {
    return <Widget>[
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 90, horizontal: 150),
        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            headingSection,
            nameSection,
            textSection,
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
