
import 'package:flutter_api_starwars/core/models/starwars_personajes_list_response.dart';

abstract class StarwarsInterface {

  Future<List<StarWarsPersonaje>> getAllPersonajes();
}