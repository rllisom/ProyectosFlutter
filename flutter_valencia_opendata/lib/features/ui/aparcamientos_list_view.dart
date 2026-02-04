import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_valencia_opendata/core/services/aparcamientos_service.dart';
import 'package:flutter_valencia_opendata/features/bloc/aparcamientos_list_bloc.dart';

class AparcamientosListView extends StatefulWidget {
  const AparcamientosListView({super.key});

  @override
  State<AparcamientosListView> createState() => _AparcamientosListViewState();
}

class _AparcamientosListViewState extends State<AparcamientosListView> {

  late AparcamientosListBloc aparcamientosListBloc;

  @override
  void initState(){
    super.initState();
    aparcamientosListBloc = AparcamientosListBloc(AparcamientosService())
      ..add(LoadAparcamientos());
  }

  @override
  void dispose(){
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Aparcamientos en Valencia"),),
      body: BlocBuilder<AparcamientosListBloc,AparcamientosListState>(  
        bloc: aparcamientosListBloc,
        builder: (context,state) {
          if(state is AparcamientoListLoading){
            return const Center(child: CircularProgressIndicator());
          }else if(state is AparcamientoListSuccess){
            return ListView.builder(
              itemCount: state.aparcamientos.length,
              itemBuilder: (context,index){
                final aparcamiento = state.aparcamientos[index];
                return Card(
                  margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  child: ListTile(
                    leading: const Icon(Icons.directions_bike, color: Colors.blue),
                    title: Text(aparcamiento.tipo),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Plazas: ${aparcamiento.numPlazas}'),
                        Text('ID: ${aparcamiento.objectId}'),
                        Text('Ubicación: (${aparcamiento.geoPoint2D.lat}, ${aparcamiento.geoPoint2D.lon})'),
                      ],
                    ),
                  ),
                );
              },
            );
          }else if(state is AparcamientoListError){
            return Center(child: Text(state.message),);
          }else{
            return const Center(child: Text('No hay datos'));
          }
        })
    );
  }
}