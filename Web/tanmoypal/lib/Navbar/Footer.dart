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
            Image.asset(
              "assets/images/logo@2x.png",
              height: 100,
              width: 100,
            ),
            Row(
              children: [
                Text(
                  "Resume",
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(
                  width: 60,
                ),
                Text(
                  "Work",
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(
                  width: 60,
                ),
              ],
            )
          
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