import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/elec_model.dart';

class ProductDataTest {
  Future<List<ProductTestModel>> getDataProductTest() async {
    var response = await http.get(
        Uri.parse("https://fakestoreapi.com/products/category/electronics"));
    if (response.statusCode == 200) {
      List jsonBody = json.decode(response.body);
      List<ProductTestModel> data = jsonBody.map((e) => ProductTestModel.fromJson(e),
          )
          .toList();
      return data;
    }
    throw Exception("");
  }
}
