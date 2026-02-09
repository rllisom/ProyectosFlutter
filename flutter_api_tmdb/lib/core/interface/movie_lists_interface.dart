

import 'package:flutter_api_tmdb/core/model/movie_lists_response.dart';
import 'package:flutter_api_tmdb/core/service/movie_lists_service.dart';

abstract class MovieListsInterface{
  Future<List<Movie>> getMovieList(MovieListType listType);
}