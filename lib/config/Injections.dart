// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter_clean_code_ecomm_app/Controller/Controller.dart';
import 'package:get/get.dart';

class Injections {
  static get NetworkInjection => Get.put(ApiController());
  static get PageViewInjection => Get.put(PageViewController());
  static get PriceInjection => Get.put(OrderGetterController());
  static get CartInjection => Get.put(CartController());
  static get BottomBarInjection => Get.put(BottomBarController());
}
