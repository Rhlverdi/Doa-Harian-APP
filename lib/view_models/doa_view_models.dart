import 'package:flutter/material.dart';

import '../models/doa_models.dart';
import '../services/doa_service.dart';

class DoaViewModel extends ChangeNotifier {
  bool isLoading = true;
  final DoaService doaService = DoaService();

  late List<DoaModel> doaList = [];

  void fetchDoa() async {
    doaList = await doaService.getDoa();
    isLoading = false;
    notifyListeners();
  }
}
