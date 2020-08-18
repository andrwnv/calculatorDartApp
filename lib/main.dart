import 'package:flutter/material.dart';

import 'views/calculator.dart';

void main() {
  runApp(MaterialApp(
    title: 'Calculator',
    theme: ThemeData(
      primarySwatch: Colors.blue,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
    home: Calculator(),
  ));
}
