import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:storeapp/helper/api.dart';

class AllcategoriesService {
  Future<List<dynamic>> getallcategories() async {
    List<dynamic> data =
        await Api().get(url: 'https://fakestoreapi.com/products/categories');
    return data;
  }
}
