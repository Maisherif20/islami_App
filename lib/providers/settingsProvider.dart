import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {
  ThemeMode currentTheme = ThemeMode.light;
  String currentLocal='en';
  void changeTheme(ThemeMode newThemeMode) {
    if (currentTheme == newThemeMode) {
      return;
    }
    currentTheme = newThemeMode;
    notifyListeners();
  }
  void chnageLanguage(String newLocal){
    if(newLocal==currentLocal)return;
    currentLocal=newLocal;
    notifyListeners();
  }
  String getBackground(){
    return currentTheme==ThemeMode.light?"assests/images/img_2.png":"assests/images/img_11.png";
  }
  Widget getSplashScreen(){
    return currentTheme==ThemeMode.light?Stack(
        children: [
        Image.asset("assests/images/img_14.png" , width: double.infinity,height: double.infinity,fit: BoxFit.fill,),
    Center(child: Image.asset("assests/images/img_1.png"))
    ]):Stack(
        children: [
        Image.asset("assests/images/img_13.png" , width: double.infinity,height: double.infinity,fit: BoxFit.fill,),
    Center(child: Image.asset("assests/images/img_12.png"))
    ]);
  }
}
