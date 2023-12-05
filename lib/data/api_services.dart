import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiService {
  Future<List<dynamic>> get(String url) async {
    final response = await http.get(Uri.parse(url));
    if (response.statusCode >= 200 || response.statusCode <= 300) {
      return json.decode(response.body);
    } else {
      throw Exception("api error");
    }
  }

  Future<dynamic> post(String url, {required Map<String, dynamic> body}) async {
    final response = await http.post(
      Uri.parse(url),
      body: json.encode(body),
      headers: {'Content-Type': 'application/json'},
    );
    if (response.statusCode >= 200 || response.statusCode < 300) {
      print("unicorn successfully added");
      return json.decode(response.body);
    } else {
      throw Exception('Api error');
    }
  }
}
