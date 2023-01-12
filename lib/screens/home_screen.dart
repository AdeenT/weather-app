import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/controllers/weather_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(WeatherController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Weather Today"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          controller.currentWeather(
            Icons.wb_sunny_rounded,
            '26.3',
            "kakkanchery",
          ),
          const SizedBox(
            height: 20.0,
          ),
          const Text(
            "Additional information",
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
         const Divider(),
         const SizedBox(
            height: 20.0,
          ),
          controller.additionalInformation("24", "2", "1014", "24.6"),
        ],
      ),
    );
  }
}
