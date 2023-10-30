import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_project/qraphql/__generated__/charging_points.data.gql.dart';
import 'package:test_project/qraphql/__generated__/charging_points.var.gql.dart';
import 'package:test_project/store/services/charg_point.dart';
import 'package:test_project/utils.dart';

Map<int, dynamic> statusChoises = {
  1: {'title': 'В работе', 'color': Colors.green},
  2: {'title': 'Ремонт', 'color': Colors.amber},
  3: {'title': 'Подготовка к запуску', 'color': Colors.yellow},
  4: {'title': 'Не в работе', 'color': Colors.red},
  5: {'title': 'Автономный режим', 'color': Colors.red},
};

class ChargingPointCtrl extends GetxController with StateMixin {
  final ChargingPointService chargingPointService = Get.put(ChargingPointService());

  RxList<GChargingPointsData_chargingPoints_data?> chargPoints = <GChargingPointsData_chargingPoints_data?>[].obs;
  Stream<OperationResponse<GChargingPointsData, GChargingPointsVars>>? stream;

  void getChargingPoints({bool next = false}) async {
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
}
