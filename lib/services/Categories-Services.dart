import 'dart:convert';

import 'package:storeapp/helper/api.dart';
import 'package:storeapp/models/product_model.dart';
import 'package:http/http.dart' as http;

class CategoriesService {
  Future<List<ProductModel>> getCategories(
      {required String CategoryName}) async {
    List<dynamic> data = await Api()
        .get(url: 'https://fakestoreapi.com/products/category/$CategoryName');
    List<ProductModel> Productslist = [];
    for (int i = 0; i < data.length; i++) {
      Productslist.add(
        ProductModel.fromJson(data[i]),
      );
    }
    return Productslist;
  }
}
