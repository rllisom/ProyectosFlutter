import 'package:bloc/bloc.dart';
import 'package:flutter_api_starwars/core/models/starwars_personajes_list_response.dart';
import 'package:meta/meta.dart';

part 'starwars_personajes_list_event.dart';
part 'starwars_personajes_list_state.dart';

class StarwarsPersonajesListBloc extends Bloc<StarwarsPersonajesListEvent, StarwarsPersonajesListState> {
  StarwarsPersonajesListBloc() : super(StarwarsPersonajesListInitial()) {
    on<StarwarsPersonajesListEvent>((event, emit) async {
      emit(StarWarsPersonajesListLoading());
      try {
        
      }
      // TODO: implement event handler
    });
  }
}
