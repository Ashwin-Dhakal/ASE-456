import 'package:flutter/material.dart';
import 'package:note_keeping_class1/screens/note_list.dart';
import 'package:note_keeping_class1/screens/note_detail.dart';



void main() {
  runApp(NoteKeepingApp());
}

class NoteKeepingApp extends StatelessWidget {
  const NoteKeepingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NoteKeepingApp',
      home: NoteDetail(),
    );
  }
}
