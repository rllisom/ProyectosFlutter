import 'package:flutter/material.dart';

class WidgetPaisesCard extends StatelessWidget {

  final String cifra;
  final String balance;
  final String bandera;
  final String pais;
  const WidgetPaisesCard({
    super.key,
    required this.cifra,
    required this.balance,
    required this.bandera,
    required this.pais
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(cifra,style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
                Text("Balance: ${balance}",style: TextStyle(color: const Color.fromARGB(255, 126, 126, 126)),)
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            width: 100,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(width: 1,color: Colors.grey),
              borderRadius: BorderRadius.circular(20)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 40,
                  height: 40,
                  child: Image.asset(
                    bandera,
                    fit: BoxFit.contain,
                  )
                ),
                Icon(Icons.keyboard_arrow_down)
              ],
            ),
          )
        ],
      ),
    );
  }
}