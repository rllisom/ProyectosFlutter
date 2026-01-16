import 'package:flutter/material.dart';

class CardCountryWidget extends StatelessWidget {
  const CardCountryWidget({
    super.key,
    required this.urlImg,
    required this.pais,
    required this.capital,
    required this.review,
    required this.rate,
  });

  final String urlImg;
  final String pais;
  final String capital;
  final int review;
  final double rate;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      width: 400,
      child: Stack(
        children: [
          Image.network(urlImg, fit: BoxFit.cover,),
          Positioned(
            top: 10,
            right: 10,
            width: 30,
            height: 30,
            child: FloatingActionButton(onPressed: (){},
              child: Icon(Icons.favorite,color: Colors.white, weight: 5),
              ),
          ),
            Positioned(
              left: 0,
              bottom: 0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(pais),
                    Text(capital),
                    Row(children: [
                      Badge(
                        child: Row(
                          children: [
                            Icon(Icons.star),
                            Text(rate.toString())
                          ],
                        ),
                      ),
                      Text("${review.toString()} reviews")
                    ],),
                    Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                      color: Colors.grey),
                      child: Row(
                        children: [
                          SizedBox(),
                          Text("See more"),
                          FloatingActionButton(onPressed: (){})
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
        ],
      ),
    );
  }
}