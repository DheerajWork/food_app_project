import 'package:food_app_project/data/api/api_client.dart';
import 'package:get/get.dart';

class PopularProductRepo extends GetxService{
  final ApiClient apiClient;
  PopularProductRepo({required this.apiClient});

  Future<Object> getPopularProductList()async{
    return await apiClient.getData("https://www.dbstech.com/api/v1/products/popular");
  }
}