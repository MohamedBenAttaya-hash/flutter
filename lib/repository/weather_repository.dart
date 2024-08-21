import 'package:weatherapp/models/weather_model.dart';

import '../data/network_api_services.dart';

class WeatherRepository {
  final _apiService = NetworkApiServices();
  Future<List<String>> getCities() async {
    await Future.delayed(const Duration(microseconds: 300));
    return [
      "tunis",
      "paris",
      "dakar",
      "berlin",
      "london",
      "new york",
      "moscow",
    ];
  }

  Future<WeatherModel> getWeather(String code) async {
    const rootUrl = "https://api.openweathermap.org/data/2.5/weather";
    const apiId = "556f2eef27fef0562e0c6bd64626a600";
    var url = "$rootUrl?q=$code&appid=$apiId&units=metric";
    var weather = await _apiService.getApi(url);
    return WeatherModel.fromJson(weather);
  }
}
