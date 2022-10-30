import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_clean_code_ecomm_app/Pages/HomePage/Screen/HomePage.dart';
import 'package:get/get.dart';

import '../../config/Injections.dart';

Init() {
  Injections.CartInjection;
  Injections.PriceInjection;
  Injections.PageViewInjection;
  Injections.NetworkInjection;
  Injections.BottomBarInjection;
}
