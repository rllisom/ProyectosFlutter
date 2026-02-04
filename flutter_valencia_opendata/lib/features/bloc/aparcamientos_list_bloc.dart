import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_valencia_opendata/core/models/aparcamientos_list_response.dart';
import 'package:flutter_valencia_opendata/core/services/aparcamientos_service.dart';
import 'package:flutter/material.dart';

part 'aparcamientos_list_event.dart';
part 'aparcamientos_list_state.dart';

class AparcamientosListBloc extends Bloc<AparcamientosListEvent, AparcamientosListState> {

  AparcamientosService service;

  AparcamientosListBloc(this.service) : super(AparcamientosListInitial()) {
    on<AparcamientosListEvent>((event, emit) async{
      emit(AparcamientoListLoading());
      try{
        final aparcamientos = await service.getAparcamientos();
        emit(AparcamientoListSuccess(aparcamientos: aparcamientos.results));
      } catch (e){
        emit(AparcamientoListError(message: e.toString()));
      }
    });
  }
}
