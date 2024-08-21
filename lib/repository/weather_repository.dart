import 'package:weatherapp/models/weather_model.dart';

import '../data/network_api_services.dart';
import '../models/city_model.dart';

class WeatherRepository {
  // final iconRootUrl = "https://openweathermap.org/img/wn/{0}.png";
  final _apiService = NetworkApiServices();
  Future<List<CityModel>> getCities() async {
    await Future.delayed(const Duration(microseconds: 300));
    return [
      CityModel("tunis", "Tunis", "Tunisia"),
      CityModel("paris", "paris", "France"),
      CityModel("dakar", "Dakar", "Senegal"),
      CityModel("berlin", "berlin", "Germany"),
      CityModel("london", "London", "United kingdom"),
      CityModel("new york", "new york", "United States of America"),
      CityModel("nmoscow", "moscow", "Russia"),
      // "tunis",
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
