import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/homeScreen/hades_tab/hadestab.dart';
import 'package:islami_app/homeScreen/mythemedata.dart';
import 'package:islami_app/homeScreen/quran_tab/quranTab.dart';
import 'package:islami_app/homeScreen/radio_tab/radiotab.dart';
import 'package:islami_app/homeScreen/tasbeh_tab/tasbehtab.dart';
import 'package:islami_app/homeScreen/setting tab/settingTab.dart';
import 'package:islami_app/providers/settingsProvider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "Home Screen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndexTab = 0;

  List<Widget> tabs = [RadioTab(),TasbeehTab(),HadesTab(),QuranTab() , SettingTab()];

  @override
  Widget build(BuildContext context) {
    var settingProvider = Provider.of<SettingsProvider>(context);
    return Stack(
      children: [
        Image.asset(
          settingProvider.getBackground(),
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            iconTheme: Theme.of(context).iconTheme,
            title: Text(AppLocalizations.of(context)!.app_title,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(fontSize: 30)),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedIndexTab,
            onTap: (index) {
              selectedIndexTab = index;
              setState(() {});
            },
            items:[
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assests/images/img_4.png")),
                  label: AppLocalizations.of(context)!.radio_tab,
                  backgroundColor: Theme.of(context).primaryColor),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assests/images/img_5.png")),
                  label: AppLocalizations.of(context)!.tasbeh_tab,
                  backgroundColor:  Theme.of(context).primaryColor),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assests/images/img_6.png")),
                  label: AppLocalizations.of(context)!.hadeth_tab,
                  backgroundColor:  Theme.of(context).primaryColor),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assests/images/img_7.png")),
                  label: AppLocalizations.of(context)!.quran_tab,
                  backgroundColor:  Theme.of(context).primaryColor),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: AppLocalizations.of(context)!.setting_tab,
                  backgroundColor:  Theme.of(context).primaryColor),
            ],
          ),
          body: tabs[selectedIndexTab],
        ),
      ],
    );
  }
}
