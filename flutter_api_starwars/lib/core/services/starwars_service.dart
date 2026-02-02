
import 'dart:convert';

import 'package:flutter_api_starwars/core/interfaces/starwars_interface.dart';
import 'package:flutter_api_starwars/core/models/starwars_personajes_list_response.dart';
import 'package:http/http.dart' as http;


class StarwarsService implements StarwarsInterface{

  final String _apiBaseUrl = "https://swapi.info/api/people";


  @override
  Future<List<StarWarsPersonaje>> getAllPersonajes() async {
    
    var url = Uri.parse(_apiBaseUrl);
    try {
      var response = await http.get(url);

      if(response.statusCode == 200){
        final personajesJson = jsonDecode(response.body) as List;
        final starwarsPersonajesList = personajesJson
            .map((json) => StarWarsPersonaje.fromJson(json))
            .toList();
        return starwarsPersonajesList;
      }else{
        return [];
      }

    } catch(e){
      return [];
    }
  }}