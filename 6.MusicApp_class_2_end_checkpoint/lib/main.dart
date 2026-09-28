import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audioplayers.dart';


void main() {
  runApp(MusicApp(),);
}

class MusicApp extends StatelessWidget {
  const MusicApp({super.key});

  void playsound( int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded buildkey (color, soundNumber) {
    return Expanded(
      child: GestureDetector(
        onTap: (){
          playsound(soundNumber);
        },
        child: Container(
          color: color,
        ),
      ),
    );


  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
              children: [
                buildkey(Colors.red, 1),
                buildkey(Colors.orange, 2),
                buildkey(Colors.yellow, 3),
                buildkey(Colors.green, 4),
                buildkey(Colors.teal, 5),
                buildkey(Colors.blue, 6),
                buildkey(Colors.purple, 7),
    ],
            )
        ),
      ),
    );
  }
}
