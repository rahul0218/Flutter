import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopFooter();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopFooter();
        } else {
          return MobileFooter();
        }
      },
    );
  }
}
class DesktopFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding( padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 60),
      child: Container(
        
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          
          children: <Widget>[
            Row(
              children: [
                Text(
                  "Linkdin",
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(
                  width: 60,
                ),
                Text(
                  "About Me",
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(
                  width: 60,
                ),
              ],
            ),
            const SizedBox(height: 30),
        OutlineButton(
          borderSide: BorderSide(
          color: Colors.blue,),
          textColor: Colors.blue,
          onPressed: () {},
          child: const Text(
            'Hire Me',
            style: TextStyle(fontSize: 12),
            
          ),
          
        ),
            
          
          ],
        ),
      ),
    );
  }
}

class MobileFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}