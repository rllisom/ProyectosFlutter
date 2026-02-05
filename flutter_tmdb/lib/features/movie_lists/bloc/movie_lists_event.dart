part of 'movie_lists_bloc.dart';

@immutable
sealed class MovieListsEvent {}

final class MovieListsFetchPopular implements MovieListsEvent {}
final class MovieListsFetchTopRated implements MovieListsEvent{}
final class MovieListFetchNowPlaying implements MovieListsEvent{}
final class MovieListsFetchUpcoming implements MovieListsEvent{}

