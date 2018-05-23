import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/category_route.dart';



void main() {
  runApp(UnitConverterApp());
}

class UnitConverterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Unit Converter',
      home: Scaffold(
     //   backgroundColor: Colors.green[100],
        body: CategoryRoute(),
      ),
    );
  }
}
