import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:test_project/qraphql/__generated__/charging_points.data.gql.dart';
import 'package:test_project/widgets/time_linear.dart';

class CPDetailBody extends StatelessWidget {
  CPDetailBody({Key? key, required this.chargPoint}) : super(key: key);
  final GChargingPointData_chargingPoint chargPoint;
  final platform = GetPlatform.isWeb;


  @override
  Widget build(BuildContext context) {
    double responsibleWidth = MediaQuery.of(context).size.width > 800 ? 500 : double.infinity;
    return SizedBox(
      width: platform ? responsibleWidth : double.infinity,
      child: ResponsiveGridRow(
        children: [
          ResponsiveGridCol(xs: 6, child: Text('Время работы', style: Theme.of(context).textTheme.titleSmall)),
          ResponsiveGridCol(
            xs: 6,
            child: TimeLinear(
              startTime: chargPoint.location.workingHoursStart,
              endTime: chargPoint.location.workingHoursEnd,
              height: 5,
              width: MediaQuery.of(context).size.width * 0.5,
            ),
          ),
          ResponsiveGridCol(xs: 6, child: Text('Адрес', style: Theme.of(context).textTheme.titleSmall)),
          ResponsiveGridCol(
            xs: 6,
            child: Column(
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
          ),
          ResponsiveGridCol(xs: 6, child: Text('Парковка', style: Theme.of(context).textTheme.titleSmall)),
          ResponsiveGridCol(
              xs: 6,
              child:
              Text('${chargPoint.location.parkingAccess}', style: Theme.of(context).textTheme.titleSmall)),
        ],
      ),
    );
  }
}
