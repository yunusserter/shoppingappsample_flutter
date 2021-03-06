import 'package:dio/dio.dart';
import 'package:shoppingappsampleflutter/core/models/product.dart';
import 'package:shoppingappsampleflutter/core/services/api/sample_data/sample_products.dart';

class ProductsService {
  Future<List<Product>> getProducts() async {
    try {
      Response response = await Dio().get("http://www.google.com");
      print('getProducts() response' + response.data.toString().substring(0, 50));
    } catch (e) {
      print('getProducts() exception' + e);
      print(e);
    }

    return [
      ...sampleProducts1,
    ];
  }

  Future<Product> getProduct(String productId) async {
    try {
      await Future.delayed(Duration(seconds: 1));
    } catch (e) {
      print('getProduct() exception' + e);
      print(e);
    }
    // print("productId:" + productId + " count:" + sampleProducts1.length.toString());
    // for (var i = 0; i < sampleProducts1.length; i++) {
    //   print('i:' + i.toString() + " prdid:" + sampleProducts1[i].id);
    // }
    return sampleProducts1.firstWhere((element) => element.id == productId);
  }
}
