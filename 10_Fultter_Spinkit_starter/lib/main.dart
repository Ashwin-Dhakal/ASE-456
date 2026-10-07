
import 'package:flutter/material.dart';
import 'weather_page.dart';


void main() {
  runApp(WeatherApp(),);
}

// MAIN APP
class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}


// PAGE 1: HOMEPAGE
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

