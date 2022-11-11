// ignore_for_file: non_constant_identifier_names, file_names

import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../../Controller/Controller.dart';
import '../../Feauture/Animations/Failed_Connection_Page/Screen/Screen.dart';
import '../Module/Modules.dart';

class Service extends GetxService {
  static final Client = http.Client();
  static var NetWorkInjection = Get.put(ApiController());

  static Future FetchProducts() async {
    try {
      List Temp = [];
      var uri = Uri.https(
        'yummly2.p.rapidapi.com', '/feeds/list', // Reaching data inside api.
        {"limit": "20", "start": "0", "tag": "list.recipe.popular"},
      );
      var response = await Client.get(
        uri,
        headers: {
          'X-RapidAPI-Key':
              '2374225dcbmsh38edf1f6d490378p1e1c9djsndd9df663be47',
          'X-RapidAPI-Host': 'yummly2.p.rapidapi.com'
        },
      ).timeout(const Duration(seconds: 60)); // TimeOut Duration..

      var JsonResponse = response.body;

      if (response.statusCode == 200) {
        Map data = jsonDecode(JsonResponse);
        for (var i in data["feed"]) {
          Temp.add(i["content"]);
        }

        return Modules.moduleFromSnapShot(
            Temp); // Return from module to Controller.
      } else {
        const FailedConnection(
          ErrorMessage: "Meeeow Server has Stummbeld",
        );
      }
    } on TimeoutException catch (e) {
      Get.to(() => const FailedConnection(
          ErrorMessage:
              "Well We Had A TimeOut Exception Please Restart the Meoooow Application!"));
    } on Error catch (e) {
      Get.to(() => const FailedConnection(
          ErrorMessage:
              "Weell We are having a probelm with our Server.. Stay Tuned."));
    } on SocketException catch (e) {
      Get.to(() => const FailedConnection(
          ErrorMessage:
              "Internet Problem Please Check Your internet! Cat Says we are soory!"));
    } on FormatException catch (e) {
      Get.to(const FailedConnection(
          ErrorMessage: "Disgusting Api Meowww Says's we are sorry.."));
    }
  }
}
