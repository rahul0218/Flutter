import 'package:flutter/material.dart';

import '../../widgets/containt_details/containt_details.dart';

class HomeContentMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ContaintDetails()
      ],      
    );
  }
}