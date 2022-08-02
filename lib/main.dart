import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(scaffoldBackgroundColor: Colors.blue[100]),
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue[200],
            title: const Text(
              'Weather Forecast',
              style: TextStyle(color: Colors.black),
            ),
            centerTitle: true,
          ),
          body: Column(
            children: [
              _EnterCityName(),
              _CityDetail(),
              SizedBox(height: 20.0),
              _TemperatureDetail(),
              SizedBox(height: 30.0),
              _WeatherDetail(),
              SizedBox(height: 40.0),
              Text(
                '7-DAY WEATHER FORECAST',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ));
  }
}

class _WeatherDetail extends StatelessWidget {
  const _WeatherDetail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Icon(
              Icons.sunny,
              size: 40,
            ),
            SizedBox(height: 8),
            Text(
              '3',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              'm/s',
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
        Column(
          children: [
            Icon(
              Icons.wb_cloudy,
              size: 40,
            ),
            SizedBox(height: 8),
            Text(
              '4',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              'm/s',
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
        Column(
          children: [
            Icon(
              Icons.water_drop,
              size: 40,
            ),
            SizedBox(height: 8),
            Text(
              '2',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              'm/s',
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
      ],
    );
  }
}

class _TemperatureDetail extends StatelessWidget {
  const _TemperatureDetail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.sunny,
          size: 70,
        ),
        SizedBox(width: 20.0),
        Column(
          children: [
            Text('+23°C',
                style: TextStyle(fontSize: 48, fontWeight: FontWeight.w300)),
            Text('CLEAR',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300)),
          ],
        ),
      ],
    );
  }
}

class _CityDetail extends StatelessWidget {
  const _CityDetail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Saratov region, RU',
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.w300),
        ),
        SizedBox(height: 10.0),
        Text(
          'Mondey, Aug 01, 2022',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
        ),
      ],
    );
  }
}

class _EnterCityName extends StatelessWidget {
  const _EnterCityName({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Enter City Name',
          contentPadding: EdgeInsets.all(20.0),
          icon: Icon(Icons.search),
        ),
      ),
    );
  }
}
