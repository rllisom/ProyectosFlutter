import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tmdb/core/models/people_lists_response.dart';
import 'package:flutter_tmdb/core/services/people_lists_service.dart';
import 'package:flutter/material.dart';

part 'people_lists_event.dart';
part 'people_lists_state.dart';

class PeopleListsBloc extends Bloc<PeopleListsEvent, PeopleListsState> {

  PeopleListsBloc(PeopleListsService service) : super(PeopleListsInitial()) {
    on<PeopleListsEvent>((event, emit) async{
        emit(PeopleListsLoading());
        try{
          var peopleListPopular = await service.getPopular();
          emit(PeopleListsSuccess(peopleListPopular: peopleListPopular));
        }catch (e){
          emit(PeopleListsError(message: e.toString()));
        }
    });
  }
}
