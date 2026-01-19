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
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: colorFondo,
      ),
      
      child: isIcon? Center(child: IconButton(onPressed: (){},padding: EdgeInsets.zero, icon: Icon(operacion as IconData,size: 25,color: Colors.white,))) 
        : Center(child: Text(operacion,style: TextStyle(color: Colors.white,fontSize: 35),))
    );
  }
}