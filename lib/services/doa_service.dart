import 'package:dio/dio.dart';
import '../models/doa_models.dart';

class DoaService {
  final Dio _dio = Dio();

  Future<List<DoaModel>> getDoa() async {
    try {
      final Response response =
          await _dio.get("https://doa-doa-api-ahmadramadhan.fly.dev/api");

      if (response.statusCode == 200) {
        final List<DoaModel> data =
            (response.data as List).map((e) => DoaModel.fromMap(e)).toList();

        return data;
      }
    } on DioException {
      rethrow;
    }
    return getDoa();
  }
}
