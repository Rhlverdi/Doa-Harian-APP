import 'package:flutter/material.dart';
import 'package:pembukuan_apk/constant/const_color.dart';
import 'package:pembukuan_apk/view/widgets/bottom_navbar_widget.dart';
import 'package:pembukuan_apk/view/widgets/loading_widget.dart';
import 'package:provider/provider.dart';

import '../../view_models/doa_view_models.dart';
import '../widgets/doa_card_widget.dart';

class DoaPage extends StatefulWidget {
  static const String routeName = '/doaPage';
  const DoaPage({super.key});

  @override
  State<DoaPage> createState() => _DoaPageState();
}

class _DoaPageState extends State<DoaPage> {
  late DoaViewModel doaProvider;

  @override
  void initState() {
    doaProvider = Provider.of<DoaViewModel>(context, listen: false);

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      doaProvider.fetchDoa();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final doaVM = Provider.of<DoaViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Doa Harian"),
        ),
        backgroundColor: primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 16, 10, 0),
        child: doaVM.isLoading
            ? loadingWidget()
            : Consumer<DoaViewModel>(
                builder: (context, value, child) => ListView.builder(
                  itemCount: value.doaList.length,
                  itemBuilder: (context, index) {
                    final doa = value.doaList[index];
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Doa(
                        doa: doa.doa!,
                        ayat: doa.ayat!,
                        latin: doa.latin!,
                        arti: doa.artinya!,
                      ),
                    );
                  },
                ),
              ),
      ),
      bottomNavigationBar: const BottomNavbar(
        currentIndex: 0,
      ),
    );
  }
}
