import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_project/qraphql/__generated__/charging_points.data.gql.dart';
import 'package:test_project/qraphql/__generated__/charging_points.var.gql.dart';
import 'package:test_project/store/services/charg_point.dart';
import 'package:test_project/utils.dart';

Map<int, dynamic> statusChoises = {
  1: {'title': 'В работе', 'color': Colors.green, 'bgcolor': Colors.green.shade50},
  2: {'title': 'Ремонт', 'color': Colors.amber, 'bgcolor': Colors.amber.shade100},
  3: {'title': 'Подготовка к запуску', 'color': Colors.yellow, 'bgcolor': Colors.yellow.shade100},
  4: {'title': 'Не в работе', 'color': Colors.red, 'bgcolor': Colors.red.shade100},
  5: {'title': 'Автономный режим', 'color': Colors.red, 'bgcolor': Colors.red.shade100},
};

class ChargingPointCtrl extends GetxController with StateMixin {
  final ChargingPointService chargingPointService = Get.find();

  RxList<GChargingPointsData_chargingPoints_data?> chargPoints = <GChargingPointsData_chargingPoints_data?>[].obs;
  Rx<GChargingPointData_chargingPoint>? chargPoint;
  Stream<OperationResponse<GChargingPointsData, GChargingPointsVars>>? stream;

  void clearChargPoint() {
    chargPoint = null;
  }

  void getChargingPoints({bool next = false}) {
    if (next) {
      chargingPointService.getNextChargingPoints(chargPoints.length);
    } else {
      change(null, status: RxStatus.loading());
      stream = chargingPointService.getChargingPoints();
    }
    stream?.listen((event) {
      if (event.data.hasData && event.data!.chargingPoints.data.isNotEmpty) {
        chargPoints.value = [...event.data!.chargingPoints.data.toList()];
        change(null, status: RxStatus.success());
      }
    });
  }

  void getChargingPoint(String id) {
    change(chargPoint, status: RxStatus.loading());
    var stream = chargingPointService.getChargingPoint(id);
    stream?.listen((event) {
      if (event.data.hasData) {
        chargPoint = Rx<GChargingPointData_chargingPoint>(event.data!.chargingPoint);
        change(chargPoint, status: RxStatus.success());
      }
    });
  }
}
