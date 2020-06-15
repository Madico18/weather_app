import 'dart:convert';

import 'package:http/http.dart' as http;

class NetworkHelper {
  final String url;

  NetworkHelper(this.url);

  Future getData() async {
    http.Response response = await http.get(url);

    try {
      if (response.statusCode == 200) {
        String data = response.body;
        print(data);
        print(jsonDecode(data));

        return jsonDecode(data);
      } else {
        print(
            'response.statusCode from network helper = ${response.statusCode}');
      }
    } catch (e) {
      print('error from network helper = $e');
    }
  }
}
