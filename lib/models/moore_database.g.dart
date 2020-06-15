// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moore_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class WeatherData extends DataClass implements Insertable<WeatherData> {
  final int id;
  final String cityName;
  final String locationType;
  final int woeid;
  final String weatherStateNameToday;
  final String weatherStateAbrToday;
  final int tempToday;
  final String weatherStateNameYest;
  final String weatherStateAbrYest;
  final int tempYest;
  final String weatherStateNameTomor;
  final String weatherStateAbrTomor;
  final int tempTomor;
  WeatherData(
      {@required this.id,
      @required this.cityName,
      @required this.locationType,
      @required this.woeid,
      @required this.weatherStateNameToday,
      @required this.weatherStateAbrToday,
      @required this.tempToday,
      @required this.weatherStateNameYest,
      @required this.weatherStateAbrYest,
      @required this.tempYest,
      @required this.weatherStateNameTomor,
      @required this.weatherStateAbrTomor,
      @required this.tempTomor});
  factory WeatherData.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return WeatherData(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      cityName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}city_name']),
      locationType: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}location_type']),
      woeid: intType.mapFromDatabaseResponse(data['${effectivePrefix}woeid']),
      weatherStateNameToday: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}weather_state_name_today']),
      weatherStateAbrToday: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}weather_state_abr_today']),
      tempToday:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}temp_today']),
      weatherStateNameYest: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}weather_state_name_yest']),
      weatherStateAbrYest: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}weather_state_abr_yest']),
      tempYest:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}temp_yest']),
      weatherStateNameTomor: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}weather_state_name_tomor']),
      weatherStateAbrTomor: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}weather_state_abr_tomor']),
      tempTomor:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}temp_tomor']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || cityName != null) {
      map['city_name'] = Variable<String>(cityName);
    }
    if (!nullToAbsent || locationType != null) {
      map['location_type'] = Variable<String>(locationType);
    }
    if (!nullToAbsent || woeid != null) {
      map['woeid'] = Variable<int>(woeid);
    }
    if (!nullToAbsent || weatherStateNameToday != null) {
      map['weather_state_name_today'] = Variable<String>(weatherStateNameToday);
    }
    if (!nullToAbsent || weatherStateAbrToday != null) {
      map['weather_state_abr_today'] = Variable<String>(weatherStateAbrToday);
    }
    if (!nullToAbsent || tempToday != null) {
      map['temp_today'] = Variable<int>(tempToday);
    }
    if (!nullToAbsent || weatherStateNameYest != null) {
      map['weather_state_name_yest'] = Variable<String>(weatherStateNameYest);
    }
    if (!nullToAbsent || weatherStateAbrYest != null) {
      map['weather_state_abr_yest'] = Variable<String>(weatherStateAbrYest);
    }
    if (!nullToAbsent || tempYest != null) {
      map['temp_yest'] = Variable<int>(tempYest);
    }
    if (!nullToAbsent || weatherStateNameTomor != null) {
      map['weather_state_name_tomor'] = Variable<String>(weatherStateNameTomor);
    }
    if (!nullToAbsent || weatherStateAbrTomor != null) {
      map['weather_state_abr_tomor'] = Variable<String>(weatherStateAbrTomor);
    }
    if (!nullToAbsent || tempTomor != null) {
      map['temp_tomor'] = Variable<int>(tempTomor);
    }
    return map;
  }

  WeatherCompanion toCompanion(bool nullToAbsent) {
    return WeatherCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      cityName: cityName == null && nullToAbsent
          ? const Value.absent()
          : Value(cityName),
      locationType: locationType == null && nullToAbsent
          ? const Value.absent()
          : Value(locationType),
      woeid:
          woeid == null && nullToAbsent ? const Value.absent() : Value(woeid),
      weatherStateNameToday: weatherStateNameToday == null && nullToAbsent
          ? const Value.absent()
          : Value(weatherStateNameToday),
      weatherStateAbrToday: weatherStateAbrToday == null && nullToAbsent
          ? const Value.absent()
          : Value(weatherStateAbrToday),
      tempToday: tempToday == null && nullToAbsent
          ? const Value.absent()
          : Value(tempToday),
      weatherStateNameYest: weatherStateNameYest == null && nullToAbsent
          ? const Value.absent()
          : Value(weatherStateNameYest),
      weatherStateAbrYest: weatherStateAbrYest == null && nullToAbsent
          ? const Value.absent()
          : Value(weatherStateAbrYest),
      tempYest: tempYest == null && nullToAbsent
          ? const Value.absent()
          : Value(tempYest),
      weatherStateNameTomor: weatherStateNameTomor == null && nullToAbsent
          ? const Value.absent()
          : Value(weatherStateNameTomor),
      weatherStateAbrTomor: weatherStateAbrTomor == null && nullToAbsent
          ? const Value.absent()
          : Value(weatherStateAbrTomor),
      tempTomor: tempTomor == null && nullToAbsent
          ? const Value.absent()
          : Value(tempTomor),
    );
  }

  factory WeatherData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return WeatherData(
      id: serializer.fromJson<int>(json['id']),
      cityName: serializer.fromJson<String>(json['cityName']),
      locationType: serializer.fromJson<String>(json['locationType']),
      woeid: serializer.fromJson<int>(json['woeid']),
      weatherStateNameToday:
          serializer.fromJson<String>(json['weatherStateNameToday']),
      weatherStateAbrToday:
          serializer.fromJson<String>(json['weatherStateAbrToday']),
      tempToday: serializer.fromJson<int>(json['tempToday']),
      weatherStateNameYest:
          serializer.fromJson<String>(json['weatherStateNameYest']),
      weatherStateAbrYest:
          serializer.fromJson<String>(json['weatherStateAbrYest']),
      tempYest: serializer.fromJson<int>(json['tempYest']),
      weatherStateNameTomor:
          serializer.fromJson<String>(json['weatherStateNameTomor']),
      weatherStateAbrTomor:
          serializer.fromJson<String>(json['weatherStateAbrTomor']),
      tempTomor: serializer.fromJson<int>(json['tempTomor']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'cityName': serializer.toJson<String>(cityName),
      'locationType': serializer.toJson<String>(locationType),
      'woeid': serializer.toJson<int>(woeid),
      'weatherStateNameToday': serializer.toJson<String>(weatherStateNameToday),
      'weatherStateAbrToday': serializer.toJson<String>(weatherStateAbrToday),
      'tempToday': serializer.toJson<int>(tempToday),
      'weatherStateNameYest': serializer.toJson<String>(weatherStateNameYest),
      'weatherStateAbrYest': serializer.toJson<String>(weatherStateAbrYest),
      'tempYest': serializer.toJson<int>(tempYest),
      'weatherStateNameTomor': serializer.toJson<String>(weatherStateNameTomor),
      'weatherStateAbrTomor': serializer.toJson<String>(weatherStateAbrTomor),
      'tempTomor': serializer.toJson<int>(tempTomor),
    };
  }

  WeatherData copyWith(
          {int id,
          String cityName,
          String locationType,
          int woeid,
          String weatherStateNameToday,
          String weatherStateAbrToday,
          int tempToday,
          String weatherStateNameYest,
          String weatherStateAbrYest,
          int tempYest,
          String weatherStateNameTomor,
          String weatherStateAbrTomor,
          int tempTomor}) =>
      WeatherData(
        id: id ?? this.id,
        cityName: cityName ?? this.cityName,
        locationType: locationType ?? this.locationType,
        woeid: woeid ?? this.woeid,
        weatherStateNameToday:
            weatherStateNameToday ?? this.weatherStateNameToday,
        weatherStateAbrToday: weatherStateAbrToday ?? this.weatherStateAbrToday,
        tempToday: tempToday ?? this.tempToday,
        weatherStateNameYest: weatherStateNameYest ?? this.weatherStateNameYest,
        weatherStateAbrYest: weatherStateAbrYest ?? this.weatherStateAbrYest,
        tempYest: tempYest ?? this.tempYest,
        weatherStateNameTomor:
            weatherStateNameTomor ?? this.weatherStateNameTomor,
        weatherStateAbrTomor: weatherStateAbrTomor ?? this.weatherStateAbrTomor,
        tempTomor: tempTomor ?? this.tempTomor,
      );
  @override
  String toString() {
    return (StringBuffer('WeatherData(')
          ..write('id: $id, ')
          ..write('cityName: $cityName, ')
          ..write('locationType: $locationType, ')
          ..write('woeid: $woeid, ')
          ..write('weatherStateNameToday: $weatherStateNameToday, ')
          ..write('weatherStateAbrToday: $weatherStateAbrToday, ')
          ..write('tempToday: $tempToday, ')
          ..write('weatherStateNameYest: $weatherStateNameYest, ')
          ..write('weatherStateAbrYest: $weatherStateAbrYest, ')
          ..write('tempYest: $tempYest, ')
          ..write('weatherStateNameTomor: $weatherStateNameTomor, ')
          ..write('weatherStateAbrTomor: $weatherStateAbrTomor, ')
          ..write('tempTomor: $tempTomor')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          cityName.hashCode,
          $mrjc(
              locationType.hashCode,
              $mrjc(
                  woeid.hashCode,
                  $mrjc(
                      weatherStateNameToday.hashCode,
                      $mrjc(
                          weatherStateAbrToday.hashCode,
                          $mrjc(
                              tempToday.hashCode,
                              $mrjc(
                                  weatherStateNameYest.hashCode,
                                  $mrjc(
                                      weatherStateAbrYest.hashCode,
                                      $mrjc(
                                          tempYest.hashCode,
                                          $mrjc(
                                              weatherStateNameTomor.hashCode,
                                              $mrjc(
                                                  weatherStateAbrTomor.hashCode,
                                                  tempTomor
                                                      .hashCode)))))))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is WeatherData &&
          other.id == this.id &&
          other.cityName == this.cityName &&
          other.locationType == this.locationType &&
          other.woeid == this.woeid &&
          other.weatherStateNameToday == this.weatherStateNameToday &&
          other.weatherStateAbrToday == this.weatherStateAbrToday &&
          other.tempToday == this.tempToday &&
          other.weatherStateNameYest == this.weatherStateNameYest &&
          other.weatherStateAbrYest == this.weatherStateAbrYest &&
          other.tempYest == this.tempYest &&
          other.weatherStateNameTomor == this.weatherStateNameTomor &&
          other.weatherStateAbrTomor == this.weatherStateAbrTomor &&
          other.tempTomor == this.tempTomor);
}

class WeatherCompanion extends UpdateCompanion<WeatherData> {
  final Value<int> id;
  final Value<String> cityName;
  final Value<String> locationType;
  final Value<int> woeid;
  final Value<String> weatherStateNameToday;
  final Value<String> weatherStateAbrToday;
  final Value<int> tempToday;
  final Value<String> weatherStateNameYest;
  final Value<String> weatherStateAbrYest;
  final Value<int> tempYest;
  final Value<String> weatherStateNameTomor;
  final Value<String> weatherStateAbrTomor;
  final Value<int> tempTomor;
  const WeatherCompanion({
    this.id = const Value.absent(),
    this.cityName = const Value.absent(),
    this.locationType = const Value.absent(),
    this.woeid = const Value.absent(),
    this.weatherStateNameToday = const Value.absent(),
    this.weatherStateAbrToday = const Value.absent(),
    this.tempToday = const Value.absent(),
    this.weatherStateNameYest = const Value.absent(),
    this.weatherStateAbrYest = const Value.absent(),
    this.tempYest = const Value.absent(),
    this.weatherStateNameTomor = const Value.absent(),
    this.weatherStateAbrTomor = const Value.absent(),
    this.tempTomor = const Value.absent(),
  });
  WeatherCompanion.insert({
    this.id = const Value.absent(),
    @required String cityName,
    @required String locationType,
    @required int woeid,
    @required String weatherStateNameToday,
    @required String weatherStateAbrToday,
    @required int tempToday,
    @required String weatherStateNameYest,
    @required String weatherStateAbrYest,
    @required int tempYest,
    @required String weatherStateNameTomor,
    @required String weatherStateAbrTomor,
    @required int tempTomor,
  })  : cityName = Value(cityName),
        locationType = Value(locationType),
        woeid = Value(woeid),
        weatherStateNameToday = Value(weatherStateNameToday),
        weatherStateAbrToday = Value(weatherStateAbrToday),
        tempToday = Value(tempToday),
        weatherStateNameYest = Value(weatherStateNameYest),
        weatherStateAbrYest = Value(weatherStateAbrYest),
        tempYest = Value(tempYest),
        weatherStateNameTomor = Value(weatherStateNameTomor),
        weatherStateAbrTomor = Value(weatherStateAbrTomor),
        tempTomor = Value(tempTomor);
  static Insertable<WeatherData> custom({
    Expression<int> id,
    Expression<String> cityName,
    Expression<String> locationType,
    Expression<int> woeid,
    Expression<String> weatherStateNameToday,
    Expression<String> weatherStateAbrToday,
    Expression<int> tempToday,
    Expression<String> weatherStateNameYest,
    Expression<String> weatherStateAbrYest,
    Expression<int> tempYest,
    Expression<String> weatherStateNameTomor,
    Expression<String> weatherStateAbrTomor,
    Expression<int> tempTomor,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (cityName != null) 'city_name': cityName,
      if (locationType != null) 'location_type': locationType,
      if (woeid != null) 'woeid': woeid,
      if (weatherStateNameToday != null)
        'weather_state_name_today': weatherStateNameToday,
      if (weatherStateAbrToday != null)
        'weather_state_abr_today': weatherStateAbrToday,
      if (tempToday != null) 'temp_today': tempToday,
      if (weatherStateNameYest != null)
        'weather_state_name_yest': weatherStateNameYest,
      if (weatherStateAbrYest != null)
        'weather_state_abr_yest': weatherStateAbrYest,
      if (tempYest != null) 'temp_yest': tempYest,
      if (weatherStateNameTomor != null)
        'weather_state_name_tomor': weatherStateNameTomor,
      if (weatherStateAbrTomor != null)
        'weather_state_abr_tomor': weatherStateAbrTomor,
      if (tempTomor != null) 'temp_tomor': tempTomor,
    });
  }

  WeatherCompanion copyWith(
      {Value<int> id,
      Value<String> cityName,
      Value<String> locationType,
      Value<int> woeid,
      Value<String> weatherStateNameToday,
      Value<String> weatherStateAbrToday,
      Value<int> tempToday,
      Value<String> weatherStateNameYest,
      Value<String> weatherStateAbrYest,
      Value<int> tempYest,
      Value<String> weatherStateNameTomor,
      Value<String> weatherStateAbrTomor,
      Value<int> tempTomor}) {
    return WeatherCompanion(
      id: id ?? this.id,
      cityName: cityName ?? this.cityName,
      locationType: locationType ?? this.locationType,
      woeid: woeid ?? this.woeid,
      weatherStateNameToday:
          weatherStateNameToday ?? this.weatherStateNameToday,
      weatherStateAbrToday: weatherStateAbrToday ?? this.weatherStateAbrToday,
      tempToday: tempToday ?? this.tempToday,
      weatherStateNameYest: weatherStateNameYest ?? this.weatherStateNameYest,
      weatherStateAbrYest: weatherStateAbrYest ?? this.weatherStateAbrYest,
      tempYest: tempYest ?? this.tempYest,
      weatherStateNameTomor:
          weatherStateNameTomor ?? this.weatherStateNameTomor,
      weatherStateAbrTomor: weatherStateAbrTomor ?? this.weatherStateAbrTomor,
      tempTomor: tempTomor ?? this.tempTomor,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (cityName.present) {
      map['city_name'] = Variable<String>(cityName.value);
    }
    if (locationType.present) {
      map['location_type'] = Variable<String>(locationType.value);
    }
    if (woeid.present) {
      map['woeid'] = Variable<int>(woeid.value);
    }
    if (weatherStateNameToday.present) {
      map['weather_state_name_today'] =
          Variable<String>(weatherStateNameToday.value);
    }
    if (weatherStateAbrToday.present) {
      map['weather_state_abr_today'] =
          Variable<String>(weatherStateAbrToday.value);
    }
    if (tempToday.present) {
      map['temp_today'] = Variable<int>(tempToday.value);
    }
    if (weatherStateNameYest.present) {
      map['weather_state_name_yest'] =
          Variable<String>(weatherStateNameYest.value);
    }
    if (weatherStateAbrYest.present) {
      map['weather_state_abr_yest'] =
          Variable<String>(weatherStateAbrYest.value);
    }
    if (tempYest.present) {
      map['temp_yest'] = Variable<int>(tempYest.value);
    }
    if (weatherStateNameTomor.present) {
      map['weather_state_name_tomor'] =
          Variable<String>(weatherStateNameTomor.value);
    }
    if (weatherStateAbrTomor.present) {
      map['weather_state_abr_tomor'] =
          Variable<String>(weatherStateAbrTomor.value);
    }
    if (tempTomor.present) {
      map['temp_tomor'] = Variable<int>(tempTomor.value);
    }
    return map;
  }
}

class $WeatherTable extends Weather with TableInfo<$WeatherTable, WeatherData> {
  final GeneratedDatabase _db;
  final String _alias;
  $WeatherTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _cityNameMeta = const VerificationMeta('cityName');
  GeneratedTextColumn _cityName;
  @override
  GeneratedTextColumn get cityName => _cityName ??= _constructCityName();
  GeneratedTextColumn _constructCityName() {
    return GeneratedTextColumn(
      'city_name',
      $tableName,
      false,
    );
  }

  final VerificationMeta _locationTypeMeta =
      const VerificationMeta('locationType');
  GeneratedTextColumn _locationType;
  @override
  GeneratedTextColumn get locationType =>
      _locationType ??= _constructLocationType();
  GeneratedTextColumn _constructLocationType() {
    return GeneratedTextColumn(
      'location_type',
      $tableName,
      false,
    );
  }

  final VerificationMeta _woeidMeta = const VerificationMeta('woeid');
  GeneratedIntColumn _woeid;
  @override
  GeneratedIntColumn get woeid => _woeid ??= _constructWoeid();
  GeneratedIntColumn _constructWoeid() {
    return GeneratedIntColumn(
      'woeid',
      $tableName,
      false,
    );
  }

  final VerificationMeta _weatherStateNameTodayMeta =
      const VerificationMeta('weatherStateNameToday');
  GeneratedTextColumn _weatherStateNameToday;
  @override
  GeneratedTextColumn get weatherStateNameToday =>
      _weatherStateNameToday ??= _constructWeatherStateNameToday();
  GeneratedTextColumn _constructWeatherStateNameToday() {
    return GeneratedTextColumn(
      'weather_state_name_today',
      $tableName,
      false,
    );
  }

  final VerificationMeta _weatherStateAbrTodayMeta =
      const VerificationMeta('weatherStateAbrToday');
  GeneratedTextColumn _weatherStateAbrToday;
  @override
  GeneratedTextColumn get weatherStateAbrToday =>
      _weatherStateAbrToday ??= _constructWeatherStateAbrToday();
  GeneratedTextColumn _constructWeatherStateAbrToday() {
    return GeneratedTextColumn(
      'weather_state_abr_today',
      $tableName,
      false,
    );
  }

  final VerificationMeta _tempTodayMeta = const VerificationMeta('tempToday');
  GeneratedIntColumn _tempToday;
  @override
  GeneratedIntColumn get tempToday => _tempToday ??= _constructTempToday();
  GeneratedIntColumn _constructTempToday() {
    return GeneratedIntColumn(
      'temp_today',
      $tableName,
      false,
    );
  }

  final VerificationMeta _weatherStateNameYestMeta =
      const VerificationMeta('weatherStateNameYest');
  GeneratedTextColumn _weatherStateNameYest;
  @override
  GeneratedTextColumn get weatherStateNameYest =>
      _weatherStateNameYest ??= _constructWeatherStateNameYest();
  GeneratedTextColumn _constructWeatherStateNameYest() {
    return GeneratedTextColumn(
      'weather_state_name_yest',
      $tableName,
      false,
    );
  }

  final VerificationMeta _weatherStateAbrYestMeta =
      const VerificationMeta('weatherStateAbrYest');
  GeneratedTextColumn _weatherStateAbrYest;
  @override
  GeneratedTextColumn get weatherStateAbrYest =>
      _weatherStateAbrYest ??= _constructWeatherStateAbrYest();
  GeneratedTextColumn _constructWeatherStateAbrYest() {
    return GeneratedTextColumn(
      'weather_state_abr_yest',
      $tableName,
      false,
    );
  }

  final VerificationMeta _tempYestMeta = const VerificationMeta('tempYest');
  GeneratedIntColumn _tempYest;
  @override
  GeneratedIntColumn get tempYest => _tempYest ??= _constructTempYest();
  GeneratedIntColumn _constructTempYest() {
    return GeneratedIntColumn(
      'temp_yest',
      $tableName,
      false,
    );
  }

  final VerificationMeta _weatherStateNameTomorMeta =
      const VerificationMeta('weatherStateNameTomor');
  GeneratedTextColumn _weatherStateNameTomor;
  @override
  GeneratedTextColumn get weatherStateNameTomor =>
      _weatherStateNameTomor ??= _constructWeatherStateNameTomor();
  GeneratedTextColumn _constructWeatherStateNameTomor() {
    return GeneratedTextColumn(
      'weather_state_name_tomor',
      $tableName,
      false,
    );
  }

  final VerificationMeta _weatherStateAbrTomorMeta =
      const VerificationMeta('weatherStateAbrTomor');
  GeneratedTextColumn _weatherStateAbrTomor;
  @override
  GeneratedTextColumn get weatherStateAbrTomor =>
      _weatherStateAbrTomor ??= _constructWeatherStateAbrTomor();
  GeneratedTextColumn _constructWeatherStateAbrTomor() {
    return GeneratedTextColumn(
      'weather_state_abr_tomor',
      $tableName,
      false,
    );
  }

  final VerificationMeta _tempTomorMeta = const VerificationMeta('tempTomor');
  GeneratedIntColumn _tempTomor;
  @override
  GeneratedIntColumn get tempTomor => _tempTomor ??= _constructTempTomor();
  GeneratedIntColumn _constructTempTomor() {
    return GeneratedIntColumn(
      'temp_tomor',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        id,
        cityName,
        locationType,
        woeid,
        weatherStateNameToday,
        weatherStateAbrToday,
        tempToday,
        weatherStateNameYest,
        weatherStateAbrYest,
        tempYest,
        weatherStateNameTomor,
        weatherStateAbrTomor,
        tempTomor
      ];
  @override
  $WeatherTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'weather';
  @override
  final String actualTableName = 'weather';
  @override
  VerificationContext validateIntegrity(Insertable<WeatherData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('city_name')) {
      context.handle(_cityNameMeta,
          cityName.isAcceptableOrUnknown(data['city_name'], _cityNameMeta));
    } else if (isInserting) {
      context.missing(_cityNameMeta);
    }
    if (data.containsKey('location_type')) {
      context.handle(
          _locationTypeMeta,
          locationType.isAcceptableOrUnknown(
              data['location_type'], _locationTypeMeta));
    } else if (isInserting) {
      context.missing(_locationTypeMeta);
    }
    if (data.containsKey('woeid')) {
      context.handle(
          _woeidMeta, woeid.isAcceptableOrUnknown(data['woeid'], _woeidMeta));
    } else if (isInserting) {
      context.missing(_woeidMeta);
    }
    if (data.containsKey('weather_state_name_today')) {
      context.handle(
          _weatherStateNameTodayMeta,
          weatherStateNameToday.isAcceptableOrUnknown(
              data['weather_state_name_today'], _weatherStateNameTodayMeta));
    } else if (isInserting) {
      context.missing(_weatherStateNameTodayMeta);
    }
    if (data.containsKey('weather_state_abr_today')) {
      context.handle(
          _weatherStateAbrTodayMeta,
          weatherStateAbrToday.isAcceptableOrUnknown(
              data['weather_state_abr_today'], _weatherStateAbrTodayMeta));
    } else if (isInserting) {
      context.missing(_weatherStateAbrTodayMeta);
    }
    if (data.containsKey('temp_today')) {
      context.handle(_tempTodayMeta,
          tempToday.isAcceptableOrUnknown(data['temp_today'], _tempTodayMeta));
    } else if (isInserting) {
      context.missing(_tempTodayMeta);
    }
    if (data.containsKey('weather_state_name_yest')) {
      context.handle(
          _weatherStateNameYestMeta,
          weatherStateNameYest.isAcceptableOrUnknown(
              data['weather_state_name_yest'], _weatherStateNameYestMeta));
    } else if (isInserting) {
      context.missing(_weatherStateNameYestMeta);
    }
    if (data.containsKey('weather_state_abr_yest')) {
      context.handle(
          _weatherStateAbrYestMeta,
          weatherStateAbrYest.isAcceptableOrUnknown(
              data['weather_state_abr_yest'], _weatherStateAbrYestMeta));
    } else if (isInserting) {
      context.missing(_weatherStateAbrYestMeta);
    }
    if (data.containsKey('temp_yest')) {
      context.handle(_tempYestMeta,
          tempYest.isAcceptableOrUnknown(data['temp_yest'], _tempYestMeta));
    } else if (isInserting) {
      context.missing(_tempYestMeta);
    }
    if (data.containsKey('weather_state_name_tomor')) {
      context.handle(
          _weatherStateNameTomorMeta,
          weatherStateNameTomor.isAcceptableOrUnknown(
              data['weather_state_name_tomor'], _weatherStateNameTomorMeta));
    } else if (isInserting) {
      context.missing(_weatherStateNameTomorMeta);
    }
    if (data.containsKey('weather_state_abr_tomor')) {
      context.handle(
          _weatherStateAbrTomorMeta,
          weatherStateAbrTomor.isAcceptableOrUnknown(
              data['weather_state_abr_tomor'], _weatherStateAbrTomorMeta));
    } else if (isInserting) {
      context.missing(_weatherStateAbrTomorMeta);
    }
    if (data.containsKey('temp_tomor')) {
      context.handle(_tempTomorMeta,
          tempTomor.isAcceptableOrUnknown(data['temp_tomor'], _tempTomorMeta));
    } else if (isInserting) {
      context.missing(_tempTomorMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  WeatherData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return WeatherData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $WeatherTable createAlias(String alias) {
    return $WeatherTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $WeatherTable _weather;
  $WeatherTable get weather => _weather ??= $WeatherTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [weather];
}
