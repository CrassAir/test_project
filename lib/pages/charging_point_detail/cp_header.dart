import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:test_project/qraphql/__generated__/charging_points.data.gql.dart';
import 'package:test_project/store/choices.dart';

class CPDetailHeader extends StatelessWidget {
  const CPDetailHeader({Key? key, required this.chargPoint}) : super(key: key);
  final GChargingPointData_chargingPoint chargPoint;

  @override
  Widget build(BuildContext context) {
    var status = statusChoices[chargPoint.statusId];
    bool lg = MediaQuery.of(context).size.width > 600;
    return SizedBox(
      width: double.infinity,
      height: lg ? 50 : 100,
      child: Stack(
        children: [
          Positioned(
              left: lg ? null : 0,
              right: lg ? 0 : null,
              child: ChipStatus(title: status['title'], color: status['color'], bgcolor: status['bgcolor'])),
          Positioned(
            top: lg ? 11 : 40,
            left: 0,
            child: Row(
              children: [
                Text('ID ЭЗС', style: TextStyle(color: Theme.of(context).disabledColor)),
                const SizedBox(width: 10),
                Text('${chargPoint.cpNumber}')
              ],
            ),
          ),
          Positioned(
            top: lg ? 0 : 50,
            left: lg ? 120 : 0,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
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
                Text('${chargPoint.power?.round()} кВт', style: Theme.of(context).textTheme.titleMedium),
              ],
            ),
          ),
          // ChipStatus(title: status['title'], color: status['color'], bgcolor: status['bgcolor']),
        ],
      ),
    );
  }
}

class ChipStatus extends StatelessWidget {
  const ChipStatus({Key? key, required this.bgcolor, required this.color, required this.title}) : super(key: key);
  final Color bgcolor;
  final Color color;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
        color: bgcolor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.circle, size: 15, color: color),
              const SizedBox(width: 10),
              Text(
                title,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ));
  }
}
