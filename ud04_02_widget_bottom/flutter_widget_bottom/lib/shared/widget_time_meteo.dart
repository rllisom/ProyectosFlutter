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
        Icon(icon, color: Colors.white),
        const SizedBox(width: 8),
        
        Text(tempMax, style: const TextStyle(color: Colors.)),
        const SizedBox(width: 8),
        Text(tempMin, style: const TextStyle(color: Colors.white)),
      ],
    );
  }
}