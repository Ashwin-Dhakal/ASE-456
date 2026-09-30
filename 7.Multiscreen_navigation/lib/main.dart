
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(WeatherApp(),);
}


class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('SUNNY')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.cloud,
            size: 80,
            color: Colors.blue,
            ),
            SizedBox(height: 30,),
            Text(
              'welcome to the weather App',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20,),

            ElevatedButton(
              onPressed: ()
            {
              print('button pressed');
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WeatherPage(),
                  ),
              );
            }, child: Text('Check my Weather'),
            ),

          ],
        ),
      ),
    );
  }
}


class WeatherPage extends StatelessWidget {
  const WeatherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Current Weather')),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.wb_cloudy,
                size: 80,
                color: Colors.lightBlue,
              ),
              SizedBox(height: 20,),
              Text(
                  'Cincinnati',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20,),
              Text(
                '72°F',
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                  'Partly Cloudy',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20,),
              
              Text('Humidity: 65%',),

              SizedBox(height: 20,),

              ElevatedButton(onPressed: ()
                {
                 print('back button pressed');
                 Navigator.pop(context);
                },
                child: Text('Back to Home'),),


            ],
          ),
      ),

    );
  }
}
