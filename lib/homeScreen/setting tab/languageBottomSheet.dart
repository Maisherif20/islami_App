import 'package:flutter/material.dart';
import 'package:islami_app/providers/settingsProvider.dart';
import 'package:provider/provider.dart';

class LanguageBottomSheet  extends StatefulWidget {

  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {

  @override
  Widget build(BuildContext context) {
    var settingProvider = Provider.of<SettingsProvider>(context);
    return SingleChildScrollView(
      child: Column(
        children: [
          InkWell(
            onTap: (){
              settingProvider.chnageLanguage('ar');
            },
            child: settingProvider.currentLocal=='ar'?getSelectedItem('Arabic'):getUnSelectedItem('Arabic'),
          ),
          InkWell(
            onTap: (){
              settingProvider.chnageLanguage('en');
            },
            child: settingProvider.currentLocal=='en'?getSelectedItem('English'):getUnSelectedItem('English'),
          )
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
}
// Padding(
// padding: const EdgeInsets.all(24.0),
// child: CheckboxListTile(
// activeColor:Color.fromRGBO(183, 147, 95, 1),
// title: Text('Arabic', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
// value: _checkBoxValues[0],
// onChanged: (newValue) {
// setState(() {
// _checkBoxValues = [newValue!, false];
// });
// },
// ),
// ),
