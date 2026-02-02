import 'package:flutter/material.dart';
import 'package:flutter_api_starwars/core/models/starwars_personajes_list_response.dart';
import 'package:flutter_api_starwars/core/services/starwars_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'starwars_personajes_list_event.dart';
part 'starwars_personajes_list_state.dart';

class StarwarsPersonajesListBloc extends Bloc<StarwarsPersonajesListEvent, StarwarsPersonajesListState> {
  
  StarwarsPersonajesListBloc(StarwarsService starwarsService) : super(StarwarsPersonajesListInitial()) {

    on<StarwarsPersonajesListFetchAllEvent>((event, emit) async {
      emit(StarWarsPersonajesListLoading());
      try {
        var apiSwPersonajes = await starwarsService.getAllPersonajes();
        emit(StarWarsPersonajesSucess(personajesList: apiSwPersonajes));
      } catch (e){
        emit(StarWarsPersonajesError(message: e.toString()));
      }
    });
  }
}
