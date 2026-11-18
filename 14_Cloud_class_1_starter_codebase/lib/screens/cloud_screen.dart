import 'package:flutter/material.dart';

class CloudScreen extends StatefulWidget {
  @override
  _CloudScreenState createState() => _CloudScreenState();
}

class _CloudScreenState extends State<CloudScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.close),
              onPressed: () {
                //Implement logout functionality
              }),
        ],
        title: Text('⚡Cloud'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(
                    Icons.cloud,
                    size: 42.0,
                    color: Colors.lightBlueAccent,
                  ),
                  Icon(
                    Icons.cloud_queue,
                    size: 28.0,
                    color: Colors.white54,
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(
                    Icons.cloud,
                    size: 90.0,
                    color: Colors.lightBlueAccent,
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  Text(
                    'Your cloud contents here.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  Text(
                    'This is the cloud screen. The cloud items go in here.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(
                    Icons.cloud_outlined,
                    size: 34.0,
                    color: Colors.white38,
                  ),
                  Icon(
                    Icons.cloud,
                    size: 52.0,
                    color: Colors.lightBlueAccent,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
