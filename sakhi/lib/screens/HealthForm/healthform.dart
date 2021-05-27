import 'package:flutter/material.dart';
import './body.dart';

class HealthForm extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Colors.yellow),
        home: HealthScreen());
  }
}
