part of 'people_lists_bloc.dart';

@immutable
sealed class PeopleListsState {}

final class PeopleListsInitial extends PeopleListsState {}

final class PeopleListsLoading extends PeopleListsState {}

final class PeopleListsSuccess extends PeopleListsState {
  final List<Person> peopleListPopular;
  PeopleListsSuccess({required this.peopleListPopular});
}

final class  PeopleListsError extends PeopleListsState{
  final String message;
  PeopleListsError({required this.message});
}                       
