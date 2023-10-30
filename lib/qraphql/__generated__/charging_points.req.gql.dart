// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:test_project/qraphql/__generated__/charging_points.ast.gql.dart'
    as _i5;
import 'package:test_project/qraphql/__generated__/charging_points.data.gql.dart'
    as _i2;
import 'package:test_project/qraphql/__generated__/charging_points.var.gql.dart'
    as _i3;
import 'package:test_project/qraphql/__generated__/serializers.gql.dart' as _i6;

part 'charging_points.req.gql.g.dart';

abstract class GChargingPointsReq
    implements
        Built<GChargingPointsReq, GChargingPointsReqBuilder>,
        _i1.OperationRequest<_i2.GChargingPointsData, _i3.GChargingPointsVars> {
  GChargingPointsReq._();

  factory GChargingPointsReq([Function(GChargingPointsReqBuilder b) updates]) =
      _$GChargingPointsReq;

  static void _initializeBuilder(GChargingPointsReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'ChargingPoints',
    )
    ..executeOnListen = true;

  @override
  _i3.GChargingPointsVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
      );

  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GChargingPointsData? Function(
    _i2.GChargingPointsData?,
    _i2.GChargingPointsData?,
  )? get updateResult;
  @override
  _i2.GChargingPointsData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GChargingPointsData? parseData(Map<String, dynamic> json) =>
      _i2.GChargingPointsData.fromJson(json);

  static Serializer<GChargingPointsReq> get serializer =>
      _$gChargingPointsReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GChargingPointsReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GChargingPointsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GChargingPointsReq.serializer,
        json,
      );
}
