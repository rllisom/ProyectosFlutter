part of 'aparcamientos_list_bloc.dart';

@immutable
sealed class AparcamientosListState {}

final class AparcamientosListInitial extends AparcamientosListState {}

final class AparcamientoListLoading extends AparcamientosListState{}

final class AparcamientoListSuccess extends AparcamientosListState{
  final List<Aparcamiento> aparcamientos;
  AparcamientoListSuccess({required this.aparcamientos});
}

final class AparcamientoListError extends AparcamientosListState{
  final String message;
  AparcamientoListError({required this.message});
}
