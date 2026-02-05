import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tmdb/core/services/movie_lists_service.dart';
import 'package:flutter_tmdb/features/movie_lists/bloc/movie_lists_bloc.dart';

class TmdbMoviesListsView extends StatefulWidget {
  const TmdbMoviesListsView({super.key});

  @override
  State<TmdbMoviesListsView> createState() => _TmdbMoviesListsViewState();
}

class _TmdbMoviesListsViewState extends State<TmdbMoviesListsView> {

  late MovieListsBloc movieListsBloc;

  @override
  void initState(){
    super.initState();
    movieListsBloc = MovieListsBloc(MovieListsService())
    ..add(MovieListsFetchPopular());
  }

  @override
  void dispose(){
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TheMovieDB",style: TextStyle(color: Colors.white),),
        backgroundColor: const Color.fromARGB(255, 7, 83, 146),
      ),
      body: BlocBuilder<MovieListsBloc,MovieListsState>(
        bloc: movieListsBloc,
        builder: (context,state) {
          if( state is MovieListsLoading){
            return Center(
              child: CircularProgressIndicator(),
            );
          }else if (state is MovieListsSuccess){
            return SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text("Popular movies",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 26),),
                    SizedBox(
                      height: 300, 
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: state.movieListPopular.length,
                        itemBuilder: (context,index){
                          final movie = state.movieListPopular[index];
                          return SizedBox(
                            width: 200,
                            height: 280,
                            child: Card(
                              margin: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.network('https://image.tmdb.org/t/p/w500${movie.posterPath}',
                                  fit: BoxFit.contain,
                                  width: 150,
                                  height: 200,
                                  ),
                                  Text(movie.originalTitle),
                                  Text(movie.releaseDate)
                                ],
                              ),
                            ),
                          );
                        }
                      ),
                    )
                  ],
                ),
              ),
            );
          }else if( state is MovieListsError){
            return Center(child: Text(state.message));
          }else{
            return Center(child: Text("No hay películas a mostrar"),);
          }
        }
        ),
    );
  }
}