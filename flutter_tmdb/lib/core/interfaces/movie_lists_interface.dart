import 'package:flutter_tmdb/core/models/movie_lists_response.dart';
import 'package:flutter_tmdb/core/services/movie_lists_service.dart';

abstract class MovieListsInterface {
  Future<List<Movie>> getList(MovieListType listType);
}