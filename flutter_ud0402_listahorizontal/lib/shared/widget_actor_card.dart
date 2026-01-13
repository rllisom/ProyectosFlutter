import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WidgetActorCard extends StatelessWidget {
  final String imgUrl;
  final String name;
  final String lastName;

  const WidgetActorCard(
    {
      super.key,
      required this.imgUrl,
      required this.name,
      required this.lastName,
    });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(70),
              bottom: Radius.circular(70),
            ),
            child: Image.network(
              imgUrl,
              width: 150,
              height: 250,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 8),
          Column(
            
            children: [
              Text(name,
              style: GoogleFonts.pinyonScript(
                fontSize: 15,
                fontWeight: FontWeight.bold
              ),),
              Text(lastName,style: GoogleFonts.pinyonScript(
                fontSize: 15
              ),)
            ],
          )
        ],
      ),
    );
  }
}