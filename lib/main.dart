import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'views/weather.dart';
import 'views/cities.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(title: 'Weather', getPages: [
      GetPage(
        name: '/',
        page: () => const WeatherPage(),
        transitionDuration: const Duration(milliseconds: 0),
        transition: Transition.noTransition,
      ),
      GetPage(
        name: '/cities',
        page: () => const CitiesPage(),
        transitionDuration: const Duration(milliseconds: 0),
        transition: Transition.noTransition,
      )
    ]);
  }
}
