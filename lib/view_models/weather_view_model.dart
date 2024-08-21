import 'package:get/get.dart';
import 'package:weatherapp/models/weather_model.dart';

import '../repository/weather_repository.dart';

class WeatherController extends GetxController {
  String cityCode = "";
  final Rx<WeatherModel?> weather = Rx(null);
  final _api = WeatherRepository();
  void navigateToCities() {
    Get.toNamed("/cities");
  }

  Future loadWeather() async {
    _api.getWeather(cityCode).then((value) {
      weather.value = value;
    });
  }
}
