// import http
import 'dart:convert';

import 'package:flutterclient/welcome.dart';
import 'package:http/http.dart' as http;

class DataServices {
  String baseUrl = "http://localhost:8080/api/place";
  Future<List<WelcomeModel>> welcome() async {
    http.Response response = await http.get(Uri.parse(baseUrl));
    try {
      if (response.statusCode == 200) {
        List<dynamic> list = json.decode(response.body);
        return list.map((e) => WelcomeModel.fromJson(e)).toList();
      }
    } catch (e) {
      print(e);
    }
    return <WelcomeModel>[];
  }
}
