import 'package:e_commerce/model/product_model.dart';
import 'package:flutter/material.dart';
import '../api/product_api.dart';

class ProductProvider with ChangeNotifier {
  List<Product> _products = [];

  List<Product> get products => _products;

  Future<void> fetchProducts() async {
    // _products = await ProductApi.getProducts();
    notifyListeners();
  }
}