import 'dart:async';

import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_project/config.dart';
import 'package:test_project/qraphql/__generated__/charging_points.data.gql.dart';
import 'package:test_project/qraphql/__generated__/charging_points.req.gql.dart';
import 'package:test_project/qraphql/__generated__/charging_points.var.gql.dart';
import 'package:test_project/utils.dart';

class ChargingPointService extends GetxService {
  final client = AppConfig.initClient();
  final chargingPointsReq = GChargingPointsReq((b) => b
    ..requestId = 'MyReviewsReq'
    ..vars.offset = 0
    ..vars.limit = 10);

  @override
  void onInit() {
    super.onInit();
  }

  Stream<OperationResponse<GChargingPointsData, GChargingPointsVars>>? getChargingPoints() {
    return client.request(chargingPointsReq);
  }

  void getNextChargingPoints(int offset) {
    final nextReviewsReq = chargingPointsReq.rebuild(
      (b) => b
        ..vars.offset = offset
        ..updateResult = (previous, result) {
          if (!previous.hasData) return result;
          return previous!.rebuild((b) => b..chargingPoints.data.addAll([...result!.chargingPoints.data]));
        },
    );
    client.requestController.add(nextReviewsReq);
  }
}
