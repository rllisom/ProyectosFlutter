import 'package:flutter_valencia_opendata/core/models/aparcamientos_list_response.dart';

abstract class AparcamientosInterface {

  Future<AparcamientosListResponse> getAparcamientos();
}