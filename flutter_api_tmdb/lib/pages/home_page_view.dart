import 'package:flutter/material.dart';
import 'package:flutter_api_tmdb/core/service/movie_lists_service.dart';
import 'package:flutter_api_tmdb/features/movie_lists/bloc/movie_lists_bloc.dart';
import 'package:flutter_api_tmdb/features/movie_lists/ui/movie_card_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePageView extends StatefulWidget {

  

  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  late MovieListsBloc movieListsBloc;
  final MovieListsService service = MovieListsService();
  MovieListType listType = MovieListType.popular;
  bool selectType = true;
  @override
  void initState(){
    super.initState();
    movieListsBloc = MovieListsBloc(service,listType)..add(MovieListsFetch(listType: listType));
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 19, 117, 197),
        title: Text("The Movie dB"),
          actions: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.search),
            ),
          ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BlocBuilder<MovieListsBloc,MovieListsState>(
          bloc: movieListsBloc,
          builder: (context,state){
            if (state is MovieListsLoading){
              return SizedBox(
                width: double.infinity,
                height: 280,
                child: Center(
                  child: SizedBox(
                    width: 40,
                    height: 40,
                    child: CircularProgressIndicator())
                ),
              );
            }else if( state is MovieListsSuccess){
              return SizedBox(
                width: double.infinity,
                height: 400,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Lista de películas",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 26),),
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              selectType = true;
                              listType = MovieListType.popular;
                            });
                            movieListsBloc.add(MovieListsFetch(listType: listType));
                          },
                          child: Container(
                            width: 120,
                            height: 20,
                            decoration: BoxDecoration(
                              color: selectType? Colors.blue : Colors.transparent,
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child: Center(child: Text("Popular",style: TextStyle(color: selectType? Colors.white:Colors.blue),)),
                          ),
                        ),
                        GestureDetector(
                          onTap: () => 
                          setState(() {
                            selectType = false;
                            listType = MovieListType.topRated;
                            movieListsBloc.add(MovieListsFetch(listType:listType));
                          }),
                          child: Container(
                            width: 120,
                            height: 20,
                            decoration: BoxDecoration(
                              color: !selectType? Colors.blue : Colors.transparent,
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child: Center(child: Text("Top Rated",style: TextStyle(color: !selectType? Colors.white:Colors.blue),)),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 300,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: state.movieLists.length,
                        itemBuilder: (context,index){
                          final movie = state.movieLists[index];
                          return MovieCardWidget(imgPelicula: 'https://image.tmdb.org/t/p/w500${movie.posterPath}', titulo: movie.originalTitle);
                        }
                      ),
                    )
                  ],
                ),
              );
            }else if (state is MovieListsError){
              return SizedBox(
                width: double.infinity,
                height: 280,
                child: Center(
                  child: SizedBox(
                    width: 40,
                    height: 40,
                    child: CircularProgressIndicator())
                ),
              );
            }else{
              return SizedBox(
                width: double.infinity,
                height: 280,
                child: Center(
                  child: SizedBox(
                    width: 40,
                    height: 40,
                    child: CircularProgressIndicator())
                ),
              );
            }
          }
        ),
      ),
    );
  }
}