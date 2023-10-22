import 'package:flutter/material.dart';

import '../models/surah_models.dart';
import '../services/surah_service.dart';

class SurahViewModel extends ChangeNotifier {
  bool isLoading = true;
  final SurahService surahService = SurahService();

  late List<SurahModel> surahList = [];

  void fetchSurah() async {
    surahList = await surahService.getSurah();
    isLoading = false;
    notifyListeners();
  }
}
