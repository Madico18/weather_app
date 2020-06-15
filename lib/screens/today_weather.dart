import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../screens/tomorrow_weather.dart';
import '../screens/yesterday_weather.dart';
import '../models/moore_database.dart';
import '../constants.dart';

class WeatherToday extends StatefulWidget {
  static const routeName = '/today';
  @override
  _WeatherTodayState createState() => _WeatherTodayState();
}

class _WeatherTodayState extends State<WeatherToday> {
  @override
  Widget build(BuildContext context) {
    final database = Provider.of<AppDatabase>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Weather Demo App',
          style: const TextStyle(
            color: Colors.black,
            fontSize: 24.0,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: Colors.blueGrey[200],
      ),
      body: StreamBuilder<List<WeatherData>>(
          stream: database.watchWeather(),
          builder: (context, AsyncSnapshot<List<WeatherData>> snapshot) {
            final weather = snapshot.data ?? List();

            return ListView.builder(
                itemCount: weather.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: <Widget>[
                      SizedBox(
                        height: 20.0,
                      ),
                      Center(
                        child: weather[index].cityName == null
                            ? Text(
                                'CityName',
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 44.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            : Text(
                                '${weather[index].cityName}',
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 44.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        '${weather[index].tempToday} degrees',
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 24.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Image(
                            image: NetworkImage(imageUrl +
                                weather[index].weatherStateAbrToday +
                                '.png'),
                          ),
                          Text(
                            '${weather[index].weatherStateNameToday}',
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 24.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 50.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 0),
                            child: RaisedButton(
                              child: Text(
                                'yesterday',
                                style: Theme.of(context).textTheme.button,
                              ),
                              elevation: 5,
                              onPressed: () {
                                Navigator.pushNamed(
                                    context, WeatherYesterday.routeName);
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 0),
                            child: RaisedButton(
                              child: Text(
                                'tomorrow',
                                style: Theme.of(context).textTheme.button,
                              ),
                              elevation: 5,
                              onPressed: () {
                                Navigator.pushNamed(
                                    context, WeatherTomorrow.routeName);
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                });
          }),
    );
  }
}
