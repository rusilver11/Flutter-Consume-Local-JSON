import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:monster_group/modules/home/home_screen.dart';
import 'package:monster_group/routes/route_name.dart';

class ValidationException implements Exception{
    String message;
  ValidationException(this.message);
}

class LoginController extends GetxController{
  final formKey = GlobalKey<FormState>();
  late TextEditingController usernameController;
  late TextEditingController passwordController;

  Future<void> login() async{
    try {
      final String response = await rootBundle.loadString('assets/data/user.json');
      List data = await json.decode(response);
      
      var result = data.where((element) => 
      element['username'].toString().contains(usernameController.text) &&
      element['password'].toString().contains(passwordController.text)
      ).toList();

      if(result.isNotEmpty){
      usernameController.clear();
      passwordController.clear();
      Get.off(()=> const HomeScreen());
      }else{
        throw ValidationException('User is not registered');
      }
    }on ValidationException catch (e) {
      EasyLoading.showError(e.message);
    }

  }

  @override
  void onInit() {
    super.onInit();
    usernameController = TextEditingController();
    passwordController = TextEditingController();
  }
}