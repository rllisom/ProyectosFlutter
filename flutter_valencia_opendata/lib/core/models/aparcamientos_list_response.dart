class AparcamientosListResponse {
  final int totalCount;
  final List<Aparcamiento> results;

  AparcamientosListResponse({
    required this.totalCount,
    required this.results,
  });

  factory AparcamientosListResponse.fromJson(Map<String, dynamic> json) {
    return AparcamientosListResponse(
      totalCount: json['total_count'] as int,
      results: (json['results'] as List)
          .map((e) => Aparcamiento.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }
}

class Aparcamiento {
  final String tipo;
  final int objectId;
  final int numPlazas;
  final GeoShape geoShape;
  final GeoPoint2D geoPoint2D;

  Aparcamiento({
    required this.tipo,
    required this.objectId,
    required this.numPlazas,
    required this.geoShape,
    required this.geoPoint2D,
  });

  factory Aparcamiento.fromJson(Map<String, dynamic> json) {
    return Aparcamiento(
      tipo: json['tipo'] as String,
      objectId: json['objectid'] as int,
      numPlazas: json['numplazas'] as int,
      geoShape: GeoShape.fromJson(json['geo_shape'] as Map<String, dynamic>),
      geoPoint2D: GeoPoint2D.fromJson(json['geo_point_2d'] as Map<String, dynamic>),
    );
  }
}

class GeoShape {
  final String type;
  final Geometry geometry;
  final Map<String, dynamic> properties;

  GeoShape({
    required this.type,
    required this.geometry,
    required this.properties,
  });

  factory GeoShape.fromJson(Map<String, dynamic> json) {
    return GeoShape(
      type: json['type'] as String,
      geometry: Geometry.fromJson(json['geometry'] as Map<String, dynamic>),
      properties: json['properties'] as Map<String, dynamic>,
    );
  }
}

class Geometry {
  final List<double> coordinates;
  final String type;

  Geometry({
    required this.coordinates,
    required this.type,
  });

  factory Geometry.fromJson(Map<String, dynamic> json) {
    return Geometry(
      coordinates: (json['coordinates'] as List)
          .map((e) => (e as num).toDouble())
          .toList(),
      type: json['type'] as String,
    );
  }
}

class GeoPoint2D {
  final double lon;
  final double lat;

  GeoPoint2D({
    required this.lon,
    required this.lat,
  });

  factory GeoPoint2D.fromJson(Map<String, dynamic> json) {
    return GeoPoint2D(
      lon: (json['lon'] as num).toDouble(),
      lat: (json['lat'] as num).toDouble(),
    );
  }
}