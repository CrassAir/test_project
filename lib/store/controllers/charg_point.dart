import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test_project/qraphql/__generated__/charging_points.data.gql.dart';
import 'package:test_project/qraphql/__generated__/charging_points.var.gql.dart';
import 'package:test_project/store/services/charg_point.dart';
import 'package:test_project/utils.dart';

Map<int, dynamic> statusChoices = {
  1: {'title': 'В работе', 'color': Colors.green, 'bgcolor': Colors.green.shade50},
  2: {'title': 'Ремонт', 'color': Colors.amber, 'bgcolor': Colors.amber.shade100},
  3: {'title': 'Подготовка к запуску', 'color': Colors.yellow, 'bgcolor': Colors.yellow.shade100},
  4: {'title': 'Не в работе', 'color': Colors.red, 'bgcolor': Colors.red.shade100},
  5: {'title': 'Автономный режим', 'color': Colors.red, 'bgcolor': Colors.red.shade100},
};

Map<int, dynamic> connectorTypeChoices = {
  1: {'title': 'CHAdeMO'},
  7: {
    'title': 'CSS 2',
  },
  8: {
    'title': 'TYPE 2',
  },
  9: {
    'title': 'TYPE 1',
  },
  10: {
    'title': 'CSS 1',
  },
  12: {
    'title': 'GB/T DC',
  },
  14: {
    'title': 'Euro 220V',
  },
};

class ChargingPointCtrl extends GetxController with StateMixin {
  final ChargingPointService chargingPointService = Get.find();

  RxList<GChargingPointsData_chargingPoints_data?> chargPoints = <GChargingPointsData_chargingPoints_data?>[].obs;
  Rx<GChargingPointData_chargingPoint>? chargPoint;
  Stream<OperationResponse<GChargingPointsData, GChargingPointsVars>>? stream;
  RxList<String> favorite = <String>[].obs;

  @override
  void onInit() {
    super.onInit();
    getFavorites();
  }

  void getFavorites() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final List<String>? items = prefs.getStringList('favorites');
    if (items.hasData) {
      favorite.addAll(items!);
    }
  }

  void setFavorites(String fav) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    if (favorite.contains(fav)) {
      favorite.remove(fav);
    } else {
      favorite.add(fav);
    }
    await prefs.setStringList('favorites', favorite);
    change(favorite, status: RxStatus.success());
  }

  void clearChargPoint() {
    chargPoint = null;
  }

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
