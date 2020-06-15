import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/video_screen.dart';
import 'screens/tomorrow_weather.dart';
import 'screens/yesterday_weather.dart';
import 'screens/today_weather.dart';
import 'models/moore_database.dart';
import 'screens/loading_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => AppDatabase(),
      child: MaterialApp(
        title: 'Weather Demo App',
        theme: ThemeData(
          primaryColor: Color.fromRGBO(0, 0, 0, 1),
          textTheme: TextTheme(
            headline: const TextStyle(
              fontFamily: 'Roboto',
              fontSize: 34.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            title: const TextStyle(
              fontFamily: 'Roboto',
              fontSize: 24.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            body1: const TextStyle(
              fontFamily: 'Roboto',
              fontSize: 16.0,
              color: Colors.white,
            ),
            button: const TextStyle(
              fontFamily: 'Roboto',
              fontSize: 14.0,
              color: Colors.black,
            ),
          ),
        ),
        home: LoadingScreen(),
        routes: {
          WeatherToday.routeName: (ctx) => WeatherToday(),
          WeatherYesterday.routeName: (ctx) => WeatherYesterday(),
          WeatherTomorrow.routeName: (ctx) => WeatherTomorrow(),
          VideoScreen.routeName: (ctx) => VideoScreen(),
        },
      ),
    );
  }
}
