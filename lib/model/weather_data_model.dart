// To parse this JSON data, do
//
//     final weatherDataModel = weatherDataModelFromJson(jsonString);

// ignore_for_file: constant_identifier_names

import 'dart:convert';

WeatherDataModel weatherDataModelFromJson(String str) =>
    WeatherDataModel.fromJson(json.decode(str));

String weatherDataModelToJson(WeatherDataModel data) =>
    json.encode(data.toJson());

class WeatherDataModel {
  int queryCost;
  double latitude;
  double longitude;
  String resolvedAddress;
  String address;
  String timezone;
  double tzoffset;
  String description;
  List<CurrentConditions> days;
  List<dynamic> alerts;
  CurrentConditions currentConditions;

  WeatherDataModel({
    required this.queryCost,
    required this.latitude,
    required this.longitude,
    required this.resolvedAddress,
    required this.address,
    required this.timezone,
    required this.tzoffset,
    required this.description,
    required this.days,
    required this.alerts,
    required this.currentConditions,
  });

  factory WeatherDataModel.fromJson(Map<String, dynamic> json) =>
      WeatherDataModel(
        queryCost: json["queryCost"],
        latitude: json["latitude"]?.toDouble(),
        longitude: json["longitude"]?.toDouble(),
        resolvedAddress: json["resolvedAddress"],
        address: json["address"],
        timezone: json["timezone"],
        tzoffset: json["tzoffset"]?.toDouble(),
        description: json["description"],
        days: List<CurrentConditions>.from(
            json["days"].map((x) => CurrentConditions.fromJson(x))),
        alerts: List<dynamic>.from(json["alerts"].map((x) => x)),
        currentConditions:
            CurrentConditions.fromJson(json["currentConditions"]),
      );

  Map<String, dynamic> toJson() => {
        "queryCost": queryCost,
        "latitude": latitude,
        "longitude": longitude,
        "resolvedAddress": resolvedAddress,
        "address": address,
        "timezone": timezone,
        "tzoffset": tzoffset,
        "description": description,
        "days": List<dynamic>.from(days.map((x) => x.toJson())),
        "alerts": List<dynamic>.from(alerts.map((x) => x)),
        "currentConditions": currentConditions.toJson(),
      };
}

class CurrentConditions {
  String datetime;
  int datetimeEpoch;
  double temp;
  double feelslike;
  double humidity;
  double dew;
  int precip;
  double precipprob;
  int snow;
  int snowdepth;
  dynamic preciptype;
  double windgust;
  double windspeed;
  double winddir;
  double pressure;
  double visibility;
  double cloudcover;
  double solarradiation;
  double solarenergy;
  int uvindex;
  int severerisk;
  Conditions conditions;
  Icon icon;
  List<Station>? stations;
  Source source;
  String? sunrise;
  int? sunriseEpoch;
  String? sunset;
  int? sunsetEpoch;
  double? moonphase;
  double? tempmax;
  double? tempmin;
  double? feelslikemax;
  double? feelslikemin;
  int? precipcover;
  String? description;
  List<CurrentConditions>? hours;

  CurrentConditions({
    required this.datetime,
    required this.datetimeEpoch,
    required this.temp,
    required this.feelslike,
    required this.humidity,
    required this.dew,
    required this.precip,
    required this.precipprob,
    required this.snow,
    required this.snowdepth,
    required this.preciptype,
    required this.windgust,
    required this.windspeed,
    required this.winddir,
    required this.pressure,
    required this.visibility,
    required this.cloudcover,
    required this.solarradiation,
    required this.solarenergy,
    required this.uvindex,
    required this.severerisk,
    required this.conditions,
    required this.icon,
    required this.stations,
    required this.source,
    this.sunrise,
    this.sunriseEpoch,
    this.sunset,
    this.sunsetEpoch,
    this.moonphase,
    this.tempmax,
    this.tempmin,
    this.feelslikemax,
    this.feelslikemin,
    this.precipcover,
    this.description,
    this.hours,
  });

