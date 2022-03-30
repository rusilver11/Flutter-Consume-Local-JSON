// import 'package:flutter/material.dart';
// import 'package:flutter_easyloading/flutter_easyloading.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:get/get.dart';
// import 'package:monster_group/routes/route_name.dart';
// import 'package:monster_group/utils/constant.dart';
// import 'package:monster_group/utils/extension.dart';

// import '../controller/home_controller.dart';


// class HomeMenu extends StatelessWidget {
//   const HomeMenu({
//     Key? key,
//     required this.homeCtrl,
//   }) : super(key: key);

//   final HomeController homeCtrl;

//   @override
//   Widget build(BuildContext context) {
//     return Obx(
//       () => Column(
//         children: [
//           Container(
//             width: double.infinity,
//             alignment: Alignment.centerRight,
//             margin: EdgeInsets.only(right: 10.0.wp),
//             child: TextButton(
//                 onPressed: () {
//                   Get.toNamed(RouteName.catalog);
//                 },
//                 child: Text(
//                   'CATALOG',
//                   style: TextStyle(
//                       color: kGrey,
//                       fontSize: 12.0.sp,
//                       fontWeight: FontWeight.bold),
//                 )),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               Container(
//                 width: 33.0.wp,
//                 height: 18.5.hp,
//                 decoration: BoxDecoration(
//                   border: Border.all(color: kBrown,width: 2.0),
//                   borderRadius: BorderRadius.circular(30),
//                 ),
//                 child: InkWell(
//                   borderRadius: BorderRadius.circular(28),
//                   onTap: (){
//                     //homeCtrl.isPressed.toggle();
//                     //Get.toNamed(RouteName.outlet);
//                     Get.toNamed(RouteName.outlet);
//                   },
//                   onLongPress: () => homeCtrl.isPressed.toggle(),
//                   splashColor: kBrown,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       SvgPicture.asset(
//                           'assets/icons/shop_icon.svg',
//                           color: homeCtrl.isPressed.value ? kBrown : kSaffron),
//                       Text('My Outlet',
//                       style: TextStyle(
//                         color:kBrown,
//                         fontWeight: FontWeight.bold
//                       ),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//               Container(
//                 width: 33.0.wp,
//                 height: 18.5.hp,
//                 decoration: BoxDecoration(
//                   border: Border.all(color: kBrown,width: 2.0),
//                   borderRadius: BorderRadius.circular(30),
//                 ),
//                 child: InkWell(
//                   borderRadius: BorderRadius.circular(28),
//                   onTap: (){
//                     homeCtrl.isPressed.toggle();
//                     EasyLoading.showInfo('Halaman Belum tersedia',dismissOnTap: true);
//                   },
//                   onLongPress: () => homeCtrl.isPressed.toggle(),
//                   splashColor: kBrown,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       SvgPicture.asset(
//                           'assets/icons/cart_icon.svg',
//                           color: homeCtrl.isPressed.value ? kBrown : kSaffron),
//                       Text('Order',
//                       style: TextStyle(
//                         color:kBrown,
//                         fontWeight: FontWeight.bold
//                       ),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(height: 3.0.hp),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               Container(
//                 width: 33.0.wp,
//                 height: 18.5.hp,
//                 decoration: BoxDecoration(
//                   border: Border.all(color: kBrown,width: 2.0),
//                   borderRadius: BorderRadius.circular(30),
//                 ),
//                 child: InkWell(
//                   borderRadius: BorderRadius.circular(28),
//                   onTap: (){
//                     homeCtrl.isPressed.toggle();
//                     EasyLoading.showInfo('Halaman Belum tersedia',dismissOnTap: true);
//                   },
//                   onLongPress: () => homeCtrl.isPressed.toggle(),
//                   splashColor: kBrown,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       SvgPicture.asset(
//                           'assets/icons/notification_icon.svg',
//                           color: homeCtrl.isPressed.value ? kBrown : kSaffron),
//                       Text('Notification',
//                       style: TextStyle(
//                         color:kBrown,
//                         fontWeight: FontWeight.bold
//                       ),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//               Container(
//                 width: 33.0.wp,
//                 height: 18.5.hp,
//                 decoration: BoxDecoration(
//                   border: Border.all(color: kBrown,width: 2.0),
//                   borderRadius: BorderRadius.circular(30),
//                 ),
//                 child: InkWell(
//                   borderRadius: BorderRadius.circular(28),
//                   onTap: (){
//                     homeCtrl.isPressed.toggle();
//                     EasyLoading.showInfo('Halaman Belum tersedia',dismissOnTap: true);
//                   },
//                   onLongPress: () => homeCtrl.isPressed.toggle(),
//                   splashColor: kBrown,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       SvgPicture.asset(
//                           'assets/icons/history_icon.svg',
//                           color: homeCtrl.isPressed.value ? kBrown : kSaffron),
//                       Text('History',
//                       style: TextStyle(
//                         color:kBrown,
//                         fontWeight: FontWeight.bold
//                       ),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
