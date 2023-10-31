import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:test_project/routes.dart';
import 'package:test_project/store/controllers/home.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final platform = GetPlatform.isWeb;

  @override
  Widget build(BuildContext context) {
    double responsibleWidth = MediaQuery.of(context).size.width > 800 ? MediaQuery.of(context).size.width * 0.1 : 0;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: platform ? responsibleWidth : 0),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        height: 91,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(10),
              topLeft: Radius.circular(10),
              bottomRight: Radius.circular(30),
              bottomLeft: Radius.circular(30)),
          color: Theme.of(context).primaryColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          children: [
            NavBarItem(icon: SvgPicture.asset('assets/map.svg'), route: RouterHelper.map),
            NavBarItem(icon: SvgPicture.asset('assets/menu.svg'), route: RouterHelper.charging_points),
            NavBarItem(icon: SvgPicture.asset('assets/dashboard.svg'), route: RouterHelper.dashboard),
            NavBarItem(icon: SvgPicture.asset('assets/profile.svg'), route: RouterHelper.profile),
          ],
        ),
      ),
    );
  }
}

class NavBarItem extends StatelessWidget {
  NavBarItem({Key? key, required this.icon, required this.route}) : super(key: key);
  final String route;
  final Widget icon;
  final HomeController ctrl = Get.find();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Obx(
        () => Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: ctrl.currentRoute.value == route ? Colors.white.withOpacity(0.3) : Colors.transparent,
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                ctrl.changePage(route);
              },
              child: Center(child: icon),
            ),
          ),
        ),
      ),
    );
  }
}
