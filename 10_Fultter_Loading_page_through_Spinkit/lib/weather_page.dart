import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


// PAGE 2: WEATHER PAGE

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  bool is_loading = true;
  @override
  void initState (){
    super.initState();
    loadWeather();
  }
  loadWeather() async{
    await Future.delayed(Duration(seconds: 10));

    setState(() {
      is_loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Current Weather')),
      ),
      body: is_loading ?
          SpinKitDualRing(
            color: Colors.blue,
            size: 60,
          )



      :Center(
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

