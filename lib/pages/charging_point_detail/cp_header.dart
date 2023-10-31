import 'package:flutter/material.dart';
import 'package:test_project/qraphql/__generated__/charging_points.data.gql.dart';
import 'package:test_project/store/controllers/charg_point.dart';

class CPDetailHeader extends StatelessWidget {
  const CPDetailHeader({Key? key, required this.chargPoint}) : super(key: key);
  final GChargingPointData_chargingPoint chargPoint;

  @override
  Widget build(BuildContext context) {
    var status = statusChoices[chargPoint.statusId];
    return Flex(
      direction: Axis.vertical,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Card(
            color: status['bgcolor'],
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.circle, size: 15, color: status['color']),
                  const SizedBox(width: 10),
                  Text(
                    status['title']!,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            )),
        const SizedBox(height: 10),
        Row(
          children: [
            Text('ID ЭЗС', style: TextStyle(color: Theme.of(context).disabledColor)),
            const SizedBox(width: 10),
            Text('${chargPoint.cpNumber}')
          ],
        ),
        Row(
          children: [
            Text('${chargPoint.model}',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.bold)),
            const SizedBox(width: 10),
            Padding(
              padding: const EdgeInsets.all(4),
              child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                  color: Colors.green,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 2),
                    child: Text(
                      '${chargPoint.cpType}'.toUpperCase(),
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  )),
            ),
            const SizedBox(width: 5),
            Text('${chargPoint.power?.round()} кВт', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
      ],
    );
  }
}