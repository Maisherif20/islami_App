import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/homeScreen/hades_tab/hadethDetailsScreen.dart';


class HadethTitleWidget extends StatelessWidget {
  Hadeth hadethObjTitle;
  HadethTitleWidget({required this.hadethObjTitle});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, HadethDetails.routeName , arguments: hadethObjTitle);
      },
      child: Container(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              hadethObjTitle.title,
                style: Theme.of(context).textTheme.titleMedium)
            ),
          ),
    );
  }
}
class Hadeth {
  String title;
  String content;
  Hadeth({required this.title, required this.content});
}
