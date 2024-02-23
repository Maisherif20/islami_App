import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/homeScreen/quran_tab/sura_name.dart';
import 'package:islami_app/homeScreen/screens/sura_details_screen.dart';

class QuranTab extends StatelessWidget {
  List<String> suraName = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];
  List<String> versesNumber = ["٧", "٢٨٦", "٢٠٠", "١٧٦", "١٢٠", "١٦٥", "٢٠٦", "٧٥", "١٢٩", "١٠٩", "١٢٣", "١١١", "٤٣", "٥٢", "٩٩", "١٢٨", "١١١", "١١٠", "٩٨", "١٣٥", "١١٢", "٧٨", "١١٨", "٦٤", "٧٧", "٢٢٧", "٩٣", "٨٨",
  "٦٩", "٦٠", "٣٤", "٣٠", "٧٣", "٥٤", "٤٥", "٨٣", "١٨٢", "٨٨", "٧٥", "٨٥", "٥٤", "٥٣", "٨٩", "٥٩", "٣٧", "٣٥", "٣٨", "٢٩", "١٨", "٤٥", "٦٠", "٤٩", "٦٢", "٥٥", "٧٨", "٩٦", "٢٩", "٢٢", "٢٤", "١٣", "١٤", "١١", "١١",
  "١٨", "١٢", "١٢", "٣٠", "٥٢", "٥٢", "٤٤", "٢٨", "٢٨", "٢٠", "٥٦", "٤٠", "٣١", "٥٠", "٤٠", "٤٦", "٤٢", "٢٩", "١٩", "٣٦", "٢٥", "٢٢", "١٧", "١٩", "٢٦", "٣٠", "٢٠", "١٥", "٢١", "١١", "٨", "٥", "١٩", "٥", "٨", "٨", "١١", "١١", "٨", "٣",
  "٩", "٥", "٤", "٦", "٣", "٦", "٣", "٥", "٤", "٥", "٦"];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(flex:1,child: Image.asset("assests/images/img_3.png")),
        const SizedBox(height: 10,),
        Expanded(
          flex: 3,
          child: ListView(
            children: [
              Table(
                border: TableBorder.all(color: Color.fromRGBO(183, 147, 95, 1)),
                children: [
                  TableRow(
                    children: [
                      TableCell(
                        child: Container(
                          alignment: Alignment.center,
                            child: Text('عدد الايات',style: GoogleFonts.getFont('El Messiri' , fontSize: 25))),
                      ),
                      TableCell(
                        child: Container(
                          alignment: Alignment.center,
                            child: Text('اسم السوره' , style: GoogleFonts.getFont('El Messiri' , fontSize: 25),)),
                      ),
                    ],
                  ),
                  for (int i = 0; i < suraName.length; i++)
                    TableRow(
                      children: [
                        TableCell(
                          child: Container(
                            alignment: Alignment.center,
                              child: Text(versesNumber[i] , style: TextStyle(fontSize: 25),)),
                        ),
                        TableCell(
                          child: SuraName(suraargs: SuraArgs(title:suraName[i]  , index: i )),
                        ),
                      ],
                    ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
//ListView.builder(
//           itemBuilder: (context, index) => SuraName(
//             suraTitle: suraName[index],
//           ),
//           itemCount: suraName.length,
//         )


