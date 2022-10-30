// ignore_for_file: non_constant_identifier_names, duplicate_ignore

import 'package:get/get.dart';

GetHeight() {
  return Get.height;
}

GetWidth() {
  return Get.width;
}

// ignore: non_constant_identifier_names
GetHeightinPixels(int pixels) {
  double x = GetHeight() / pixels;
  return GetHeight() / x;
}

GetWidthinPixels(int pixels) {
  double x = GetWidth() / pixels;
  return GetWidth() / x;
}
