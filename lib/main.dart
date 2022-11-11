import 'package:flutter/material.dart';
import 'package:flutter_clean_code_ecomm_app/Feauture/Animations/SplashScreen/Screen/SplashScreen.dart';
import 'package:flutter_clean_code_ecomm_app/Pages/SignUp&LogInPages/Screen/LoginPage.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'Feauture/Init/Init.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      actions: Init(),
      home: const LoginPage(),
      // home: const FetchingContent(),
    );
  }
}
