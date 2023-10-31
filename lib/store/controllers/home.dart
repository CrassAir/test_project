import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_project/routes.dart';

class HomeController extends GetxController {
  RxString currentRoute = RouterHelper.charging_points.obs;

  void changePage(String route) {
    currentRoute.value = route;
    Get.offNamedUntil(route, ModalRoute.withName(RouterHelper.home), id: 1);
  }

  Route? onGenerateRoute(RouteSettings settings) {
    if (['/', RouterHelper.home, RouterHelper.initial].contains(settings.name)) return null;
    var route = RouterHelper.routes.firstWhere((element) => element.name == settings.name);
    return GetPageRoute(
      settings: settings,
      page: route.page,
      binding: route.binding,
    );
  }
}
