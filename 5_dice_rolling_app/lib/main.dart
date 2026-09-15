import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Center(child: Text('Dice Game')),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    )
  );
}

// leftDiceNumber = 1;

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: TextButton(
                  onPressed: (){
                    setState(() {
                      leftDiceNumber = Random().nextInt(6)+1;  // 0-5  we need 1-6
                    });
                  },
                  child: Image.asset('images/dice$leftDiceNumber.png'))
          ),
          Expanded(
              child: TextButton(
                  onPressed: (){
                    setState(() {
                      rightDiceNumber = Random().nextInt(6)+1;  // 0-5  we need 1-6
                    });
                  },
                  child: Image.asset('images/dice$rightDiceNumber.png'))
          ),
        ],
      ),
    );
  }
}

