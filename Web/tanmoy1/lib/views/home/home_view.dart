import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:tanmoy1/views/home/home_content_mobile.dart';
import 'package:tanmoy1/widgets/centered_view/centered_view.dart';
import 'package:tanmoy1/widgets/containt_details/containt_details.dart';
import 'package:tanmoy1/widgets/navigation_bar/navigation_bar.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CenteredView(
        child: Column(
          children: [
            NavigationBar(),
            Expanded(
              child: ScreenTypeLayout(
                mobile: HomeContentMobile(),
                desktop: HomeContentMobile(),
              )
            )
          ],
        ),
      ),
    );
  }
}
