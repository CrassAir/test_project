import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test_project/qraphql/__generated__/charging_points.data.gql.dart';
import 'package:test_project/qraphql/__generated__/charging_points.var.gql.dart';
import 'package:test_project/store/services/charg_point.dart';
import 'package:test_project/utils.dart';



class ChargingPointsCtrl extends GetxController with StateMixin {
  final ChargingPointService chargingPointService = Get.find();

  RxList<GChargingPointsData_chargingPoints_data?> chargPoints = <GChargingPointsData_chargingPoints_data?>[].obs;
  Stream<OperationResponse<GChargingPointsData, GChargingPointsVars>>? stream;

  void getChargingPoints({bool next = false}) {
    if (next) {
      chargingPointService.getNextChargingPoints(chargPoints.length);
    } else {
      change(chargPoints, status: RxStatus.loading());
      stream = chargingPointService.getChargingPoints();
    }
    stream?.listen((event) {
      if (event.data.hasData && event.data!.chargingPoints.data.isNotEmpty) {
        chargPoints.value = [...event.data!.chargingPoints.data.toList()];
        change(chargPoints, status: RxStatus.success());
      }
    });
  }
}
