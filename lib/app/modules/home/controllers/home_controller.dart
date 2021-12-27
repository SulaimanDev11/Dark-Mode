import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  var isDark = false.obs;

  final count = 0.obs;

  void changeTheme(status) {
    if (status == true) {
      isDark.value = true;
      Get.changeTheme(
        ThemeData.dark().copyWith(
            iconTheme: IconThemeData(color: Colors.blue),
            textTheme: TextTheme(
              headline1:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              headline2:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              headline3:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              headline4:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              headline5:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              headline6:
                  TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
            ),
            hintColor: Colors.grey),
      );
    } else {
      isDark.value = false;
      Get.changeTheme(ThemeData.light().copyWith(
          iconTheme: IconThemeData(color: Colors.black),
          textTheme: TextTheme(
            headline1:
                TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
            headline2:
                TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
            headline3:
                TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
            headline4:
                TextStyle(color: Colors.pink, fontWeight: FontWeight.bold),
            headline5: TextStyle(
                color: Colors.deepOrangeAccent, fontWeight: FontWeight.bold),
            headline6:
                TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
          ),
          hintColor: Colors.grey));
    }
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
