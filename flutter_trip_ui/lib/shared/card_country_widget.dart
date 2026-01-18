import 'dart:ui';

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
    return SizedBox(
      width: 300,
      height: 300,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Stack(
          children: [
            Image.network(urlImg,
            height: double.infinity,
            width: double.infinity,
             fit: BoxFit.cover,
             colorBlendMode: BlendMode.darken,
             color: Colors.black.withValues(alpha: 0.3),),
            Positioned(
              top: 10,
              right: 10,
              width: 30,
              height: 30,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white,width: 0.5),
                  color: Colors.transparent
                ),
                child: IconButton(onPressed: (){}, 
                  icon: Icon(Icons.favorite,color: Colors.white,size: 13,),
                  splashRadius: 18,
                  padding: EdgeInsets.zero,
                  )
              ),
            ),
              Positioned(
                left: 0,
                bottom: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(pais,style: TextStyle(
                          color: Colors.white,fontSize: 16,fontWeight: FontWeight.w300
                        ),),
                        Text(capital, style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                        Row(children: [
                          Container(
                            
                            padding: EdgeInsets.symmetric(vertical: 2,horizontal: 15),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.transparent,
                              border: Border.all(width: 1,color: Colors.white)
                            ),                      
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 4),
                                  child: Icon(Icons.star,color: Colors.white,size: 14,),
                                ),
                                Text(rate.toString(),style: TextStyle(color: Colors.white),)
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text("${review.toString()} reviews", style: TextStyle(color: const Color.fromARGB(255, 212, 206, 206)),),
                          )
                        ],),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 10,sigmaY: 10),
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.grey.withOpacity(0.3)),
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(),
                                      Text("See more",style: TextStyle(color: Colors.white),),
                                      Container(
                                        width: 32,
                                        height: 32,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle,
                                        ),
                                        child: IconButton(
                                          icon: Icon(Icons.arrow_forward_ios, color: Colors.grey,),
                                          onPressed: (){},
                                          padding: EdgeInsets.zero,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}