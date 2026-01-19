import 'package:flutter/material.dart';

class BotonCalculadoraWidget extends StatelessWidget {
  final Color colorFondo;
  final dynamic operacion ;
  final bool isIcon;
  const BotonCalculadoraWidget({super.key,
    required this.colorFondo,
    required this.operacion,
    required this.isIcon
    
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: colorFondo,
      ),
      
      child: isIcon? IconButton(onPressed: (){},padding: EdgeInsets.zero, icon: Icon(operacion as IconData,size: 25,color: Colors.white,)) 
        : Text(operacion,style: TextStyle(color: Colors.white),)
    );
  }
}