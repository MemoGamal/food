// ignore_for_file: non_constant_identifier_names, file_names, unnecessary_overrides

import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../Data/Service/Service.dart';
import '../Feauture/Animations/Failed_Connection_Page/Screen/Screen.dart';

class PageViewController extends GetxController {
  var theCarosurController = CarouselController(); // Carosur Controller..

  int itemCount = 5; // Items in my pageview number
  var indexNumber = 0.obs; //Current position in the pageview..
  var pageScrollingValue = 0.0.obs; //Value of scrolling in pageview..

  void pagePosition(var change) {
    // Getting the position of the page!
    indexNumber.value = change;
    update();
  }

  void pageValueDetector(var index) {
    // Getting the value of the page!.
    pageScrollingValue.value = index;
    update();
  }
}

class ApiController extends GetxController {
  var isLoading = true.obs;
  late List Response = [];

  void FetchProduct() async {
    try {
      isLoading.value = true;
      Response = await Service.FetchProducts();

      // Fetch Product out of service.
    } on Error {
      // To Avoid Null Error if SomeThing is wrong with the api..
      const FailedConnection(
        ErrorMessage:
            "Please Call the Developer and Say Meooow Server Problem In Controller",
      );
    } finally {
      isLoading.value = false;
    }
  }
}

class OrderGetterController extends GetxController {
  var Price = 0.8; // I use Fake Price Because Api Don't Give One..
  var Number = 1.obs;
  var Result = 0.8;
  int inCartItems = 0;

  get PriceGetter => Result.toStringAsFixed(2);
  // to take only first two decimals ..
  void Add() {
    Number++;
    PriceMultiplier();
    update();
  }

  void Minus() {
    if (Number <= 1) {
    } else {
      Number--;
      PriceMultiplier();
    }
    update();
  }

  void PriceMultiplier() {
    Result = Price * Number.value;
    update();
  }

  @override
  void dispose() {
    // Will work on Dispose
    super.dispose();
  }
}

class BottomBarController extends GetxController {
  var ScreenPage = 0.obs;
  ChangeScreen(int index) {
    ScreenPage.value = index; // when i Click on bottomBar i change Screen..
    update();
  }
}

class CartController extends GetxController {
  Map<int, List> MyMap = {};
  // Map That Saves The key and value to each time user asks for Addition to cart
  Map NumberOfOrders = {}.obs;
  dynamic Result = 0.0.obs;
  var Price = 0.8; // I use fake Price because api don't give one!..
  Map TotalPrice = {}.obs;
  var TotalPriceGetter;
  Add(index) {
    print(NumberOfOrders);
    NumberOfOrders[index]++;
    // PriceMultiplier();
    update();
  }

  Multipier(index) {
    Result = NumberOfOrders[index] * Price;
    update();
  }

  TotalPriceFun(int index) {
    TotalPriceGetter = 0.0;

    for (int i = 0; i <= 10; i++) {
      if (NumberOfOrders[i] == null) {
        continue; // To avoid Empty location in Map ... user orderd order number 1..3..5.. to avoid 2&4
      }
      TotalPrice[i] = NumberOfOrders[i] * Price;
      TotalPriceGetter += TotalPrice[i];
      // print("Total Price Valuse are ${TotalPrice.values.toList()[index]}");
    }
    // print("Well This is the value ${TotalPrice.values}");
    // print("Well This is the value of Getter ${TotalPriceGetter}");
  }

  Minus(index) {
    print(NumberOfOrders[index]);

    if (NumberOfOrders[index] <= 1) {
    } else {
      NumberOfOrders[index]--;
      // PriceMultiplier();
    }
    update();
  }

  addProducts(ProductIndex) {
    // var test = MyMap[0]!.toList();
    // print(test[0]);
    // MyMap.forEach((key, value) {
    //   // Key 0-4-10-100
    //   print("Key is $key");
    // });
    // MyMap.containsKey(key)

    if (MyMap.containsKey(ProductIndex)) {
      Get.snackbar("Item is Already In Cart",
          "You can't Add the item Because it's already in cart");
    } else {
      // MyMap[ProductIndex];

      Get.snackbar("Item Has been Added to your Cart",
          "the item has been added in your cart successfully");
    }
  }
}
