
import 'dart:convert';

import 'package:flutter_valencia_opendata/core/interfaces/aparcamientos_interface.dart';
import 'package:flutter_valencia_opendata/core/models/aparcamientos_list_response.dart';
import 'package:http/http.dart' as http;

class AparcamientosService implements AparcamientosInterface{

  final String _apiBaseUrl = "https://valencia.opendatasoft.com/api/explore/v2.1/catalog/datasets/aparcaments-bicicletes-aparcamientos-bicicletas/records?limit=20";

  @override
  Future<AparcamientosListResponse> getAparcamientos() async {

    var url = Uri.parse(_apiBaseUrl);
    
    try{
      var response = await http.get(url);

      if(response.statusCode == 200){
        final aparcamientosJson = jsonDecode(response.body);
        return AparcamientosListResponse.fromJson(aparcamientosJson);        
      }else{
        throw Exception('Error en la respuesta: ${response.statusCode}');
      }  
    }catch(e){
      throw Exception('Error obteniendo aparcamiento: $e');
    }
  }

}