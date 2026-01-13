import 'package:flutter/material.dart';

class WidgetTimeMeteo extends StatelessWidget {

  final IconData icon;
  final String tempMax;
  final String tempMin;

  const WidgetTimeMeteo({
    super.key,
    required this.icon,
    required this.tempMax,
    required this.tempMin
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon,color: Colors.white,),
        Column(
          children: [
            Text(tempMax,
              style: TextStyle(color: Colors.white) ,),
            Text(tempMin,style: TextStyle(color: Colors.white),)
          ],
        )
      ],
    );
  }
}