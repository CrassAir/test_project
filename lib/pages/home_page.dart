import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_project/routes.dart';
import 'package:test_project/store/controllers/home.dart';
import 'package:test_project/widgets/navbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController controller = Get.find();


  void onChangePage() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBody: true,
      bottomNavigationBar: const NavBar(),
      body: Navigator(
          key: Get.nestedKey(1),
          initialRoute: RouterHelper.charging_points,
          onGenerateRoute: controller.onGenerateRoute),
    );
  }
}
