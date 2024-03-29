 import 'package:food_app_project/data/repositary/popular_product_repo.dart';
import 'package:get/get.dart';

import '../Models/products_model.dart';

class PopularProductController extends GetxController{
  final PopularProductRepo popularProductRepo;

  PopularProductController({required this.popularProductRepo});

  List<dynamic> _popularProductList=[];
  List<dynamic> get popularProductList=> _popularProductList;

  Future<void> getPopularProductList()async {
    Response response=await popularProductRepo.getPopularProductList() as Response;
    print(response.statusCode);
    if(response.statusCode==200){
     // print('got products');
      _popularProductList=[];
      _popularProductList.addAll(Product.fromJson(response.body).products);
      print(_popularProductList);
      update();
    }else{
      print('got products');
    }

  }

}