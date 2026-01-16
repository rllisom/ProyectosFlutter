import 'package:flutter/material.dart';
import 'package:flutter_trip_ui/shared/card_country_widget.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          CardCountryWidget(
            urlImg: 'https://cdn.sanity.io/images/nxpteyfv/goguides/0d0187d0aa055ff97afd52704687cc41f74a641c-1600x1066.jpg',
            pais: 'Canadá',
            capital: 'Ottawa',
            review: 120,
            rate: 4.7,
          ),
        ],
      ),
    );
  }
}