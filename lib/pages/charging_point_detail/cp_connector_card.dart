import 'package:flutter/material.dart';
import 'package:test_project/qraphql/__generated__/charging_points.data.gql.dart';
import 'package:test_project/store/controllers/charg_point.dart';

class CPConnectorCard extends StatelessWidget {
  const CPConnectorCard({Key? key, required this.connector}) : super(key: key);
  final GChargingPointData_chargingPoint_connectors_data connector;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15), side: BorderSide(width: 1, color: Theme.of(context).disabledColor)),
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Card(
              color: Colors.green.shade50,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2),
                child: Text(
                  '${connector.status}',
                  style: const TextStyle(color: Colors.green),
                  overflow: TextOverflow.ellipsis,
                ),
              )),
          const Icon(Icons.account_circle, size: 200),
          Text('ID ${connector.id}', style: Theme.of(context).textTheme.titleSmall),
          Text('${connectorTypeChoices[connector.typeId]['title']}',
              style: Theme.of(context).textTheme.headlineLarge, overflow: TextOverflow.ellipsis),
          Text('${connector.tariffs[0].price.round()} ${connector.tariffs[0].uom}',
              style: Theme.of(context).textTheme.titleLarge)
        ]),
      ),
    );
  }
}
