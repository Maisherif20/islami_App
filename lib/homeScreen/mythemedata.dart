import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static const Color lightPrimaryColor = Color.fromRGBO(183, 147, 95, 1);
  static const Color darkPrimaryColor = Color.fromRGBO(20, 26, 46, 1);
  static bool isdarkSelected = true;

  static ThemeData lightTheme = ThemeData(
      primaryColor: lightPrimaryColor,
      textTheme: TextTheme(
        headlineMedium:GoogleFonts.getFont("El Messiri",fontSize: 25 , fontWeight: FontWeight.w600 , color: Colors.black),
        titleMedium: GoogleFonts.getFont("El Messiri",fontSize: 25 , fontWeight: FontWeight.bold , color: Colors.black),
        bodyMedium:GoogleFonts.getFont("El Messiri",fontSize: 20 , fontWeight: FontWeight.normal , color: Colors.black) ,
      ),
      appBarTheme:  const AppBarTheme(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
        titleTextStyle: TextStyle(fontSize: 30, color: Colors.black),
        centerTitle: true,
      ),
      cardColor: lightPrimaryColor,
      dividerColor: lightPrimaryColor,
      scaffoldBackgroundColor: Colors.transparent,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.black,
        selectedIconTheme: IconThemeData(
          size: 50,
        ),
        unselectedIconTheme: IconThemeData(size: 40),
      ));




  static ThemeData darkTheme = ThemeData(
      textTheme: TextTheme(
        headlineMedium:GoogleFonts.getFont("El Messiri",fontSize: 25 , fontWeight: FontWeight.w600 , color: Colors.white),
        titleMedium: GoogleFonts.getFont("El Messiri",fontSize: 25 , fontWeight: FontWeight.w600 , color: Colors.white),
        bodyMedium:GoogleFonts.getFont("El Messiri" , fontSize: 20 , fontWeight: FontWeight.normal , color: Color.fromRGBO(250, 204, 29, 1)) ,
      ),
      primaryColor: darkPrimaryColor,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme:  const AppBarTheme(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.transparent,
        elevation: 0,
        titleTextStyle: TextStyle(fontSize: 30, color: Colors.black),
        centerTitle: true,
      ),
      cardColor: darkPrimaryColor,
      dividerColor: const Color.fromRGBO(250, 204, 29, 1),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        unselectedItemColor: Colors.white,
        selectedItemColor: Color.fromRGBO(250, 204, 29, 1),
        selectedIconTheme: IconThemeData(
          size: 50,
        ),
        unselectedIconTheme: IconThemeData(size: 40),
      ));
}
