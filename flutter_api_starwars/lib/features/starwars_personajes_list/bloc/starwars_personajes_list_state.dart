part of 'starwars_personajes_list_bloc.dart';

@immutable
sealed class StarwarsPersonajesListState {}

final class StarwarsPersonajesListInitial extends StarwarsPersonajesListState {}

final class StarWarsPersonajesListLoading extends StarwarsPersonajesListState {}

final class StarWarsPersonajesSucess extends StarwarsPersonajesListState{
  final List<StarWarsPersonaje> personajesList;
  StarWarsPersonajesSucess({required this.personajesList});
}

final class StarWarsPersonajesError extends StarwarsPersonajesListState{
  final String message;
  StarWarsPersonajesError({required this.message});
}