part of 'starwars_personajes_list_bloc.dart';

@immutable
sealed class StarwarsPersonajesListEvent {}

final class StarwarsPersonajesListFetchAllEvent extends StarwarsPersonajesListEvent {}
