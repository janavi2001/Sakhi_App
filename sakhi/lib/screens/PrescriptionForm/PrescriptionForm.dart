import 'package:flutter/material.dart';
import 'package:sakhi/screens/PrescriptionForm/body.dart';
import './body.dart';

class PrescriptionForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Colors.yellow),
        home: Body());
  }
}
