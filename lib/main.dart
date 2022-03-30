import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:monster_group/routes/route_name.dart';
import 'package:monster_group/routes/routes.dart';
import 'package:monster_group/utils/theme.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      initialRoute: RouteName.login,
      getPages: AppRoute.pages,
      builder: EasyLoading.init(),

    );
  }
}
