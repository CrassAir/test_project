import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
      appBar: AppBar(title: Text(widget.title)),
      body: ctrl.obx((state) {
        var chargPoint = ctrl.chargPoint?.value;
        if (chargPoint == null) return SizedBox();
        return Flex(direction: Axis.vertical, crossAxisAlignment: CrossAxisAlignment.start, children: [
          CPDetailHeader(chargPoint: chargPoint),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                children: [
                  Text('Время работы', style: Theme.of(context).textTheme.titleSmall),
                  TimeLinear(
                    startTime: chargPoint.location.workingHoursStart,
                    endTime: chargPoint.location.workingHoursEnd,
                    height: 5,
                    width: MediaQuery.of(context).size.width * 0.5,
                  ),
                ],
              ),

              Text('Адрес', style: Theme.of(context).textTheme.titleSmall),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('${chargPoint.location.address}', style: Theme.of(context).textTheme.titleMedium),
                  Row(
                    children: [
                      Text('${chargPoint.location.longitude} ${chargPoint.location.latitude}',
                          style: Theme.of(context).textTheme.titleSmall),
                      IconButton(onPressed: () {}, icon: Icon(Icons.copy)),
                    ],
                  ),
                ],
              ),
              Text('Парковка', style: Theme.of(context).textTheme.titleSmall),
            ],
          ),
        ]);
      },
          onLoading: Center(
              child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation(Theme.of(context).primaryColor),
          ))),
    );
  }
}
