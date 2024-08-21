import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../view_models/weather_view_model.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  final controller = Get.put(WeatherController());

  @override
  void initState() {
    controller.cityCode = Get.parameters['city'] ?? "tunis";
    controller.loadWeather();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          scrolledUnderElevation: 0,
          title: const Center(child: Text('Weather')),
          automaticallyImplyLeading: false,
        ),
        body: Obx(() => Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(controller.weather.value?.name ?? ""),
                  InkWell(
                      onTap: () {
                        controller.navigateToCities();
                      },
                      child: const Text('Select City'))
                ],
              ),
            )));
  }
}
