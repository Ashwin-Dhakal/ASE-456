import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('NKU App'),
          backgroundColor: Colors.blue,
        ),
        body: Center(
            child: Image(
                image: NetworkImage('https://www.nku.edu/marcomm/_images/1854975538.jpg'),
            ),
        ),
      )
  ),
  );
}
