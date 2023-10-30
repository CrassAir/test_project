// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart' show StandardJsonPlugin;
import 'package:ferry_exec/ferry_exec.dart';
import 'package:gql_code_builder/src/serializers/operation_serializer.dart'
    show OperationSerializer;
import 'package:test_project/qraphql/__generated__/charging_points.data.gql.dart'
    show
        GChargingPointsData,
        GChargingPointsData_chargingPoints,
        GChargingPointsData_chargingPoints_data,
        GChargingPointsData_chargingPoints_data_location;
import 'package:test_project/qraphql/__generated__/charging_points.req.gql.dart'
    show GChargingPointsReq;
import 'package:test_project/qraphql/__generated__/charging_points.var.gql.dart'
    show GChargingPointsVars;
import 'package:test_project/qraphql/__generated__/schema.schema.gql.dart'
    show GCacheControlScope;

part 'serializers.gql.g.dart';

final SerializersBuilder _serializersBuilder = _$serializers.toBuilder()
  ..add(OperationSerializer())
  ..addPlugin(StandardJsonPlugin());
@SerializersFor([
  GCacheControlScope,
  GChargingPointsData,
  GChargingPointsData_chargingPoints,
  GChargingPointsData_chargingPoints_data,
  GChargingPointsData_chargingPoints_data_location,
  GChargingPointsReq,
  GChargingPointsVars,
])
final Serializers serializers = _serializersBuilder.build();
