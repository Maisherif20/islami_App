import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/api_Manager/apiManager.dart';
import '../models/Radio.dart';

class RadioProvider extends ChangeNotifier {
  List<Radios> radios = [];
  int index= 0;

  Future<void> getRadio() async {
    try {
      radios = await ApiManager.getRadio();
      notifyListeners();
    } catch (e) {
      print(e);
      notifyListeners();
    }
  }


  AudioPlayer audioPlayer = AudioPlayer();
  Future<void>playAudio()async{
    await audioPlayer.play(UrlSource(radios[index].url ?? ""));
    notifyListeners();
  }

  Future<void>pauseAudio()async{
    await audioPlayer.pause();
    notifyListeners();
  }
  playNext(){
    if(index < radios.length)
      {
        index++;
        notifyListeners();
      }
  }
  playPrevious(){
    if(index > 0)
    {
      index--;
      notifyListeners();
    }
  }
}
