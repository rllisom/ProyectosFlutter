import 'package:flutter/material.dart';
import 'package:flutter_trip_ui/shared/badge_countries.dart';
import 'package:flutter_trip_ui/shared/card_country_widget.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 226, 226, 226),
      width: double.infinity,
      height: double.infinity,
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(height: 70,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Hello, Raúl",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25
                      ),),
                      Text("Welcome to TripGlide")
                    ],
                  ),
                  ClipOval(
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: Image.network('https://media.licdn.com/dms/image/v2/D4D03AQFk9r8HpwMWRA/profile-displayphoto-scale_400_400/B4DZq_p7CdHwAg-/0/1764152031668?e=1770249600&v=beta&t=Hu-Jph43s3NFGALDH9HExcQA2f-EXEWEMbd-hvGEQag')),
                    
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 60,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(  
                          children: [
                            Icon(Icons.search),
                            Text("Search")
                          ],
                        ),
                      ),
                    ),
                    ClipOval(
                          
                      child: Container(
                        width: 60,
                        height: 60,
                        color: Colors.black,
                        child: Icon(Icons.tune,color: Colors.white,)
                        ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [Text("Select your next trip",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)],
              ),
            ),
            SizedBox(
              height: 70,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    BadgeCountries(name: "North America", isSelect: true),
                    BadgeCountries(name: "Europa", isSelect: false)
                  ],
                ),
              ),
            ),
            SizedBox(height: 70,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 300,
                  width: 300,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [CardCountryWidget(
                      urlImg: 'https://encrypted-tbn0.gstatic.com/licensed-image?q=tbn:ANd9GcRAMGk0xD8txMN9yhXhujmhe7wmmQsnC4DLqteb9Q5NeqH0d6Z1cxr6qvjO_mJqtMm1lth9PkobJ_ZJt44iv38hQTw&s=19',
                      pais: 'Canadá',
                      capital: 'Ottawa',
                      review: 120,
                      rate: 4.7,
                      ),
                    ]),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}