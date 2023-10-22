import 'package:flutter/material.dart';

import '../../constant/const_color.dart';
import '../widgets/bottom_navbar_widget.dart';

class AboutPage extends StatefulWidget {
  static const String routeName = '/aboutPage';
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("About"),
        ),
        backgroundColor: primaryColor,
      ),
      body: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Developer",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 20),
              Image.asset(
                "assets/images/PAS.png",
                height: 200,
              ),
              const SizedBox(height: 20),
              Text(
                "Aplikasi 'Doa Harian' ini saya buat agar orang dapat dengan mudah untuk membaca doa-doa harian dan juga mendengarkan murottal surah yang dibawakan oleh Syaikh Misyari Rasyid Al-'Afasi.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                "Contact:",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.mail),
                  const SizedBox(width: 10),
                  Text(
                    "13020200207@umi.ac.id",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Image.asset(
                "assets/images/umi.png",
                height: 100,
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavbar(
        currentIndex: 2,
      ),
    );
  }
}
