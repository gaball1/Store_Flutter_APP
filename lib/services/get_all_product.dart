import 'dart:convert';

import 'package:http/http.dart';
import 'package:storeapp/helper/api.dart';
import 'package:storeapp/models/product_model.dart';

class AllproductsService {
  Future<List<ProductModel>> getAllProducts() async {
    List<dynamic> data =
        await Api().get(url: 'https://fakestoreapi.com/products');
    List<ProductModel> Productslist = [];
    for (int i = 0; i < data.length; i++) {
      Productslist.add(
        ProductModel.fromJson(data[i]),
      );
    }
    return Productslist;
  }
}
