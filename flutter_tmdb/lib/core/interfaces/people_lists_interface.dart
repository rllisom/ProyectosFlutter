

import 'package:flutter_tmdb/core/models/people_lists_response.dart';

abstract class PeopleListsInterface {
  Future<List<Person>> getPopular();
}