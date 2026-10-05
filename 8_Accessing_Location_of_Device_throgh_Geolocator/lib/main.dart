
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

void main() {
  runApp(NetworkingApp(),);
}


class NetworkingApp extends StatelessWidget {
  const NetworkingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final LocationSettings locationSettings = LocationSettings(
    accuracy: LocationAccuracy.low,
    distanceFilter: 100,
  );

  void getLocation() async{
    //Ask for permission
    LocationPermission permission = await Geolocator.requestPermission();

    Position position = await Geolocator.getCurrentPosition(locationSettings: locationSettings);
    print(position);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Netowrking App')),
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
              'welcome to the Networking App',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20,),

            ElevatedButton(
              onPressed: ()
              {
                print('Location button pressed');
                getLocation();
              }, child: Text('Check Location'),
            ),
          ],
        ),
      ),
    );
  }
}

