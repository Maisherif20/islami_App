import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/homeScreen/hades_tab/hadestab.dart';
import 'package:islami_app/homeScreen/quran_tab/quranTab.dart';
import 'package:islami_app/homeScreen/radio_tab/radiotab.dart';
import 'package:islami_app/homeScreen/tasbeh_tab/tasbehtab.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "Home Screen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndexTab = 0;

  List<Widget> tabs = [RadioTab(),TasbeehTab(),HadesTab(),QuranTab()];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assests/images/img_2.png",
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text("إسلامي",
                style: GoogleFonts.getFont("El Messiri", fontSize: 30)),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedIndexTab,
            onTap: (index) {
              selectedIndexTab = index;
              setState(() {});
            },
            items: const [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assests/images/img_4.png")),
                  label: "",
                  backgroundColor: Color.fromRGBO(183, 147, 95, 1)),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assests/images/img_5.png")),
                  label: "",
                  backgroundColor: Color.fromRGBO(183, 147, 95, 1)),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assests/images/img_6.png")),
                  label: "",
                  backgroundColor: Color.fromRGBO(183, 147, 95, 1)),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assests/images/img_7.png")),
                  label: "",
                  backgroundColor: Color.fromRGBO(183, 147, 95, 1)),
            ],
          ),
          body: tabs[selectedIndexTab],
        ),
      ],
    );
  }
}
