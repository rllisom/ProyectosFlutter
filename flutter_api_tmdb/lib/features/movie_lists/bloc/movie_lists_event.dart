part of 'movie_lists_bloc.dart';

@immutable
sealed class MovieListsEvent {}

final class MovieListsFetch implements MovieListsEvent{
  final MovieListType listType;

  MovieListsFetch({required this.listType});
}

