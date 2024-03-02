import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/homeScreen/hades_tab/hadethTitleWidget.dart';
import 'package:islami_app/homeScreen/mythemedata.dart';
import 'package:islami_app/providers/settingsProvider.dart';
import 'package:provider/provider.dart';

class HadethDetails extends StatelessWidget {
  static String routeName = "Hadeth Details";
  @override
  Widget build(BuildContext context) {
    var settingProvider = Provider.of<SettingsProvider>(context);
    Hadeth args = ModalRoute.of(context)?.settings.arguments as Hadeth;
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
                style: Theme.of(context).textTheme.titleMedium?.copyWith(fontSize: 30 )),
          ),
          body: Card(
            color: Theme.of(context).cardColor,
            margin: EdgeInsets.all(26),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(args.title,
                      style: GoogleFonts.getFont("El Messiri", fontSize: 30)),
                  Container(
                      width: 200,
                      child: Divider(
                        height: 3,
                        color: Color.fromRGBO(183, 147, 95, 1),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(args.content , style: GoogleFonts.getFont("El Messiri" , fontSize: 25) , textDirection: TextDirection.rtl,textAlign: TextAlign.center,),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
