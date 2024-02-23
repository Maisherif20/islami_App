import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/homeScreen/mythemedata.dart';
import 'package:islami_app/homeScreen/quran_tab/sura_name.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/homeScreen/screens/quranText.dart';
import 'package:islami_app/providers/settingsProvider.dart';
import 'package:provider/provider.dart';

class SuraDetailsScreen extends StatefulWidget {
  static String routeName = "Sura Details";

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> versesNumber = [
    "٧",
    "٢٨٦",
    "٢٠٠",
    "١٧٦",
    "١٢٠",
    "١٦٥",
    "٢٠٦",
    "٧٥",
    "١٢٩",
    "١٠٩",
    "١٢٣",
    "١١١",
    "٤٣",
    "٥٢",
    "٩٩",
    "١٢٨",
    "١١١",
    "١١٠",
    "٩٨",
    "١٣٥",
    "١١٢",
    "٧٨",
    "١١٨",
    "٦٤",
    "٧٧",
    "٢٢٧",
    "٩٣",
    "٨٨",
    "٦٩",
    "٦٠",
    "٣٤",
    "٣٠",
    "٧٣",
    "٥٤",
    "٤٥",
    "٨٣",
    "١٨٢",
    "٨٨",
    "٧٥",
    "٨٥",
    "٥٤",
    "٥٣",
    "٨٩",
    "٥٩",
    "٣٧",
    "٣٥",
    "٣٨",
    "٢٩",
    "١٨",
    "٤٥",
    "٦٠",
    "٤٩",
    "٦٢",
    "٥٥",
    "٧٨",
    "٩٦",
    "٢٩",
    "٢٢",
    "٢٤",
    "١٣",
    "١٤",
    "١١",
    "١١",
    "١٨",
    "١٢",
    "١٢",
    "٣٠",
    "٥٢",
    "٥٢",
    "٤٤",
    "٢٨",
    "٢٨",
    "٢٠",
    "٥٦",
    "٤٠",
    "٣١",
    "٥٠",
    "٤٠",
    "٤٦",
    "٤٢",
    "٢٩",
    "١٩",
    "٣٦",
    "٢٥",
    "٢٢",
    "١٧",
    "١٩",
    "٢٦",
    "٣٠",
    "٢٠",
    "١٥",
    "٢١",
    "١١",
    "٨",
    "٥",
    "١٩",
    "٥",
    "٨",
    "٨",
    "١١",
    "١١",
    "٨",
    "٣",
    "٩",
    "٥",
    "٤",
    "٦",
    "٣",
    "٦",
    "٣",
    "٥",
    "٤",
    "٥",
    "٦"
  ];
  @override
  List<String> versus = [];
  Widget build(BuildContext context) {
    var settingProvider = Provider.of<SettingsProvider>(context);
    SuraArgs args = ModalRoute.of(context)?.settings.arguments as SuraArgs;
    if (versus.isEmpty) {
      readFileContent(args.index);
    }
    return Stack(
      children: [
        Image.asset(
          settingProvider.getBackground(),
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text("إسلامي",
                style: Theme.of(context).textTheme.titleMedium?.copyWith(fontSize: 30)),
          ),
          body: versus.isEmpty
              ? Center(child: CircularProgressIndicator())
              : Card(
            color: Theme.of(context).cardColor,
            margin: EdgeInsets.all(26),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 20,),
                      Text(args.title,
                          style:
                              GoogleFonts.getFont("El Messiri", fontSize: 30)),
                      Container(
                          width: 200,
                          child: Divider(
                            height: 3,
                            color: Theme.of(context).dividerColor,
                          )),
                      SizedBox(height: 20,),
                      Expanded(
                          child: ListView.builder(
                            shrinkWrap: true,
                        itemBuilder: (context, index) => QuranText(textt: versus[index], index: (index+1).toString(),),
                        itemCount: versus.length,
                      ))
                    ],
                  ),
                ),
        ),
      ],
    );
  }

  void readFileContent(int index) async {
    String fileCntent =
        await rootBundle.loadString("assests/quran/${index + 1}.txt");
    List<String> suraLines = fileCntent.split('\n');
    for (int i = 0; i < suraLines.length; i++) {
      print(suraLines[i]);
    }
    setState(() {
      versus = suraLines;
    });
  }
}
