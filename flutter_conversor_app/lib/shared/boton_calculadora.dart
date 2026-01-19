import 'package:flutter/material.dart';

class BotonCalculadora extends StatelessWidget {
  final String valor;
  const BotonCalculadora({super.key,required this.valor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Center(child: Text(valor,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),)),
    );
  }
}