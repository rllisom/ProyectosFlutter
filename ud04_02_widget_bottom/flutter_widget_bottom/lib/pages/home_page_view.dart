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
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            WidgetTimeMeteo(icon: Icons.wb_cloudy, tempMax: '14º', tempMin: '5º'),
            WidgetTimeMeteo(icon: Icons.wb_sunny, tempMax: '17º', tempMin: '10º')
          ],
        ),
      ),
    );
  }
}