import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:test_project/pages/charging_point_detail/cp_body.dart';
import 'package:test_project/pages/charging_point_detail/cp_connector_card.dart';
import 'package:test_project/pages/charging_point_detail/cp_header.dart';
import 'package:test_project/store/controllers/charg_point.dart';
import 'package:test_project/widgets/time_linear.dart';

class ChargingPointDetailPage extends StatefulWidget {
  const ChargingPointDetailPage({Key? key, required this.id, required this.title}) : super(key: key);
  final String id;
  final String title;

  @override
  State<ChargingPointDetailPage> createState() => _ChargingPointDetailPageState();
}

class _ChargingPointDetailPageState extends State<ChargingPointDetailPage> {
  final ChargingPointCtrl ctrl = Get.find();

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 300), () {
      ctrl.getChargingPoint(widget.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(widget.title),
          actions: [IconButton(onPressed: () {}, icon: SvgPicture.asset('assets/heart.svg'))]),
      body: ctrl.obx((state) {
        var chargPoint = ctrl.chargPoint?.value;
        if (chargPoint == null) return SizedBox();
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          child: Flex(direction: Axis.vertical, crossAxisAlignment: CrossAxisAlignment.start, children: [
            CPDetailHeader(chargPoint: chargPoint),
            const SizedBox(height: 20),
            CPDetailBody(chargPoint: chargPoint),
            const SizedBox(height: 20),
            SizedBox(
              height: 350,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: chargPoint.connectors.data.length,
                itemBuilder: (context, index) => CPConnectorCard(connector: chargPoint.connectors.data[index]!),
              ),
            ),
          ]),
        );
      },
          onLoading: Center(
              child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation(Theme.of(context).primaryColor),
          ))),
    );
  }
}
