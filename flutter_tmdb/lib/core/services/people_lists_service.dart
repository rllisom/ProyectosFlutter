

import 'dart:convert';

import 'package:flutter_tmdb/config/api_config.dart';
import 'package:flutter_tmdb/core/interfaces/people_lists_interface.dart';
import 'package:flutter_tmdb/core/models/people_lists_response.dart';
import 'package:http/http.dart' as http;

class PeopleListsService implements PeopleListsInterface{
  
  final String baseUrlPopular = "https://api.themoviedb.org/3/person/popular";

  @override
  Future<List<Person>> getPopular() async {

    var response = await http.get(Uri.parse(baseUrlPopular),
    headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer ${ApiConfig.apikey}',
      },);    

    try{
      if(response.statusCode >=200){
        var personPopularList = PeopleListsResponse.fromJson(jsonDecode(response.body)).results;
        return personPopularList;
      }else{
        return [];
      }
    } catch (e){
      throw Exception("Error al obtener el listado de actores populares");
    } 

  }
}