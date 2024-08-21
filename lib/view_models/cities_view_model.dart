import 'package:get/get.dart';

import '../repository/weather_repository.dart';

class CitiesController extends GetxController {
  final _api = WeatherRepository();

  final RxList<String> cities = RxList();

  void navigateToWeather(String cityCode) {
    Get.toNamed("/", parameters: {"city": cityCode});
  }

  Future loadCities() async {
    _api.getCities().then((value) {
      cities.value = value;
    });
  }
}
