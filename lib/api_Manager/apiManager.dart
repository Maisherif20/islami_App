import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:islami_app/models/Radio.dart';

class ApiManager {
  static Future<List<Radios>> getRadio() async {
    var response = await http
        .get(Uri.parse("https://mp3quran.net/api/v3/radios?language=ar"));
    if(response.statusCode == 200)
      {
        var json =  jsonDecode(response.body);
        Radio radioData= Radio.fromJson(json);
        return radioData.radios ?? [];
      }
    else {
      throw "error";
    }
  }
}
