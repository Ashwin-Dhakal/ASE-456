import 'package:flutter/material.dart';

void main() {
  runApp(MusicApp(),);
}

class MusicApp extends StatelessWidget {
  const MusicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(),),
      ),
    );
  }
}
