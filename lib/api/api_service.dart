import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  //Generic method to make a GET request
  static Future<http.Response> get(String url) async {
    final headers = {
      'Content-Type': 'application/json',
    };

    final response = await http.get(Uri.parse(url), headers: headers);
    return response;
  }

  //Generic method to make a POST request
  static Future<http.Response> post(String url, {Map<String, dynamic>? body}) async {
    final headers = {
      'Content-Type': 'application/json',
    };

    final response = await http.post(
      Uri.parse(url),
      headers: headers,
      body: json.encode(body),
    );
    return response;
  }

  //Generic method to make a PUT request
  static Future<http.Response> put(String url, {Map<String, dynamic>? body}) async {
    final headers = {
      'Content-Type': 'application/json',
    };

    final response = await http.put(
      Uri.parse(url),
      headers: headers,
      body: json.encode(body),
    );
    return response;
  }

  //Generic method to make a DELETE request
  static Future<http.Response> delete(String url) async {
    final headers = {
      'Content-Type': 'application/json',
    };

    final response = await http.delete(Uri.parse(url), headers: headers);
    return response;
  }
}
