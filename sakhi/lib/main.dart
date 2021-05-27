//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:sakhi/screens/VolunteerPage/VolunteerPage.dart';
import 'package:sakhi/screens/DoctorPage/DoctorPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SAKHI',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: LoginPage(title: 'SAKHI login screen'), //put the login screen here
    );
  }
}

/* add login home page here*/

class LoginPage extends StatefulWidget {
  LoginPage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Login Screen will come here',
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return VolunteerPage();
                    },
                  ),
                );
              },
              child: Text("Volunteer login here"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return DoctorPage();
                    },
                  ),
                );
              },
              child: Text("Doctor login here"),
            )
          ],
        ),
      ),
    );
  }
}
