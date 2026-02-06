class PeopleListsResponse {
  final int page;
  final List<Person> results;
  final int totalPages;
  final int totalResults;

  PeopleListsResponse({
    required this.page,
    required this.results,
    required this.totalPages,
    required this.totalResults,
  });

  factory PeopleListsResponse.fromJson(Map<String, dynamic> json) {
    return PeopleListsResponse(
      page: json['page'],
      results: (json['results'] as List)
          .map((e) => Person.fromJson(e))
          .toList(),
      totalPages: json['total_pages'],
      totalResults: json['total_results'],
    );
  }
}

class Person {
  final bool adult;
  final int gender;
  final int id;
  final List<KnownFor> knownFor;
  final String knownForDepartment;
  final String name;
  final double popularity;
  final String? profilePath;

  Person({
    required this.adult,
    required this.gender,
    required this.id,
    required this.knownFor,
    required this.knownForDepartment,
    required this.name,
    required this.popularity,
    this.profilePath,
  });

  factory Person.fromJson(Map<String, dynamic> json) {
    return Person(
      adult: json['adult'],
      gender: json['gender'],
      id: json['id'],
      knownFor: (json['known_for'] as List)
          .map((e) => KnownFor.fromJson(e))
          .toList(),
      knownForDepartment: json['known_for_department'],
      name: json['name'],
      popularity: (json['popularity'] as num).toDouble(),
      profilePath: json['profile_path'],
    );
  }
}

class KnownFor {
  // Common fields
  final bool? adult;
  final String? backdropPath;
  final List<int>? genreIds;
  final int id;
  final String mediaType;
  final String? originalLanguage;
  final String? overview;
  final String? posterPath;
  final double? voteAverage;
  final int? voteCount;

  // Movie-specific
  final String? originalTitle;
  final String? releaseDate;
  final String? title;
  final bool? video;

  // TV-specific
  final String? name;
  final String? originalName;
  final String? firstAirDate;
  final List<String>? originCountry;

  KnownFor({
    this.adult,
    this.backdropPath,
    this.genreIds,
    required this.id,
    required this.mediaType,
    this.originalLanguage,
    this.overview,
    this.posterPath,
    this.voteAverage,
    this.voteCount,
    this.originalTitle,
    this.releaseDate,
    this.title,
    this.video,
    this.name,
    this.originalName,
    this.firstAirDate,
    this.originCountry,
  });

  factory KnownFor.fromJson(Map<String, dynamic> json) {
    return KnownFor(
      adult: json['adult'],
      backdropPath: json['backdrop_path'],
      genreIds: (json['genre_ids'] as List?)?.map((e) => e as int).toList(),
      id: json['id'],
      mediaType: json['media_type'],
      originalLanguage: json['original_language'],
      overview: json['overview'],
      posterPath: json['poster_path'],
      voteAverage: (json['vote_average'] != null)
          ? (json['vote_average'] as num).toDouble()
          : null,
      voteCount: json['vote_count'],
      originalTitle: json['original_title'],
      releaseDate: json['release_date'],
      title: json['title'],
      video: json['video'],
      name: json['name'],
      originalName: json['original_name'],
      firstAirDate: json['first_air_date'],
      originCountry: (json['origin_country'] as List?)
          ?.map((e) => e as String)
          .toList(),
    );
  }
}