import 'package:get/get.dart';
import 'package:weatherapp/models/city_model.dart';

import '../repository/weather_repository.dart';

class CitiesController extends GetxController {
  final _api = WeatherRepository();

  final Rx<List<CityModel>> cities = Rx<List<CityModel>>([]);

  void navigateToWeather(String cityCode) {
    Get.toNamed("/", parameters: {"city": cityCode});
  }

  Future loadCities() async {
    _api.getCities().then((value) {
      cities.value = value;
    });
  }
}
