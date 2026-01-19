import 'package:flutter/material.dart';
import 'package:flutter_calculadora_ui/shared/boton_calculadora_widget.dart';

class CalculadoraUiWidget extends StatelessWidget {
  const CalculadoraUiWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: const Color.fromARGB(255, 43, 43, 43)
                    ),
                    child: IconButton(onPressed: (){}, icon: Icon(Icons.format_list_bulleted,color: Colors.white,))),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: const Color.fromARGB(255, 43, 43, 43)
                    ),
                    child: IconButton(onPressed: (){}, icon: Icon(Icons.calculate,color: Colors.white,)))
                ],
              ),
              SizedBox(height: 150,),
              SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("38,670/50,000",style: TextStyle(color: const Color.fromARGB(255, 119, 119, 119), fontSize: 25),),
                    Text("0.7734",style: TextStyle(color: Colors.white, fontSize: 60,fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Row(
                        children: [
                          BotonCalculadoraWidget(colorFondo:Colors.grey,operacion: Icons.backspace , isIcon: true),
                        ]
                        
                      ),
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