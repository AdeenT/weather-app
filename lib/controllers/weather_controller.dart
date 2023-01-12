import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WeatherController extends GetxController {
  static const titleFont =
      TextStyle(fontWeight: FontWeight.w600, fontSize: 18.0);
  static const infoFont =
      TextStyle(fontWeight: FontWeight.w400, fontSize: 18.0);

  Widget currentWeather(IconData icon, String temp, String location) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.orange,
            size: 64.0,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            temp,
            style: const TextStyle(
              fontSize: 46.0,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            location,
            style: const TextStyle(
              fontSize: 18.0,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }

  Widget additionalInformation(
      String wind, String humidity, String pressure, String feelsLike) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(18.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Wind",
                    style: titleFont,
                  ),
                  SizedBox(
                    height: 18.0,
                  ),
                  Text(
                    "pressure",
                    style: titleFont,
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    wind,
                    style: infoFont,
                  ),
                  const SizedBox(
                    height: 18.0,
                  ),
                  Text(
                    pressure,
                    style: infoFont,
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Humidity",
                    style: titleFont,
                  ),
                  SizedBox(
                    height: 18.0,
                  ),
                  Text(
                    "Feels Like",
                    style: titleFont,
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    humidity,
                    style: infoFont,
                  ),
                  const SizedBox(
                    height: 18.0,
                  ),
                  Text(
                    feelsLike,
                    style: infoFont,
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
