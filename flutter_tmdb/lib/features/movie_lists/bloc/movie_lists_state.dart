part of 'movie_lists_bloc.dart';

@immutable
sealed class MovieListsState {}

final class MovieListsInitial extends MovieListsState {}
final class MovieListsLoading extends MovieListsState{}
final class MovieListsSuccess extends MovieListsState{
  final List<Movie> movieListPopular;
  MovieListsSuccess({required this.movieListPopular});
}
final class MovieListsError extends MovieListsState{

  final String message;
  MovieListsError({required this.message});
}


