import 'package:food_app_project/controller/popular_product_controller.dart';
import 'package:food_app_project/data/api/api_client.dart';
import 'package:food_app_project/data/repositary/popular_product_repo.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

Future<void> init()async {
  
  //api client
  Get.lazyPut(()=>ApiClient(appBaseUrl: "https://www.dbstech.com"));

  // repos
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  
  //controller
  Get.lazyPut(() => PopularProductController(popularProductRepo:Get.find()));
  
}