import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiService {
  // api get method
  Future<List<dynamic>> get(String url) async {
    final response = await http.get(Uri.parse(url));
    if (response.statusCode >= 200 || response.statusCode <= 300) {
      return json.decode(response.body);
    } else {
      throw Exception("api error");
    }
  }

  // api post method
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

  // api post method
  Future<dynamic> put(String url, {required Map<String, dynamic> body}) async {
    final response = await http.put(
      Uri.parse(url),
      body: json.encode(body),
      headers: {'Content-Type': 'application/json'},
    );
    if (response.statusCode >= 200 || response.statusCode < 300) {
      print("unicorn successfully updated");

      return json.decode(response.body);
    } else {
      throw Exception('Api error');
    }
  }

  // api delete method
  Future<List<dynamic>> delete(String url) async {
    final response = await http.delete(Uri.parse(url));
    if (response.statusCode >= 200 || response.statusCode < 300) {
      return json.decode(response.body);
    } else {
      throw Exception('Api error');
    }
  }
}
