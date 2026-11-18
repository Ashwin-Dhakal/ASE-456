import 'package:flutter/material.dart';
import 'package:cloud_flutter_nov18/screens/welcome_screen.dart';
import 'package:cloud_flutter_nov18/screens/login_screen.dart';
import 'package:cloud_flutter_nov18/screens/registration_screen.dart';
import 'package:cloud_flutter_nov18/screens/cloud_screen.dart';


void main() => runApp(FlutterCloud());

class FlutterCloud extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          bodyMedium: TextStyle(color: Colors.black54),
        ),
      ),
      home: WelcomeScreen(),
    );
  }
}
