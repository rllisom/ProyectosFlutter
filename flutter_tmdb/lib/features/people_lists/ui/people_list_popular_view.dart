import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tmdb/core/services/people_lists_service.dart';
import 'package:flutter_tmdb/features/people_lists/bloc/people_lists_bloc.dart';

class PeopleListPopularView extends StatefulWidget {
  const PeopleListPopularView({super.key});

  @override
  State<PeopleListPopularView> createState() => _PeopleListPopularViewState();
}

class _PeopleListPopularViewState extends State<PeopleListPopularView> {

  late PeopleListsBloc peopleListsBloc;

  @override
  void initState(){
    super.initState();
    peopleListsBloc = PeopleListsBloc(PeopleListsService())
      ..add(PeopleListsFetchPopular());
  }

  @override
  void dispose(){
    super.dispose();
  

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("The Movie DB"),
        backgroundColor: const Color.fromARGB(255, 30, 113, 182),
      ),
      body: BlocBuilder<PeopleListsBloc,PeopleListsState>(
        bloc: peopleListsBloc,
        builder: (context,state){
          if(state is PeopleListsLoading){
            return Center(
              child: CircularProgressIndicator(),
            );
          }else if(state is PeopleListsSuccess){
            return SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: state.peopleListPopular.length,
                    itemBuilder: (context,index){
                      final actor = state.peopleListPopular[index];
                      return Card(

                      );
                      
                    })
                ],
              ),
            );
          }
        }
        ),
    );
  }
}