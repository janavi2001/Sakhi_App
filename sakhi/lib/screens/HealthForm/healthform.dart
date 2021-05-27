import 'package:flutter/material.dart';
import './body.dart';

//void main() => runApp(MyApp());

class HealthForm extends StatelessWidget {
  @override //overriding the method
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Colors.yellow),
        home: HealthScreen());
  }
}
