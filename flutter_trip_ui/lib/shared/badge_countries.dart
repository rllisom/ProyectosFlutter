import 'package:flutter/material.dart';

class BadgeCountries extends StatelessWidget {
  
  final String name;
  final bool isSelect;

  
  const BadgeCountries({
    super.key,
    required this.name,
    required this.isSelect,
      
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7.0),
      child: Container(
        width: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: isSelect? Colors.black : Colors.white  
        ),
        child: Center(child: Text(name, style: TextStyle(color: isSelect? Colors.white : Colors.black),))     
      ),
    );
  }
}