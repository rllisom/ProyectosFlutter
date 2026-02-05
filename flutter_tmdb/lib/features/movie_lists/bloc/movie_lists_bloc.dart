import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tmdb/core/models/movie_lists_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tmdb/core/services/movie_lists_service.dart';

part 'movie_lists_event.dart';
part 'movie_lists_state.dart';

class MovieListsBloc extends Bloc<MovieListsEvent, MovieListsState> {

  MovieListsService service;

  MovieListsBloc(this.service) : super(MovieListsInitial()){
    on<MovieListsEvent>((event, emit) async{
      emit(MovieListsLoading());
      try{
        final movieListsPopular = await service.getList(MovieListType.popular);
        emit(MovieListsSuccess(movieListPopular: movieListsPopular));
      }catch (e){
        emit(MovieListsError(message: e.toString()));
      }
    });
  }
}
