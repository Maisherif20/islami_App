import 'package:flutter/material.dart';
import 'package:islami_app/providers/settingsProvider.dart';
import 'package:provider/provider.dart';

class ThemeBottomSheet extends StatefulWidget {
  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
  List<bool> _checkBoxValues = [false, false];
  @override
  Widget build(BuildContext context) {
    var settingProvider = Provider.of<SettingsProvider>(context);
    return SingleChildScrollView(
      child: Column(
        children: [
          InkWell(
            onTap: (){
              settingProvider.changeTheme(ThemeMode.light);
            },
            child: settingProvider.currentTheme==ThemeMode.light?getSelectedItem("Light"):getUnSelectedItem("Light"),
          ),
          InkWell(
            onTap: (){
              settingProvider.changeTheme(ThemeMode.dark);
            },
            child: settingProvider.currentTheme==ThemeMode.dark?getSelectedItem("Dark"):getUnSelectedItem("Dark"),
          ),
        ],
      ),
    );
  }

  Widget getSelectedItem(String text) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Row(
        children: [
          Text(
            text,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Spacer(),
          Icon(Icons.check , color: Theme.of(context).primaryColor,size: 40,)
        ],
      ),
    );
  }
  Widget getUnSelectedItem(String text) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Row(
        children: [
          Text(
            text,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
  // Padding(
  // padding: const EdgeInsets.all(24.0),
  // child: CheckboxListTile(
  // activeColor:Color.fromRGBO(183, 147, 95, 1),
  // title: Text('Light', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
  // value: _checkBoxValues[0],
  // onChanged: (newValue) {
  // setState(() {
  // _checkBoxValues = [newValue!, false];
  // });
  // },
  // ),
  // ),
}
