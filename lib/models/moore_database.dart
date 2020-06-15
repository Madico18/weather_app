import 'package:moor_flutter/moor_flutter.dart';

part 'moore_database.g.dart';

class Weather extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get cityName => text()();
  TextColumn get locationType => text()();
  IntColumn get woeid => integer()();
  TextColumn get weatherStateNameToday => text()();
  TextColumn get weatherStateAbrToday => text()();
  IntColumn get tempToday => integer()();
  TextColumn get weatherStateNameYest => text()();
  TextColumn get weatherStateAbrYest => text()();
  IntColumn get tempYest => integer()();
  TextColumn get weatherStateNameTomor => text()();
  TextColumn get weatherStateAbrTomor => text()();
  IntColumn get tempTomor => integer()();
}

@UseMoor(tables: [Weather])
class AppDatabase extends _$AppDatabase {
  AppDatabase()
      : super(FlutterQueryExecutor.inDatabaseFolder(
            path: 'db.sqlite', logStatements: true));

  @override
  int get schemaVersion => 1;

  Future<List<WeatherData>> getAllWeather() => select(weather).get();
  Stream<List<WeatherData>> watchWeather() => select(weather).watch();
  Future insertWeatherData(WeatherData data) => into(weather).insert(data);
  Future updateWeatherData(WeatherData data) => update(weather).replace(data);
  Future deleteWeatherData(WeatherData data) => delete(weather).delete(data);
  Future<int> addWeather(WeatherCompanion entry) {
    return into(weather).insert(entry);
  }

  Future resetDb() async {
    await delete(weather).go();
  }
}