  factory CurrentConditions.fromJson(Map<String, dynamic> json) =>
      CurrentConditions(
        datetime: json["datetime"],
        datetimeEpoch: json["datetimeEpoch"],
        temp: json["temp"]?.toDouble(),
        feelslike: json["feelslike"]?.toDouble(),
        humidity: json["humidity"]?.toDouble(),
        dew: json["dew"]?.toDouble(),
        precip: json["precip"],
        precipprob: json["precipprob"]?.toDouble(),
        snow: json["snow"],
        snowdepth: json["snowdepth"],
        preciptype: json["preciptype"],
        windgust: json["windgust"]?.toDouble(),
        windspeed: json["windspeed"]?.toDouble(),
        winddir: json["winddir"]?.toDouble(),
        pressure: json["pressure"]?.toDouble(),
        visibility: json["visibility"]?.toDouble(),
        cloudcover: json["cloudcover"]?.toDouble(),
        solarradiation: json["solarradiation"]?.toDouble(),
        solarenergy: json["solarenergy"]?.toDouble(),
        uvindex: json["uvindex"],
        severerisk: json["severerisk"],
        conditions: conditionsValues.map[json["conditions"]]!,
        icon: iconValues.map[json["icon"]]!,
        stations: json["stations"] == null
            ? []
            : List<Station>.from(
                json["stations"]!.map((x) => stationValues.map[x]!)),
        source: sourceValues.map[json["source"]]!,
        sunrise: json["sunrise"],
        sunriseEpoch: json["sunriseEpoch"],
        sunset: json["sunset"],
        sunsetEpoch: json["sunsetEpoch"],
        moonphase: json["moonphase"]?.toDouble(),
        tempmax: json["tempmax"]?.toDouble(),
        tempmin: json["tempmin"]?.toDouble(),
        feelslikemax: json["feelslikemax"]?.toDouble(),
        feelslikemin: json["feelslikemin"]?.toDouble(),
        precipcover: json["precipcover"],
        description: json["description"],
        hours: json["hours"] == null
            ? []
            : List<CurrentConditions>.from(
                json["hours"]!.map((x) => CurrentConditions.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "datetime": datetime,
        "datetimeEpoch": datetimeEpoch,
        "temp": temp,
        "feelslike": feelslike,
        "humidity": humidity,
        "dew": dew,
        "precip": precip,
        "precipprob": precipprob,
        "snow": snow,
        "snowdepth": snowdepth,
        "preciptype": preciptype,
        "windgust": windgust,
        "windspeed": windspeed,
        "winddir": winddir,
        "pressure": pressure,
        "visibility": visibility,
        "cloudcover": cloudcover,
        "solarradiation": solarradiation,
        "solarenergy": solarenergy,
        "uvindex": uvindex,
        "severerisk": severerisk,
        "conditions": conditionsValues.reverse[conditions],
        "icon": iconValues.reverse[icon],
        "stations": stations == null
            ? []
            : List<dynamic>.from(
                stations!.map((x) => stationValues.reverse[x])),
        "source": sourceValues.reverse[source],
        "sunrise": sunrise,
        "sunriseEpoch": sunriseEpoch,
        "sunset": sunset,
        "sunsetEpoch": sunsetEpoch,
        "moonphase": moonphase,
        "tempmax": tempmax,
        "tempmin": tempmin,
        "feelslikemax": feelslikemax,
        "feelslikemin": feelslikemin,
        "precipcover": precipcover,
        "description": description,
        "hours": hours == null
            ? []
            : List<dynamic>.from(hours!.map((x) => x.toJson())),
      };
}

enum Conditions { CLEAR, OVERCAST, PARTIALLY_CLOUDY }

final conditionsValues = EnumValues({
  "Clear": Conditions.CLEAR,
  "Overcast": Conditions.OVERCAST,
  "Partially cloudy": Conditions.PARTIALLY_CLOUDY
});

enum Icon {
  CLEAR_DAY,
  CLEAR_NIGHT,
  CLOUDY,
  PARTLY_CLOUDY_DAY,
  PARTLY_CLOUDY_NIGHT
}

final iconValues = EnumValues({
  "clear-day": Icon.CLEAR_DAY,
  "clear-night": Icon.CLEAR_NIGHT,
  "cloudy": Icon.CLOUDY,
  "partly-cloudy-day": Icon.PARTLY_CLOUDY_DAY,
  "partly-cloudy-night": Icon.PARTLY_CLOUDY_NIGHT
});

enum Source { COMB, FCST, OBS }

final sourceValues =
    EnumValues({"comb": Source.COMB, "fcst": Source.FCST, "obs": Source.OBS});

enum Station { REMOTE }

final stationValues = EnumValues({"remote": Station.REMOTE});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
