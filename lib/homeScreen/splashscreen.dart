import 'dart:async';
import 'package:flutter/material.dart';
import 'package:islami_app/homeScreen/homeScreen.dart';

class SplashScreen extends StatefulWidget {
  static String routeName = "Splash Screen";
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
            image: AssetImage("assests/images/OIP (10).jpg"), fit: BoxFit.fill),
      ),
      child: Image.asset("assests/images/img_1.png"),
    );
  }
}
