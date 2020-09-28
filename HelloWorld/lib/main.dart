import 'package:flutter/material.dart';

void main() {
  runApp(
    Center(
      child: Text('Hello,! How are you?',
      textAlign: TextAlign.center,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(fontWeight: FontWeight.bold),
      textDirection: TextDirection.ltr
      ),
    ),
  );
}
