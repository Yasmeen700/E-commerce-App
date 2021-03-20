import 'package:ecommerce_mobile_app/model/product_model.dart';
import 'package:http/http.dart' as http;

import 'dart:convert';
Future<http.Response> fetchAlbum() {
  return http.get('https://fakestoreapi.herokuapp.com/products');
}




Future<List<Product>> fetchProduct() async {
  final response = await http.get('https://fakestoreapi.herokuapp.com/products');

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return parseProduct(response.body);
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

List<Product> parseProduct(String responseBody) {
  final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();

  return parsed.map<Product>((json) => Product.fromJson(json)).toList();
}