import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/homeScreen/hades_tab/hadethTitleWidget.dart';
import 'package:islami_app/homeScreen/mythemedata.dart';
import 'package:islami_app/providers/settingsProvider.dart';
import 'package:provider/provider.dart';

class HadesTab extends StatefulWidget {
  @override
  State<HadesTab> createState() => _HadesTabState();
}

class _HadesTabState extends State<HadesTab> {
  List<Hadeth> Ahadeth = [];

  @override
  Widget build(BuildContext context) {
    var settingProvider = Provider.of<SettingsProvider>(context);
    if (Ahadeth.isEmpty) {
      loadHadethFile();
    }
    return Ahadeth.isEmpty
        ? Center(child: CircularProgressIndicator())
        : Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            child: Column(
              children: [
                Expanded(
                    flex: 1, child: Image.asset("assests/images/img_10.png")),
                Container(
                    decoration: BoxDecoration(
                      border: settingProvider.currentTheme==ThemeMode.dark
                          ? Border.symmetric(
                              horizontal: BorderSide(
                                  width: 3,
                                  color: Color.fromRGBO(250, 204, 29, 1)))
                          : Border.symmetric(
                              horizontal: BorderSide(
                                  width: 3,
                                  color: Theme.of(context).primaryColor)),
                    ),
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text("الأحاديث",
                          style:
                          Theme.of(context).textTheme.titleMedium),
                    )),
                Expanded(
                    flex: 2,
                    child: ListView(
                      children: [
                        Table(
                          children: [
                            for (int i = 0; i < Ahadeth.length; i++)
                              TableRow(
                                children: [
                                  TableCell(
                                      child: HadethTitleWidget(
                                          hadethObjTitle: Ahadeth[i])),
                                ],
                              ),
                          ],
                        ),
                      ],
                    ))
              ],
            ),
          );
  }

  void loadHadethFile() async {
    String fileContent =
        await rootBundle.loadString('assests/ahadeth/ahadeth.txt');
    List<String> allAhadeth = fileContent.trim().split('#');
    for (int i = 0; i < allAhadeth.length; i++) {
      List<String> hadethLine = allAhadeth[i].trim().split('\n');
      String hadethTitle = hadethLine[0];
      hadethLine.removeAt(0);
      String hadethContent = hadethLine.join('\n');
      Hadeth hadethObj = Hadeth(title: hadethTitle, content: hadethContent);
      Ahadeth.add(hadethObj);
      setState(() {});
    }
  }
}
