import 'package:flutter/material.dart';
import 'package:pembukuan_apk/constant/const_color.dart';
import 'package:pembukuan_apk/view/pages/murottal_surah_page.dart';

import '../pages/about_page.dart';
import '../pages/doa_page.dart';

class BottomNavbar extends StatefulWidget {
  final int currentIndex;

  const BottomNavbar({
    super.key,
    required this.currentIndex,
  });

  @override
  State<BottomNavbar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavbar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 3),
      child: BottomNavigationBar(
        backgroundColor: primaryColor,
        currentIndex: widget.currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        selectedIconTheme: const IconThemeData(color: Colors.white),
        unselectedIconTheme: const IconThemeData(color: Colors.black),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 30,
            ),
            label: 'Doa Harian',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.album,
              size: 30,
            ),
            label: 'Murottal Surah',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.error,
              size: 30,
            ),
            label: 'About',
          ),
        ],
        onTap: (value) {
          if (value == widget.currentIndex) {
            return;
          }
          switch (value) {
            case 0:
              Navigator.pushReplacementNamed(context, DoaPage.routeName);
              break;
            case 1:
              Navigator.pushReplacementNamed(
                  context, MurottalSurahPage.routeName);
              break;
            case 2:
              Navigator.pushReplacementNamed(context, AboutPage.routeName);
              break;
            default:
              Navigator.pushReplacementNamed(context, DoaPage.routeName);
          }
        },
      ),
    );
  }
}
