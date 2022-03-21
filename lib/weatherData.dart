// ignore_for_file: file_names, unused_import, unused_local_variable

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weatherapp/weatherModel.dart';

class WeatherData {
  Future<Weather> getData(var latitude, var longitude) async {
    var uriCall = Uri.parse(
        'http://api.weatherapi.com/v1/current.json?key=9d3e102e8d9d4add869133432221903&q=$latitude,$longitude&aqi=no');
    var response = await http.get(uriCall);
    var body = jsonDecode(response.body);
    return Weather.fromJson(body);
  }
}
