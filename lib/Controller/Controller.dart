// ignore_for_file: non_constant_identifier_names, file_names, unnecessary_overrides

import 'package:carousel_slider/carousel_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:rive/rive.dart';
import '../Service/Service.dart';
import '../Feauture/Animations/Failed_Connection_Page/Screen/Screen.dart';
import '../Pages/SignUp&LogInPages/Widgets/Enum.dart';

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
  List<String> ListOfFoodLink = [];
  List<String> ListOfFoodName = [];
  List<String> ListOfFoodDescription = [];
  List<String> ListOfLongFoodDescription = [];
  List<int> ListOfFoodPrice = [];

  void FetchProduct() async {
    try {
      isLoading.value = true;

      // Fetch Product out of service.
      await Service.FetchProducts();
    } on Error {
      // To Avoid Null Error if SomeThing is wrong with the api..
      const FailedConnection(
        ErrorMessage:
            "Please Call the Developer and Say Meooow Server Problem In Controller",
      );
    }
  }
}

class OrderGetterController extends GetxController {
  int Price = 1;
  //= 1; //= 0.8; // I use Fake Price Because Api Don't Give One..
  var Number = 1.obs;
  var Result;
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
  int Price = 0; // I use fake Price because api don't give one!..
  int TotalPriceGetter = 0;
  Add(index) {
    NumberOfOrders[index]++;
    // PriceMultiplier();
    update();
  }

  Multipier(index) {
    Result = NumberOfOrders[index] * Price;
    update();
  }

  TotalPriceFun(int index) {
    TotalPriceGetter = 0;
    MyMap.forEach((key, value) {
      TotalPriceGetter += MyMap[key]![3] * NumberOfOrders[key] as int;
    });

    // TotalPriceGetter = 0.0;

    // MyMap.forEach((key, value) {
    //   TotalPrice[key] = NumberOfOrders[key] * Price;
    //   TotalPriceGetter += TotalPrice[key];
    // });
    // print("Well This is the value ${TotalPrice.values}");
    // print("Well This is the value of Getter ${TotalPriceGetter}");
  }

  Minus(index) {
    if (NumberOfOrders[index] <= 1) {
    } else {
      NumberOfOrders[index]--;
      // PriceMultiplier();
    }
    update();
  }

  addProducts(ProductIndex) {
    // MyMap.addAll({0: []});
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

class LoginPageController extends GetxController {
  FocusNode LoginEmailFocus = FocusNode();
  FocusNode SignUpPhoneFocus = FocusNode();
  FocusNode PasswordFocus = FocusNode();
  FocusNode SignUpPasswordFocus = FocusNode();
  FocusNode EmailFocus = FocusNode();
  FocusNode NameFocus = FocusNode();

  Artboard? riveArtboard;
  RiveAnimationController controllerIdle =
      SimpleAnimation(AnimationEnum.idle.name);
  RiveAnimationController controllerHandsUp =
      SimpleAnimation(AnimationEnum.Hands_up.name);
  RiveAnimationController controllerHandsDown =
      SimpleAnimation(AnimationEnum.hands_down.name);
  RiveAnimationController controllerLookLeft =
      SimpleAnimation(AnimationEnum.Look_down_left.name);
  RiveAnimationController controllerLookRight =
      SimpleAnimation(AnimationEnum.Look_down_right.name);
  RiveAnimationController controllerSuccess =
      SimpleAnimation(AnimationEnum.success.name);
  RiveAnimationController controllerFail =
      SimpleAnimation(AnimationEnum.fail.name);
  void ResetControllers() {
    riveArtboard?.artboard.removeController(controllerIdle);
    riveArtboard?.artboard.removeController(controllerHandsUp);
    riveArtboard?.artboard.removeController(controllerHandsDown);
    riveArtboard?.artboard.removeController(controllerLookLeft);
    riveArtboard?.artboard.removeController(controllerLookRight);
    riveArtboard?.artboard.removeController(controllerSuccess);
    riveArtboard?.artboard.removeController(controllerFail);
  }

  void AddIdle() {
    ResetControllers();
    riveArtboard?.artboard.addController(controllerIdle);
  }

  void AddHandsUp() {
    ResetControllers();
    riveArtboard?.artboard.addController(controllerHandsUp);
  }

  void AddHandsDown() {
    ResetControllers();
    riveArtboard?.artboard.addController(controllerHandsDown);
  }

  void AddLookLeft() {
    ResetControllers();
    riveArtboard?.artboard.addController(controllerLookLeft);
  }

  void AddLookRight() {
    ResetControllers();
    riveArtboard?.artboard.addController(controllerLookRight);
  }

  void AddSuccess() {
    ResetControllers();
    riveArtboard?.artboard.addController(controllerSuccess);
  }

  void Addfail() {
    ResetControllers();
    riveArtboard?.artboard.addController(controllerFail);
  }

  void PasswordNodeDetector() {
    PasswordFocus.addListener(() {
      if (PasswordFocus.hasFocus) {
        AddHandsUp();
      } else if (!PasswordFocus.hasFocus) {
        AddHandsDown();
      }
    });
  }

  // The eyes are being Moved by the on Change Function in the textformfield ...

  void EyesMover(value) {
    if (LoginEmailFocus.hasFocus) {
      if (value.length <= 15) {
        AddLookLeft();
      } else {
        AddLookRight();
      }
    }
  }

// Typed User Data Through Creation of user information..
  var TypedEmailData;
  var TypedPasswordData;

// LogIn Page Validation..
  var TypedLoginEmailData;
  var TypedLoginPasswordData;
}

class AppVersion extends GetxController {
  double Appversion = 0.1;
  var VersionChecker =
      FirebaseFirestore.instance.collection("AppVersion").get().then((value) {
    value.docs.forEach((element) {
      if (element.get("AppVersion") != 0.1) {
        Get.to(() => FailedConnection(
            ErrorMessage: "Old Version Please Check MEMO For new Version!"));
      }
    });
  });
}
