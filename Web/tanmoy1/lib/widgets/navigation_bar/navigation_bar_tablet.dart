import 'package:flutter/material.dart';
import 'package:tanmoy1/widgets/navigation_bar/navbar_item.dart';
import 'package:tanmoy1/widgets/navigation_bar/navbar_logo.dart';



class NavigationBarTabletDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          NavBarLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              NavBarItem('Resume'),
              SizedBox(width: 60,),
                NavBarItem('About'),
            ],
          )
        ],
      ),
    );
  }
}