import 'package:flutter/material.dart';
import 'package:flutter_conversor_app/shared/boton_calculadora.dart';
import 'package:flutter_conversor_app/shared/widget_paises_card.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(8),
        color: const Color.fromARGB(255, 224, 223, 223),
        width: double.infinity,
        height: double.infinity,
        child: SizedBox(
          height: double.infinity,
          child: Column(
            children: [
              SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: IconButton(onPressed: (){}, icon: Icon(Icons.close))),
                    Column(
                      children: [
                        Text("Between Accounts",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        Text("No comission",style: TextStyle(fontSize: 15,color: Colors.grey),)
                      ],
                    ),
                    SizedBox(width: 40,),
                ], 
              ),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.only(right: 13.0, left: 13.0,top: 5,bottom: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color.fromARGB(255, 39, 38, 38)
                  ),
                child: Text("1USD = 7,2493 CNY",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 40,),
              Container(
                decoration: BoxDecoration(
                  
                  borderRadius: BorderRadius.circular(40)
                ),
                height: 210,
                width: double.infinity,
                child: Stack(
                  children: [
                    SizedBox(
                      height: double.infinity,
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          WidgetPaisesCard(cifra: "140.00", balance: "150.56", bandera: 'assets/images/flag_usa.png', pais: "USD"),
                          WidgetPaisesCard(cifra: "1014.902", balance: "246.63", bandera: 'assets/images/flag_china.png', pais: "CNY")
                        ],
                      ),
                    ),
                    Center(
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 39, 38, 38),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: IconButton(onPressed: (){}, icon: Icon(Icons.repeat),padding: EdgeInsets.zero,color: Colors.white,),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 30,),
              SizedBox(
                height: 450,
                child: Column( 
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          BotonCalculadora(valor: "1"),
                          BotonCalculadora(valor: "2"),
                          BotonCalculadora(valor: "3")
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          BotonCalculadora(valor: "4"),
                          BotonCalculadora(valor: "5"),
                          BotonCalculadora(valor: "6")
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          BotonCalculadora(valor: "7"),
                          BotonCalculadora(valor: "8"),
                          BotonCalculadora(valor: "9")
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          BotonCalculadora(valor: "."),
                          BotonCalculadora(valor: "0"),
                          BotonCalculadora(valor: ",")
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      width: double.infinity,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(255, 37, 37, 37)
                      ),
                      child: Center(child: Text("Continue",style: TextStyle(color: Colors.white,fontSize: 20),)),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}