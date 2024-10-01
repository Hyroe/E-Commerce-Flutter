// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import '../models/product_model.dart';

// class ProductApi {
//   static Future<List<Product>> getProducts() async {
//     final response = await http.get(Uri.parse('https://api.example.com/products'));
//     if (response.statusCode == 200) {
//       List data = jsonDecode(response.body);
//       return data.map((product) => Product.fromJson(product)).toList();
//     } else {
//       throw Exception('Failed to load products');
//     }
//   }
// }