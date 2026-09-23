import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audioplayers.dart';



void main() {
  runApp( MusicApp(),);
}


class MusicApp extends StatelessWidget {
  const MusicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: GestureDetector(
              onTap: (){
                final player = AudioPlayer();
                player.play(AssetSource('note1.wav'));              },
              child: Container(
                color: Colors.red,
              ),
            )
        ),
      ),
    );
  }
}
