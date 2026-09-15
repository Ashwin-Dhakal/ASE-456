import 'package:flutter/material.dart';

void main(){
  runApp (MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: SafeArea(
          child: Container(
            color: Colors.red,
            child: Text('Stateless'),
          ),
        ),
      ),
    );
  }
}
