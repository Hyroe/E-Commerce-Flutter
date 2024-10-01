import 'dart:convert';
import 'package:http/http.dart' as http;

import '../model/product_model.dart';
import '../utils/constant.dart';
import 'api_service.dart';

class ProductAPI {
  // Get product list
  static Future<List<Product>> getProducts() async {
    final http.Response response = await ApiService.get('${ApiConstants.baseUrl}/products');

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body);
      return data.map((product) => Product.fromJson(product)).toList();
    } else {
      throw Exception('Failed to load products');
    }
  }

  // Get a product by its ID
  static Future<Product> getProductById(String id) async {
    final http.Response response = await ApiService.get('${ApiConstants.baseUrl}/products/$id');

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return Product.fromJson(data);
    } else {
      throw Exception('Failed to load product');
    }
  }

  // Create a new product
  static Future<Product> createProduct(Product product) async {
    final http.Response response = await ApiService.post(
      '${ApiConstants.baseUrl}/products',
      body: product.toJson(),
    );

    if (response.statusCode == 201) {
      final data = jsonDecode(response.body);
      return Product.fromJson(data);
    } else {
      throw Exception('Failed to create product');
    }
  }

  // Update a product
  static Future<Product> updateProduct(String id, Product product) async {
    final http.Response response = await ApiService.put(
      '${ApiConstants.baseUrl}/products/$id',
      body: product.toJson(),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return Product.fromJson(data);
    } else {
      throw Exception('Failed to update product');
    }
  }

  // Delete a product
  static Future<void> deleteProduct(String id) async {
    final http.Response response = await ApiService.delete('${ApiConstants.baseUrl}/products/$id');

    if (response.statusCode != 200) {
      throw Exception('Failed to delete product');
    }
  }
}
