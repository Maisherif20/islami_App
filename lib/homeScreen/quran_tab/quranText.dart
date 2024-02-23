

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class  QuranText extends StatelessWidget {
  String textt;
  String  index;
  QuranText({required this.textt , required this.index});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10 , top: 2,bottom: 2),
            child: Text("""${textt}   (${index})""",  style: GoogleFonts.getFont("El Messiri", fontSize: 25),textDirection: TextDirection.rtl,textAlign: TextAlign.center,),
          ),
      ),
    );
  }
}
