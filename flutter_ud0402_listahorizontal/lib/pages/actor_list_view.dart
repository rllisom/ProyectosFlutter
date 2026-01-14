import 'package:flutter/material.dart';
import 'package:flutter_ud0402_listahorizontal/shared/widget_actor_card.dart';



class ActorListView extends StatelessWidget {
  const ActorListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: const Text(
                "Actores de 'Una Batalla tras otra'",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 150),
            Center(
              child: SizedBox(
                height: 620,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: WidgetActorCard(
                        imgUrl: "https://media.themoviedb.org/t/p/w300_and_h450_face/wo2hJpn04vbtmh0B9utCFdsQhxM.jpg",
                        name: "Leonardo",
                        lastName: "DiCaprio",
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: WidgetActorCard(
                        imgUrl: "https://media.themoviedb.org/t/p/w300_and_h450_face/9glqNTVpFpdN1nFklKaHPUyCwR6.jpg",
                        name: "Sean",
                        lastName: "Penn",
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: WidgetActorCard(
                        imgUrl: "https://media.themoviedb.org/t/p/w300_and_h450_face/cVh4UgCMu6aAkZ2BqymTLV86FzZ.jpg",
                        name: "Benicio",
                        lastName: "del Toro",
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}