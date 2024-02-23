import 'package:flutter/material.dart';
import 'package:islami_app/homeScreen/homeScreen.dart';
import 'package:islami_app/homeScreen/screens/sura_details_screen.dart';
import 'package:islami_app/homeScreen/splashscreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          titleTextStyle: TextStyle(fontSize: 30 , color: Colors.black),
          centerTitle: true,
        ),
        scaffoldBackgroundColor: Colors.transparent,
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            unselectedItemColor: Colors.white,
            selectedItemColor: Colors.black,
            selectedIconTheme: IconThemeData(
              size: 40,
            ),
            unselectedIconTheme: IconThemeData(
              size: 30
            ),
      ),
      ),
      debugShowCheckedModeBanner: false,
      routes:{
        SplashScreen.routeName:(context)=>SplashScreen(),
        HomeScreen.routeName:(context)=> HomeScreen(),
        SuraDetailsScreen.routeName:(context)=> SuraDetailsScreen(),
      },
      initialRoute: SplashScreen.routeName,
    );
  }
}
