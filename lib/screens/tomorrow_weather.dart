import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../screens/video_screen.dart';
import '../models/moore_database.dart';
import '../constants.dart';

class WeatherTomorrow extends StatefulWidget {
  static const routeName = '/tomorrow';

  @override
  _WeatherTomorrowState createState() => _WeatherTomorrowState();
}

class _WeatherTomorrowState extends State<WeatherTomorrow> {
  @override
  Widget build(BuildContext context) {
    final database = Provider.of<AppDatabase>(context);
    return Scaffold(
      appBar: AppBar(
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
                        '${weather[index].tempTomor} degrees',
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
                                weather[index].weatherStateAbrTomor +
                                '.png'),
                          ),
                          Text(
                            '${weather[index].weatherStateNameTomor}',
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
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 0),
                        child: RaisedButton(
                          child: Text(
                            'video',
                            style: Theme.of(context).textTheme.button,
                          ),
                          elevation: 5,
                          onPressed: () {
                            Navigator.pushNamed(context, VideoScreen.routeName);
                          },
                        ),
                      ),
                    ],
                  );
                });
          }),
    );
  }
}
