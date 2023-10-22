import 'package:flutter/material.dart';
import 'package:pembukuan_apk/view/pages/murottal_surah_page.dart';
import 'package:pembukuan_apk/view/pages/splash_screen_page.dart';
import 'package:provider/provider.dart';

import 'view/pages/about_page.dart';
import 'view/pages/doa_page.dart';
import 'view_models/doa_view_models.dart';
import 'view_models/surah_view_models.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => DoaViewModel()),
        ChangeNotifierProvider(create: (_) => SurahViewModel()),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: SplashScreen.routeName,
          routes: {
            SplashScreen.routeName: (context) => SplashScreen(),
            DoaPage.routeName: (context) => const DoaPage(),
            AboutPage.routeName: (context) => const AboutPage(),
            MurottalSurahPage.routeName: (context) => const MurottalSurahPage(),
          }),
    );
  }
}
