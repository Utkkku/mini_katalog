import 'dart:convert';

import 'package:flutter/services.dart';

import '../models/product.dart';

class ProductRepository {
  Future<List<Product>> loadProducts() async {
    final String jsonString =
        await rootBundle.loadString('assets/data/products.json');
    final List<dynamic> list = jsonDecode(jsonString) as List<dynamic>;

    return list
        .map((item) => Product.fromJson(item as Map<String, dynamic>))
        .toList();
  }
}
