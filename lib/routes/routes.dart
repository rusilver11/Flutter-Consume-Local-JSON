import 'package:get/get.dart';
import 'package:monster_group/modules/catalog/catalog_screen.dart';
import 'package:monster_group/modules/home/home_screen.dart';
import 'package:monster_group/modules/login/login_screen.dart';
import 'package:monster_group/modules/outlet/outlet_screen.dart';
import 'package:monster_group/routes/route_name.dart';

class AppRoute {
  static final pages = [
    GetPage(name: RouteName.login, page: () => Login()),
    GetPage(name: RouteName.home, page: () => HomeScreen()),
    GetPage(name: RouteName.outlet, page: () => OutletScreen()),
    GetPage(name: RouteName.catalog, page: () => CatalogScreen())
  ];
}