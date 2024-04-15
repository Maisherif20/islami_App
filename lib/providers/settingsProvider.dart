import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsProvider extends ChangeNotifier {
  ThemeMode currentTheme = ThemeMode.light;
  String currentLocal = 'en';
  void changeTheme(ThemeMode newThemeMode) async {
    if (currentTheme == newThemeMode) {
      return;
    }
    currentTheme = newThemeMode;
    notifyListeners();
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("Dark", newThemeMode == ThemeMode.dark);
  }

  Future<void> chnageLanguage(String newLocal) async {
    if (newLocal == currentLocal) return;
    currentLocal = newLocal;
    notifyListeners();
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("lang", newLocal);
  }

  Future<void> getLang() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? lang = prefs.getString("lang");
    if (lang != null) {
      currentLocal = lang;
      notifyListeners();
    }
  }

  Future<void> getTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? isDark = prefs.getBool("Dark");
    if (isDark != null) {
      if (isDark == true) {
        currentTheme = ThemeMode.dark;
      } else {
        currentTheme = ThemeMode.light;
      }
      notifyListeners();
    }
  }

  String getBackground() {
    return currentTheme == ThemeMode.light
        ? "assests/images/img_2.png"
        : "assests/images/img_11.png";
  }

  Widget getSplashScreen() {
    return currentTheme == ThemeMode.light
        ? Stack(children: [
            Image.asset(
              "assests/images/img_14.png",
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.fill,
            ),
            Center(child: Image.asset("assests/images/img_1.png"))
          ])
        : Stack(children: [
            Image.asset(
              "assests/images/img_13.png",
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.fill,
            ),
            Center(child: Image.asset("assests/images/img_17.png" , height: 246 , width: 246,))
          ]);
  }
}
