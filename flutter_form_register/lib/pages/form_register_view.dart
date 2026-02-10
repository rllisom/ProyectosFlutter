import 'package:flutter/material.dart';
import 'package:flutter_form_register/core/form_custom_widget.dart';

class FormRegisterView extends StatefulWidget {
  const FormRegisterView({super.key});

  @override
  State<FormRegisterView> createState() => _FormRegisterViewState();
}

class _FormRegisterViewState extends State<FormRegisterView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Formulario"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            showModalBottomSheet<void>(
              context: context,
              builder: (BuildContext context){
                return Container(
                  height: MediaQuery.of(context).size.height * 0.9,
                  color: const Color.fromARGB(255, 118, 207, 176),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            onPressed: () => Navigator.pop(context),
                            icon: Icon(Icons.close,color: Colors.white,)
                          ),
                        ],
                      ),
                      Expanded(
                        child: FormCustomWidget())
                    ],
                  ),
                );
              } 
            );
          }, 
          child: Text("Abrir formulario")
        ),
      )
    );
  }
}