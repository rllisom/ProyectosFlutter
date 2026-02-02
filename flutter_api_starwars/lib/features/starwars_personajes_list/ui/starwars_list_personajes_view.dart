import 'package:flutter/material.dart';
import 'package:flutter_api_starwars/core/services/starwars_service.dart';
import 'package:flutter_api_starwars/features/starwars_personajes_list/bloc/starwars_personajes_list_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StarwarsListPersonajesView extends StatefulWidget {
  const StarwarsListPersonajesView({super.key});

  @override
  State<StarwarsListPersonajesView> createState() => _StarwarsListPersonajesViewState();
}

class _StarwarsListPersonajesViewState extends State<StarwarsListPersonajesView> {
  late StarwarsPersonajesListBloc swPersonajesList;

  @override
  void initState(){
    super.initState();
    swPersonajesList = StarwarsPersonajesListBloc(StarwarsService())
      ..add(StarwarsPersonajesListFetchAllEvent());
  }

  @override
  void dispose(){
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lista de personajes de Star Wars')),
      body: BlocBuilder<StarwarsPersonajesListBloc,StarwarsPersonajesListState>(
        bloc: swPersonajesList,
        builder: (context, state) {
          if (state is StarWarsPersonajesListLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is StarWarsPersonajesSucess) {
            return Expanded(
              child: ListView.builder(
                itemCount: state.personajesList.length,
                itemBuilder: (context, index) {
                  return ListTile(title: Text(state.personajesList[index].name));
                },
              ),
            );
          } else if (state is StarWarsPersonajesError) {
            return Center(child: Text(state.message));
          }
          return const Center(child: CircularProgressIndicator());
        },
      )
    );
  }
}