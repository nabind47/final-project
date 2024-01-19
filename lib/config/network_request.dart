import 'package:dio/dio.dart';
import 'package:final_project/config/api_endpoints.dart';
import 'package:final_project/features/dashboard/home/jokes_model.dart';

class NetworkRequest {
  Future<List<JokesModel>?> getJokes() async {
    final dio = Dio();
    final res = await dio.get(ApiEndpoints.jokes);
  }
}
