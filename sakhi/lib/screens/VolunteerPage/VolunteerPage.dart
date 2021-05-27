import 'package:flutter/material.dart';
import 'package:sakhi/screens/VolunteerPage/body.dart';

//void main() => runApp(new MyApp());

class VolunteerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Patients',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: new Body(),
    );
  }
}
