import 'package:flutter/material.dart';

class TimeLinear extends StatelessWidget {
  const TimeLinear(
      {Key? key, required this.startTime, required this.endTime, required this.width, required this.height})
      : super(key: key);
  final String startTime;
  final String endTime;
  final double width;
  final double height;

  Map<String, double> getOffsetWidth() {
    int st = parseTime(startTime);
    int et = parseTime(endTime);
    return {'offset': st / 1440, 'width': (et - st) / 1440};
  }

  int parseTime(String time) {
    return int.parse(time.split(':').reduce((value, element) {
      var hour = int.parse(value) * 60;
      var minutes = int.parse(element);
      return (hour + minutes).toString();
    }));
  }

  @override
  Widget build(BuildContext context) {
    var val = getOffsetWidth();
    return Column(
        children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(startTime),
          Text(endTime),
        ],
      ),
      Stack(
        children: [
          Container(
              width: width,
              height: height,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.grey)),
          Positioned(
              left: width * val['offset']!,
              width: width * val['width']!,
              child: Container(
                  height: height,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.green))),
        ],
      )
    ]);
  }
}
