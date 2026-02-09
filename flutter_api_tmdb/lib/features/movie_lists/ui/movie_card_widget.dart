import 'package:flutter/material.dart';

class MovieCardWidget extends StatelessWidget {

  final String imgPelicula;
  final String titulo;


  const MovieCardWidget({super.key,required this.imgPelicula,required this.titulo});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: 200,
        height: 280,
        child: Card(
          margin: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network(imgPelicula,fit: BoxFit.cover,width: 150,height: 200,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(titulo, style: TextStyle(fontSize: 12),),
              )
            ],
          ),
        ),
      ),
    );
  }
}