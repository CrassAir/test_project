import 'package:flutter/animation.dart';
import 'package:get/get.dart';
import 'package:test_project/pages/Initial_page.dart';
import 'package:test_project/pages/home_page.dart';

class RouterHelper {
  static const home = '/home';
  static const initial = '/initial';
  static const login = '/login';
  static const register = '/register';
  static const store = '/store';
  static const rmk = '/rmk';
  static const worker = '/worker';

  static List<GetPage> routes = [
    GetPage(name: initial, page: () => const InitialPage(), transition: Transition.noTransition),
    GetPage(
      name: home,
      page: () => const HomePage(),
      curve: Curves.easeIn,
      transition: Transition.topLevel,
      binding: BindingsBuilder(() {
      }),
      // middlewares: [
      //   AuthMiddleware()
      // ],
    ),
  ];
}
