import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/homeScreen/screens/sura_details_screen.dart';

class SuraName extends StatelessWidget {
  SuraArgs suraargs;
  SuraName({required this.suraargs});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, SuraDetailsScreen.routeName , arguments: SuraArgs(title: suraargs.title, index: suraargs.index));
      },
      child: Container(
        alignment: Alignment.center,
          child: Text(suraargs.title , style:  GoogleFonts.getFont('El Messiri' , fontSize: 25 ),)),
    );
  }
}
class SuraArgs{
  String title;
  int index;
  SuraArgs({required this.title , required this.index});
}
