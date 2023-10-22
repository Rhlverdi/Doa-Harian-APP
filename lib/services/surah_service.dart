import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:pembukuan_apk/models/surah_models.dart';

class SurahService {
  final Dio _dio = Dio();

  Future<List<SurahModel>> getSurah() async {
    try {
      final Response response = await _dio.get(
          "https://raw.githubusercontent.com/penggguna/QuranJSON/master/quran.json");

      if (response.statusCode == 200) {
        final List<SurahModel> data =
            (json.decode(response.data) as List<dynamic>)
                .map((e) => SurahModel.fromMap(e as Map<String, dynamic>))
                .toList();

        return data;
      }
    } on DioException {
      rethrow;
    }
    return [];
  }
}
