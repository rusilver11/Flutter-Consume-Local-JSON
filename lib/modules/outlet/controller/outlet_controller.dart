
import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';

class OutletController extends GetxController{
  
  List outletList = [].obs;

  Future<void> getOutlet() async{
      final String response = await rootBundle.loadString('assets/data/outlet.json');
      List data = await json.decode(response);
      outletList = data;
  }

}