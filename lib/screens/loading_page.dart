import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/moore_database.dart';
import '../screens/today_weather.dart';
import '../services/weather_api_helper.dart';

class LoadingScreen extends StatefulWidget {
  static const routeName = '/';

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  var _controller = TextEditingController();
  String _cityName;

  Future<void> _getLocation(BuildContext ctx) async {
    String cityName = _controller.text;

    WeatherGetter weatherGetter = WeatherGetter();

    await weatherGetter.getWeatherInCity(cityName, ctx).then((_) =>
        Navigator.pushNamedAndRemoveUntil(
            context, WeatherToday.routeName, (Route<dynamic> route) => false));
  }

  @override
  void initState() {
    super.initState();
    _deleteItem();
  }

  Future _deleteItem() async {
    var database = Provider.of<AppDatabase>(context);
    await database.resetDb();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _deleteItem();
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(bottom: 20.0),
        color: Colors.black,
        child: Column(
          children: <Widget>[
            Expanded(
              child: Center(
                child: Image(
                  image: AssetImage('assets/images/sun.png'),
                ),
              ),
            ),
            Column(
              children: <Widget>[
                Container(
                  width: 180.0,
                  child: TextField(
                    controller: _controller,
                    onChanged: (value) {
                      _cityName = value;
                      print(_cityName);
                    },
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10.0, vertical: 0),
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.white,
                        width: 1.0,
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: RaisedButton(
                    child: Text(
                      'Get city weather',
                      style: Theme.of(context).textTheme.body1,
                    ),
                    onPressed: () {
                      _getLocation(context);
                    },
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
