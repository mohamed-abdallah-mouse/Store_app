import 'dart:convert';

import 'package:http/http.dart' as http;

class Api {
  Future<dynamic> get({required String url}) async {
    http.Response response = await http.get(Uri.parse(url));
    List<dynamic> data = jsonDecode(response.body);

    if (response.statusCode == 200) {
      return data;
    } else {
      throw Exception('there is an error ${response.statusCode}');
    }
  }
}
