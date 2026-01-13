import 'package:flutter/material.dart';

import 'package:flutter_widget_bottom/shared/widget_time_meteo.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: WidgetTimeMeteo(icon: Icons.wb_cloudy, tempMax: '14º', tempMin: '5º'),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: WidgetTimeMeteo(icon: Icons.wb_sunny, tempMax: '17º', tempMin: '10º'),
              )
            ],
          ),
        ),
      ),
    );
  }
}