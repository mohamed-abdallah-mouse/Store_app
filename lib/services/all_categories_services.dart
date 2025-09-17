import 'package:store_app/services/api.dart';
import 'package:store_app/store_model.dart';

class AllCategoriesServices {
  Future<List<StoreModel>> getAllCategories() async {
    List<dynamic> data = await Api().get(
      url: 'https://fakestoreapi.com/products/categories',
    );
    List<StoreModel> category = [];
    for (int i = 0; i < data.length; i++) {
      category.add(StoreModel.fromJson(data[i]));
    }
    return category;
  }
}
