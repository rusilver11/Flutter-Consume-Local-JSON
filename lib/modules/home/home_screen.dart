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

List<Map<dynamic,dynamic>> menuList = [
  {
    "Icon" : 'assets/icons/shop_icon.svg',
    "Title" : 'My Outlet',
    "RouteName" : '/outlet'
  },
  {
    "Icon" : 'assets/icons/cart_icon.svg',
    "Title" : 'Order',
    "RouteName" : 'null'
  },
  {
    "Icon" : 'assets/icons/notification_icon.svg',
    "Title" : 'Notification',
    "RouteName" : 'null'
  },
  {
    "Icon" : 'assets/icons/history_icon.svg',
    "Title" : 'History',
    "RouteName" : 'null'
  }
];

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
                  //HomeMenu(homeCtrl: homeCtrl),
                  Container(
                    width: double.infinity,
                    alignment: Alignment.centerRight,
                    margin: EdgeInsets.only(right: 10.0.wp),
                    child: TextButton(
                        onPressed: () {
                          Get.toNamed(RouteName.catalog);
                        },
                        child: Text(
                          'CATALOG',
                          style: TextStyle(
                              color: kGrey,
                              fontSize: 12.0.sp,
                              fontWeight: FontWeight.bold),
                        )),
                  ),
                  GridView.builder(
                      itemCount: menuList.length,
                      shrinkWrap: true,
                      padding: EdgeInsets.only(
                          bottom: kDefaultPadding,
                          right: kDefaultPadding,
                          left: kDefaultPadding),
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 150,
                        crossAxisSpacing: 55,
                        mainAxisSpacing: 10,
                        mainAxisExtent: 134,
                      ),
                      itemBuilder: (context, index) {
                        return Obx(()=>
                        Container(
                            width: 33.0.wp,
                            height: 18.5.hp,
                            decoration: BoxDecoration(
                              border: Border.all(color: kBrown, width: 2.0),
                              color: homeCtrl.isPressed == index ? kBrown : Colors.white,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(28),
                              onTap: () {
                                homeCtrl.toogle(index);
                                if(menuList[index]['RouteName'].toString() != 'null'){
                                var xy = menuList[index]['RouteName'];
                                Get.toNamed(menuList[index]['RouteName']);
                                }else{
                                EasyLoading.showInfo('Halaman Belum tersedia',dismissOnTap: true);
                                }
                        
                              },
                              onLongPress: () {
                                homeCtrl.toogle(index);
                                if(menuList[index]['RouteName'].toString() != 'null'){
                                var xy = menuList[index]['RouteName'];
                                Get.toNamed(menuList[index]['RouteName']);
                                }else{
                                EasyLoading.showInfo('Halaman Belum tersedia',dismissOnTap: true);
                                }                                
                              },
                              splashColor: kBrown,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  SvgPicture.asset(menuList[index]['Icon'].toString(),
                                      color: homeCtrl.isPressed.value == index
                                          ? kSaffron : kBrown),
                                  Text(
                                    menuList[index]['Title'].toString(),
                                    style: TextStyle(
                                        color: homeCtrl.isPressed.value == index
                                        ? kSaffron:kBrown,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      })
                ],
              ),
            ),
          ),
        ));
  }
}
