import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_api_tmdb/core/model/movie_lists_response.dart';
import 'package:flutter_api_tmdb/core/service/movie_lists_service.dart';
import 'package:flutter/material.dart';

part 'movie_lists_event.dart';
part 'movie_lists_state.dart';

class MovieListsBloc extends Bloc<MovieListsEvent, MovieListsState> {
  MovieListsBloc(MovieListsService service, MovieListType listType) : super(MovieListsInitial()) {
    on<MovieListsFetch>((event, emit) async {
      emit(MovieListsLoading());
      try{
        final movieLists = await service.getMovieList(event.listType);
        emit(MovieListsSuccess(movieLists: movieLists));
      }catch (e){
        emit(MovieListsError(message: "Estado de error"));
      }
    });
  }
}
