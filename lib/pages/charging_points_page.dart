import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_project/pages/charging_point_detail/cp_detail_page.dart';
import 'package:test_project/store/controllers/charg_point.dart';
import 'package:test_project/store/controllers/charg_points.dart';
import 'package:test_project/widgets/charg_point_item.dart';
import 'package:test_project/widgets/search_bar.dart';

class ChargingPage extends StatefulWidget {
  const ChargingPage({Key? key}) : super(key: key);

  @override
  State<ChargingPage> createState() => _ChargingPageState();
}

class _ChargingPageState extends State<ChargingPage> {
  final ChargingPointsCtrl ctrl = Get.find();
  final ChargingPointCtrl chargingPointCtrl = Get.find();
  var scrollController = ScrollController();
  final platform = GetPlatform.isWeb;

  @override
  void initState() {
    super.initState();
    ctrl.getChargingPoints();
    scrollController.addListener(() {
      if (scrollController.position.atEdge) {
        if (scrollController.position.pixels != 0) ctrl.getChargingPoints(next: true);
      }
    });
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double responsibleWidth = MediaQuery.of(context).size.width > 800 ? MediaQuery.of(context).size.width * 0.1 : 0;
    return RefreshIndicator(
      onRefresh: () async {
        ctrl.getChargingPoints();
      },
      child: SafeArea(
        bottom: false,
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: CustomScrollView(
              controller: scrollController,
              physics: const AlwaysScrollableScrollPhysics(),
              slivers: [
                const SliverToBoxAdapter(child: SizedBox(height: 10)),
                SliverPadding(
                    padding: EdgeInsets.symmetric(horizontal: platform ? responsibleWidth : 8),
                    sliver: const HomeSearchBar()),
                const SliverToBoxAdapter(child: SizedBox(height: 10)),
                ctrl.obx(
                    (state) => SliverPadding(
                          padding: EdgeInsets.symmetric(horizontal: platform ? responsibleWidth : 8),
                          sliver: SliverList.builder(
                            itemCount: ctrl.chargPoints.length,
                            itemBuilder: (context, index) => Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4),
                              child: OpenContainer(
                                useRootNavigator: true,
                                closedColor: Theme.of(context).cardColor,
                                closedShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                onClosed: (data) => chargingPointCtrl.clearChargPoint(),
                                closedBuilder: (context, action) => ChargingPointItem(data: ctrl.chargPoints[index]!),
                                openBuilder: (context, action) => ChargingPointDetailPage(
                                    id: ctrl.chargPoints[index]!.id, title: ctrl.chargPoints[index]!.location.title),
                              ),
                            ),
                          ),
                        ),
                    onLoading: SliverPadding(
                      padding: EdgeInsets.symmetric(horizontal: platform ? responsibleWidth : 8),
                      sliver: const SliverToBoxAdapter(
                        child: LinearProgressIndicator(
                          valueColor: AlwaysStoppedAnimation(Colors.amber),
                        ),
                      ),
                    ))
              ],
            )),
      ),
    );
  }
}
