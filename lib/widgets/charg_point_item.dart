import 'package:flutter/material.dart';
import 'package:test_project/qraphql/__generated__/charging_points.data.gql.dart';
import 'package:test_project/store/controllers/charg_point.dart';

class ChargingPointItem extends StatefulWidget {
  const ChargingPointItem({super.key, required this.data});

  final GChargingPointsData_chargingPoints_data data;

  @override
  State<ChargingPointItem> createState() => _ChargingPointItemState();
}

class _ChargingPointItemState extends State<ChargingPointItem> {
  @override
  Widget build(BuildContext context) {
    var status = statusChoises[widget.data.statusId];
    var address = widget.data.location.address.substring(7);
    return Flex(
      crossAxisAlignment: CrossAxisAlignment.center,
      direction: Axis.horizontal,
      children: [
        Padding(
          padding: const EdgeInsets.all(4),
          child: Card(
              color: Colors.green,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '${widget.data.cpType}'.toUpperCase(),
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
              )),
        ),
        Flexible(
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flex(
                  direction: Axis.horizontal,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      children: [
                        Text('№${widget.data.cpNumber}', style: Theme.of(context).textTheme.titleSmall),
                        Card(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2),
                              child: Text(
                                  '${widget.data.connectors.data[0]?.tariffs[0].price} ${widget.data.connectors.data[0]?.tariffs[0].uom}'),
                            )),
                      ],
                    ),
                    widget.data.statusId == 1
                        ? const SizedBox()
                        : Flexible(
                            child: Card(
                                color: status['color'],
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2),
                                  child: Text(
                                    status['title']!,
                                    style: const TextStyle(color: Colors.white),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                )),
                          ),
                  ],
                ),
                Flex(
                  direction: Axis.horizontal,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        widget.data.location.title,
                        style: Theme.of(context).textTheme.titleLarge,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: Icon(Icons.favorite, color: Theme.of(context).primaryColor),
                    ),
                  ],
                ),
                Text(address, style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.black)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
