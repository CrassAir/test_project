// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:test_project/qraphql/__generated__/serializers.gql.dart' as _i1;

part 'charging_points.var.gql.g.dart';

abstract class GChargingPointsVars
    implements Built<GChargingPointsVars, GChargingPointsVarsBuilder> {
  GChargingPointsVars._();

  factory GChargingPointsVars(
      [Function(GChargingPointsVarsBuilder b) updates]) = _$GChargingPointsVars;

  int get offset;
  int get limit;
  static Serializer<GChargingPointsVars> get serializer =>
      _$gChargingPointsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GChargingPointsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GChargingPointsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GChargingPointsVars.serializer,
        json,
      );
}

abstract class GChargingPointVars
    implements Built<GChargingPointVars, GChargingPointVarsBuilder> {
  GChargingPointVars._();

  factory GChargingPointVars([Function(GChargingPointVarsBuilder b) updates]) =
      _$GChargingPointVars;

  String get id;
  static Serializer<GChargingPointVars> get serializer =>
      _$gChargingPointVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GChargingPointVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GChargingPointVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GChargingPointVars.serializer,
        json,
      );
}
