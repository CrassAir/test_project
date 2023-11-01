import 'package:flutter/animation.dart';
import 'package:get/get.dart';
import 'package:test_project/pages/Initial_page.dart';
import 'package:test_project/pages/charging_points_page.dart';
import 'package:test_project/pages/empty_page.dart';
import 'package:test_project/pages/home_page.dart';
import 'package:test_project/store/controllers/charg_point.dart';
import 'package:test_project/store/controllers/charg_points.dart';
import 'package:test_project/store/controllers/favorite.dart';
import 'package:test_project/store/controllers/home.dart';
import 'package:test_project/store/services/charg_point.dart';

class RouterHelper {
  static const home = '/home';
  static const initial = '/initial';
  static const map = '/map';
  static const profile = '/profile';
  static const dashboard = '/dashboard';
  static const charging_points = '/charging_points';

  static List<GetPage> routes = [
    GetPage(name: initial, page: () => const InitialPage(), transition: Transition.noTransition),
    GetPage(name: map, page: () => EmptyPage()),
    GetPage(name: charging_points, page: () => const ChargingPage(), binding: BindingsBuilder(() {
      Get.lazyPut<ChargingPointsCtrl>(() => ChargingPointsCtrl());
      Get.lazyPut<ChargingPointCtrl>(() => ChargingPointCtrl());
      Get.lazyPut<ChargingPointService>(() => ChargingPointService());
      Get.lazyPut<FavoriteCtrl>(() => FavoriteCtrl());
    })),
    GetPage(name: dashboard, page: () => EmptyPage()),
    GetPage(name: profile, page: () => EmptyPage()),
    GetPage(
      name: home,
      page: () => const HomePage(),
      curve: Curves.easeIn,
      transition: Transition.topLevel,
      binding: BindingsBuilder(() {
        Get.lazyPut<HomeController>(() => HomeController());
      }),
      // middlewares: [
      //   AuthMiddleware()
      // ],
    ),
  ];
}
