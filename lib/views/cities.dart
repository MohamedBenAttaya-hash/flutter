import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../view_models/cities_view_model.dart';

class CitiesPage extends StatefulWidget {
  const CitiesPage({super.key});

  @override
  State<CitiesPage> createState() => _CitiesPageState();
}

class _CitiesPageState extends State<CitiesPage> {
  final controller = Get.put(CitiesController());

  @override
  void initState() {
    controller.loadCities();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          scrolledUnderElevation: 0,
          title: const Center(child: Text('Select City')),
          automaticallyImplyLeading: false,
        ),
        body: Obx(() => Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  for (var city in controller.cities)
                    InkWell(
                        onTap: () {
                          controller.navigateToWeather(city);
                        },
                        child: Text(city)),
                ],
              ),
            )));
  }
}
