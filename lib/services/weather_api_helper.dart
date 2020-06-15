import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../services/network_helper.dart';
import '../models/moore_database.dart';

const metaWeatherApiUrl = 'https://www.metaweather.com/api/location/';

class WeatherGetter {
  Future<dynamic> getWoeid(String cityName) async {
    print('cityName from weather getter = $cityName');

    NetworkHelper networkHelper = NetworkHelper(
        metaWeatherApiUrl + 'search/?query=${cityName.toLowerCase()}');

    var locationInfo = await networkHelper.getData();

    return locationInfo;
  }

  Future<dynamic> getWeatherInCity(
      String cityName, BuildContext context) async {
    var info = await getWoeid(cityName);
    int woeid = info[0]['woeid'];

    var today = DateTime.now();

    NetworkHelper networkHelper = NetworkHelper(metaWeatherApiUrl + '$woeid/');

    try {
      var weatherInCity = await networkHelper.getData();

      Map<String, dynamic> json = {
        'cityName': weatherInCity['title'],
        'locationType': weatherInCity['location_type'],
        'woeid': woeid,
        'weatherStateNameToday': weatherInCity['consolidated_weather'][2]
            ['weather_state_name'],
        'weatherStateAbrToday': weatherInCity['consolidated_weather'][2]
            ['weather_state_abbr'],
        'tempToday':
            (weatherInCity['consolidated_weather'][2]['the_temp']).round(),
        'weatherStateNameYest': weatherInCity['consolidated_weather'][1]
            ['weather_state_name'],
        'weatherStateAbrYest': weatherInCity['consolidated_weather'][1]
            ['weather_state_abbr'],
        'tempYest':
            (weatherInCity['consolidated_weather'][1]['the_temp']).round(),
        'weatherStateNameTomor': weatherInCity['consolidated_weather'][3]
            ['weather_state_name'],
        'weatherStateAbrTomor': weatherInCity['consolidated_weather'][3]
            ['weather_state_abbr'],
        'tempTomor':
            (weatherInCity['consolidated_weather'][3]['the_temp']).round(),
      };
      print(json);

      WeatherData data = WeatherData.fromJson(json);
      var database = Provider.of<AppDatabase>(context, listen: false);
      database.insertWeatherData(data);

      return data;
    } catch (e) {
      print('error from getWeatherInCity method = $e');
    }
  }
}
