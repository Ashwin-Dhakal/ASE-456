
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;


const openWeatherApiKey =
    String.fromEnvironment('OPENWEATHER_API_KEY');


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
  const HomePage({super.key});

  void geolocation () async{

    final LocationSettings locationSettings = LocationSettings(
      accuracy: LocationAccuracy.low,
      distanceFilter: 100,
    );

    LocationPermission permission = await Geolocator.requestPermission();

    Position position = await Geolocator.getCurrentPosition(locationSettings: locationSettings);
    print(position);

  }
  //HTTP and API codebase here
  void getData() async{
    http.Response response = await http.get(Uri.parse('https://api.openweathermap.org/data/2.5/weather?lat=39.03098917106994&lon=-84.46694755514534&appid=$openWeatherApiKey'));
    print(response.statusCode);
    print(response.body);



  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('HTTP and APIs')),
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
              'HTTP & APIs App',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20,),

            ElevatedButton(
              onPressed: ()
              {
                print('weather button pressed');
                getData();
                // geolocation();
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => WeatherPage(),
                //   ),
                // );
              }, child: Text('Check my Weather data'),
            ),

          ],
        ),
      ),
    );
  }
}

