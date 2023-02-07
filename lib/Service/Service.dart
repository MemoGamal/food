// ignore_for_file: non_constant_identifier_names, file_names

import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_clean_code_ecomm_app/config/Injections.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../Controller/Controller.dart';
import '../Feauture/Animations/Failed_Connection_Page/Screen/Screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Service extends GetxService {
  static Future FetchProducts() async {
    try {
      print("Fetching product");
      CollectionReference GetData =
          FirebaseFirestore.instance.collection("PopularFood");
      await GetData.get().then((value) {
        value.docs.forEach((element) {
          print("Looping in lists");
          Injections.NetworkInjection.ListOfFoodLink
              .add(element.get("FoodLink"));
          Injections.NetworkInjection.ListOfFoodDescription
              .add(element.get("FoodDescription"));
          Injections.NetworkInjection.ListOfFoodName
              .add(element.get("FoodName"));
          Injections.NetworkInjection.ListOfLongFoodDescription
              .add(element.get("LongFoodDescription"));
          Injections.NetworkInjection.ListOfFoodPrice
              .add(element.get("FoodPrice"));
        });
      });
    } on Error catch (e) {
      print("Error");
    } finally {
      Injections.NetworkInjection.isLoading.value = false;
      Injections.NetworkInjection.ListOfFoodName.forEach((element) {
        print(element);
      });
      print("Done");
    }

    //   CollectionReference GetData =
    //       FirebaseFirestore.instance.collection("PopularFood");
    //   GetData.orderBy("FoodPrice", descending: false)
    //       .startAfter(["1"])
    //       .get()
    //       .then((value) {
    //         value.docs.forEach((element) {
    //           print(element.get("FoodPrice"));
    //         });
    //       });
    // } on Error catch (e) {
    //   print("Error");
    // }
  }
}
