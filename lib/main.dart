import 'package:flutter/material.dart';
import 'package:islami_app/homeScreen/hades_tab/hadethDetailsScreen.dart';
import 'package:islami_app/homeScreen/homeScreen.dart';
import 'package:islami_app/homeScreen/mythemedata.dart';
import 'package:islami_app/homeScreen/splashscreen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/providers/settingsProvider.dart';
import 'package:provider/provider.dart';

import 'homeScreen/quran_tab/sura_details_screen.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (buildContext) {
        return SettingsProvider()
          ..getLang()
          ..getTheme();
      },
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var settingProvider = Provider.of<SettingsProvider>(context);
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: [
        Locale('en'), // English
        Locale('ar'), // arabix
      ],
      locale: Locale(settingProvider.currentLocal),
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: settingProvider.currentTheme,
      debugShowCheckedModeBanner: false,
      routes: {
        SplashScreen.routeName: (context) => SplashScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraDetailsScreen.routeName: (context) => SuraDetailsScreen(),
        HadethDetails.routeName: (context) => HadethDetails()
      },
      initialRoute: SplashScreen.routeName,
    );
  }
}
