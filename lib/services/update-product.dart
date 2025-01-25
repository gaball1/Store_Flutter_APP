import 'package:storeapp/helper/api.dart';
import 'package:storeapp/models/product_model.dart';

class UpdateProduct {
  Future<ProductModel> updateproduct({
    required String title,
    required String price,
    required String desc,
    required String image,
    required int id,
    required String Category,
  }) async {
    Map<String, dynamic> data =
        await Api().put(url: 'https://fakestoreapi.com/products/$id', body: {
      'title': title,
      'price': price,
      'description': desc,
      'image': image,
      'category': Category,
    });
    return ProductModel.fromJson(data);
  }
}
