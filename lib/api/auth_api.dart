import 'dart:convert';
import 'package:e_commerce/api/api_service.dart';
import '../utils/constant.dart';

class AuthAPI {
  // User login
  static Future<String?> login(String email, String password) async {
    final response = await ApiService.post(
      '${ApiConstants.baseUrl}/login',
      body: {'email': email, 'password': password},
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return data['token'];  // Returns the JWT token
    } else {
      throw Exception('Failed to login');
    }
  }

  // User registration
  static Future<String?> register(String email, String password) async {
    final response = await ApiService.post(
      '${ApiConstants.baseUrl}/register',
      body: {'email': email, 'password': password},
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return data['token'];  // Returns the JWT token
    } else {
      throw Exception('Failed to register');
    }
  }
}
