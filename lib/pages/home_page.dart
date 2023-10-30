import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_project/store/controllers/charg_point.dart';
import 'package:test_project/widgets/charg_point_item.dart';
import 'package:test_project/widgets/search_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ChargingPointCtrl ctrl = Get.put(ChargingPointCtrl());
  var scrollController = ScrollController();

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

  void onChangePage() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: RefreshIndicator(
      onRefresh: () async {
        ctrl.getChargingPoints();
      },
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: CustomScrollView(
            controller: scrollController,
            physics: const AlwaysScrollableScrollPhysics(),
            slivers: [
              const SliverToBoxAdapter(child: SizedBox(height: 10)),
              const HomeSearchBar(),
              ctrl.obx(
                  (state) => SliverList.builder(
                        itemCount: ctrl.chargPoints.length,
                        itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4),
                          child: OpenContainer(
                            closedColor: Theme.of(context).cardColor,
                            closedShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                            closedBuilder: (context, action) => ChargingPointItem(data: ctrl.chargPoints[index]!),
                            openBuilder: (context, action) => Container(color: Colors.white),
                          ),
                        ),
                      ),
                  onLoading: const SliverToBoxAdapter(
                    child: LinearProgressIndicator(
                      valueColor: AlwaysStoppedAnimation(Colors.amber),
                    ),
                  ))
            ],
          ),
        ),
      ),
    ));
  }
}
