import 'package:flutter/material.dart';
import 'package:islami_app/homeScreen/setting%20tab/languageBottomSheet.dart';
import 'package:islami_app/homeScreen/setting%20tab/themeBottomSheet.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/providers/settingsProvider.dart';
import 'package:provider/provider.dart';

class SettingTab extends StatefulWidget {
  @override
  State<SettingTab> createState() => _SettingTabState();
}

class _SettingTabState extends State<SettingTab> {
  @override
  Widget build(BuildContext context) {
    var settingProvider = Provider.of<SettingsProvider>(context);
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 18),
            child: Text(AppLocalizations.of(context)!.theme,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          InkWell(
            onTap: () {
              showThemeBottomSheet();
            },
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    border: Border.all(
                        color: Theme.of(context).primaryColor, width: 3)),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text(
                    settingProvider.currentTheme==ThemeMode.light?"Light":"Dark",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18),
            child: Text(AppLocalizations.of(context)!.language,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          InkWell(
            onTap: () {
              showLanguageBottomSheet();
            },
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    border: Border.all(
                        color: Theme.of(context).primaryColor, width: 3)),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text(
                    settingProvider.currentLocal=='ar'?"Arabic":"English",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  void showThemeBottomSheet(){
    showModalBottomSheet(context: context, builder: (context)=>ThemeBottomSheet());

  }
  void showLanguageBottomSheet(){
    showModalBottomSheet(context: context, builder: (context)=> LanguageBottomSheet());
  }
}
