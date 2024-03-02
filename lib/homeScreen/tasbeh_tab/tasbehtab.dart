import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/providers/settingsProvider.dart';
import 'package:provider/provider.dart';

class TasbeehTab extends StatefulWidget {
  @override
  State<TasbeehTab> createState() => _TasbeehTabState();
}

class _TasbeehTabState extends State<TasbeehTab> {
  List<String> tasbehButton = [
    "سبحان الله",
    "الله اكبر",
    "الحمد لله",
    "استغفر الله و اتوب اليه"
  ];
  double angle = 0.0;
  int index = 0;
  @override
  double turns = 0.0;
  int counter = 0;
  // void Rotation() {
  //   setState(() => turns += 1.0 / 8.0);
  // }

  @override
  Widget build(BuildContext context) {
    var settingProvider = Provider.of<SettingsProvider>(context);
    return Center(
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              settingProvider.currentTheme == ThemeMode.light
                  ? Image.asset(
                      "assests/images/img_9.png",
                      height: 100,
                    )
                  : Image.asset(
                      "assests/images/img_16.png",
                      height: 100,
                    ),
              Padding(
                padding:  EdgeInsets.only(top:MediaQuery.of(context).size.height*0.09),
                child: Transform.rotate(
                  angle: angle,
                  child: settingProvider.currentTheme == ThemeMode.light
                      ? Image.asset("assests/images/img_8.png")
                      : Image.asset("assests/images/body of seb7a.png"),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text("عدد التسبيحات",
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: settingProvider.currentTheme == ThemeMode.light
                      ? Theme.of(context).primaryColor
                      : Colors.white,
                  fontWeight: FontWeight.bold)),
          SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
              color: settingProvider.currentTheme == ThemeMode.light
                  ? Theme.of(context).primaryColor
                  : Color.fromRGBO(250, 204, 29, 1),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 25, right: 25, top: 15, bottom: 15),
              child: Text(
                "${counter}",
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: settingProvider.currentTheme == ThemeMode.light
                        ? Colors.white
                        : Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          ElevatedButton(
            onPressed: () {
              tasbehChange();
            },
            child: Text(tasbehButton[index],
                style: GoogleFonts.getFont("El Messiri",
                    fontSize: 25,
                    color: settingProvider.currentTheme == ThemeMode.light
                        ? Colors.white
                        : Colors.black)),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    settingProvider.currentTheme == ThemeMode.light
                        ? Theme.of(context).primaryColor
                        : Color.fromRGBO(250, 204, 29, 1))),
          ),
        ],
      ),
    );
  }

  void tasbehChange() {
    if (counter < 33) {
      angle+=0.75;
      counter++;
    } else {
      if (index < 3) {
        index++;
        counter = 0;
      } else {
        index = 0;
        counter = 0;
      }
    }
    setState(() {});
  }
}
// AnimatedRotation(
// turns: turns,
// duration: const Duration(seconds: 1),
// child: Stack(
// children: [
// Positioned(
// left: 100,
// child:settingProvider.currentTheme==ThemeMode.light? Image.asset(
// "assests/images/img_9.png",
// height: 100,
// ): Image.asset(
// "assests/images/img_16.png",
// height: 100,
// )),
// Container(
// margin: EdgeInsets.only(top: 75),
// child: settingProvider.currentTheme==ThemeMode.light?Image.asset("assests/images/img_8.png"):Image.asset("assests/images/body of seb7a.png")),
// ],
// ),
// ),
