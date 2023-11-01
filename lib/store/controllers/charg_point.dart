import 'package:get/get.dart';
import 'package:test_project/qraphql/__generated__/charging_points.data.gql.dart';
import 'package:test_project/store/services/charg_point.dart';
import 'package:test_project/utils.dart';


class ChargingPointCtrl extends GetxController with StateMixin {
  final ChargingPointService chargingPointService = Get.find();

  Rx<GChargingPointData_chargingPoint>? chargPoint;

  void clearChargPoint() {
    chargPoint = null;
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
