import 'package:flutter/material.dart';
class  Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder:(context,constraints){
        if(constraints.maxWidth>1200){
          return DesktopNavbar();
        }else if(constraints.maxWidth>800 && constraints.maxWidth<1200){
          return DesktopNavbar();
        }else{
          return MobileNavbar();
        }
      },
    );
  }
}
class DesktopNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.symmetric(vertical: 20, horizontal:40),
    child: Container(
      constraints: BoxConstraints(maxWidth: 1200),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
        Text("Tanmoy", style: TextStyle(
          fontWeight:FontWeight.bold,
          color: Colors.black,
          fontSize: 30,
         ),
         ),
         Row(
           children: [
              Text("Resume", style: TextStyle(color:Colors.black),),
              SizedBox(width:30,),
              Text("Work", style: TextStyle(color:Colors.black),),
              
              
         ],)
      ],
      ),
    ),
    );
  }
}

class MobileNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}