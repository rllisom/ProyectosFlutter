

import 'dart:convert';

import 'package:flutter_tmdb/config/api_config.dart';
import 'package:flutter_tmdb/core/interfaces/movie_lists_interface.dart';
import 'package:flutter_tmdb/core/models/movie_lists_response.dart';
import 'package:http/http.dart' as http;

enum MovieListType {
  popular("popular"),
  topRated("top_rated"),
  nowPlaying("now_playing"),
  upcoming("upcoming");

  final String value;
  const MovieListType(this.value);
}


class MovieListsService implements MovieListsInterface{
  
  final String apiBaseUrl = "https://api.themoviedb.org/3/movie";
  
  @override
  Future<List<Movie>> getList(MovieListType listType) async {

    var response = await http.get(
      Uri.parse("$apiBaseUrl/${listType.value}"),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer ${ApiConfig.apikey}',
      },
    );
    try{
        if(response.statusCode >= 200){
          var movieList = MovieListsResponse.fromJson(jsonDecode(response.body)).results;
          return movieList;
        }else{
          return [];
        }
    }catch(e){
      throw Exception("Error al obtener el listado de películas");
    }
  }
}