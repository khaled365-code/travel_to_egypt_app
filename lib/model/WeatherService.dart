import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:ourprojectiti/model/weather_model.dart';


class WeatherService {
  String baseUrl = 'http://api.weatherapi.com/v1';

  String apiKey = 'a1789084b27a4749bb141046231707';
  Future<WeatherModel?> getWeather({required String cityName}) async {
    WeatherModel? weatherData;
    try{
      Uri url =
      Uri.parse('$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=7');
      http.Response response = await http.get(url);

      if (response.statusCode == 400) {
        var data  = jsonDecode(response.body);
        throw Exception(data['error']['message']);
      }
      Map<String, dynamic> data = jsonDecode(response.body);

      weatherData = WeatherModel.fromJson(data);


    }
    catch(e)
    {
      print(e);

    }
    return weatherData;
  }
}
