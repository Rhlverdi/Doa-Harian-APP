import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:pembukuan_apk/constant/const_color.dart';
import 'package:provider/provider.dart';

import '../../view_models/surah_view_models.dart';
import '../widgets/bottom_navbar_widget.dart';
import '../widgets/loading_widget.dart';
import '../widgets/surah_list_widget.dart';

class MurottalSurahPage extends StatefulWidget {
  static const String routeName = '/surahPage';
  const MurottalSurahPage({
    super.key,
  });

  @override
  State<MurottalSurahPage> createState() => _MurottalSurahPageState();
}

class _MurottalSurahPageState extends State<MurottalSurahPage> {
  late SurahViewModel surahProvider;
  final audioPlayer = AudioPlayer();
  bool isPlaying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;

  @override
  void initState() {
    surahProvider = Provider.of<SurahViewModel>(context, listen: false);

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      surahProvider.fetchSurah();
    });
    super.initState();
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final surahVM = Provider.of<SurahViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Murottal Surah"),
        ),
        backgroundColor: primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 16, 10, 0),
        child: surahVM.isLoading
            ? loadingWidget()
            : Consumer<SurahViewModel>(
                builder: (context, value, child) => ListView.builder(
                  itemCount: value.surahList.length,
                  itemBuilder: (context, index) {
                    final surah = value.surahList[index];
                    return SurahCardWidget(surah: surah);
                  },
                ),
              ),
      ),
      bottomNavigationBar: const BottomNavbar(
        currentIndex: 1,
      ),
    );
  }
}
