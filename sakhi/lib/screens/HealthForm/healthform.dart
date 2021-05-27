import 'package:flutter/material.dart';
import './body.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override //overriding the method
  Widget build(BuildContext context) {
    
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.yellow),
      home: HealthScreen());
  }
}