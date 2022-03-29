import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:monster_group/modules/home/controller/home_controller.dart';
import 'package:monster_group/routes/route_name.dart';
import 'package:monster_group/utils/constant.dart';
import 'package:monster_group/utils/extension.dart';
import 'package:monster_group/widgets/background.dart';

import 'widgets/home_menu.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final homeCtrl = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
            color: kBrown,
            iconSize: 6.0.hp,
          ),
        ),
        body: BackgroundBase(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: kDefaultPadding, vertical: 1.0.hp),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text('Welcome \nPartner :)',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0.sp,
                              color: kBrown)),
                      Image.asset(
                        'assets/images/banner.jpg',
                        scale: 0.9.wp,
                      )
                    ],
                  ),
                  SizedBox(height: 2.0.hp),
                  //this box menu
                  HomeMenu(homeCtrl: homeCtrl),
                ],
              ),
            ),
          ),
        ));
  }
}
