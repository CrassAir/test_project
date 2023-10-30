// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:test_project/qraphql/__generated__/serializers.gql.dart' as _i1;

part 'charging_points.data.gql.g.dart';

abstract class GChargingPointsData
    implements Built<GChargingPointsData, GChargingPointsDataBuilder> {
  GChargingPointsData._();

  factory GChargingPointsData(
      [Function(GChargingPointsDataBuilder b) updates]) = _$GChargingPointsData;

  static void _initializeBuilder(GChargingPointsDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GChargingPointsData_chargingPoints get chargingPoints;
  static Serializer<GChargingPointsData> get serializer =>
      _$gChargingPointsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GChargingPointsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GChargingPointsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GChargingPointsData.serializer,
        json,
      );
}

abstract class GChargingPointsData_chargingPoints
    implements
        Built<GChargingPointsData_chargingPoints,
            GChargingPointsData_chargingPointsBuilder> {
  GChargingPointsData_chargingPoints._();

  factory GChargingPointsData_chargingPoints(
          [Function(GChargingPointsData_chargingPointsBuilder b) updates]) =
      _$GChargingPointsData_chargingPoints;

  static void _initializeBuilder(GChargingPointsData_chargingPointsBuilder b) =>
      b..G__typename = 'ChargingPointPagination';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get count;
  BuiltList<GChargingPointsData_chargingPoints_data?> get data;
  static Serializer<GChargingPointsData_chargingPoints> get serializer =>
      _$gChargingPointsDataChargingPointsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GChargingPointsData_chargingPoints.serializer,
        this,
      ) as Map<String, dynamic>);

  static GChargingPointsData_chargingPoints? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GChargingPointsData_chargingPoints.serializer,
        json,
      );
}

abstract class GChargingPointsData_chargingPoints_data
    implements
        Built<GChargingPointsData_chargingPoints_data,
            GChargingPointsData_chargingPoints_dataBuilder> {
  GChargingPointsData_chargingPoints_data._();

  factory GChargingPointsData_chargingPoints_data(
      [Function(GChargingPointsData_chargingPoints_dataBuilder b)
          updates]) = _$GChargingPointsData_chargingPoints_data;

  static void _initializeBuilder(
          GChargingPointsData_chargingPoints_dataBuilder b) =>
      b..G__typename = 'ChargingPoint';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get cpType;
  String? get cpNumber;
  double? get power;
  int? get statusId;
  GChargingPointsData_chargingPoints_data_location get location;
  static Serializer<GChargingPointsData_chargingPoints_data> get serializer =>
      _$gChargingPointsDataChargingPointsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GChargingPointsData_chargingPoints_data.serializer,
        this,
      ) as Map<String, dynamic>);

  static GChargingPointsData_chargingPoints_data? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GChargingPointsData_chargingPoints_data.serializer,
        json,
      );
}

abstract class GChargingPointsData_chargingPoints_data_location
    implements
        Built<GChargingPointsData_chargingPoints_data_location,
            GChargingPointsData_chargingPoints_data_locationBuilder> {
  GChargingPointsData_chargingPoints_data_location._();

  factory GChargingPointsData_chargingPoints_data_location(
      [Function(GChargingPointsData_chargingPoints_data_locationBuilder b)
          updates]) = _$GChargingPointsData_chargingPoints_data_location;

  static void _initializeBuilder(
          GChargingPointsData_chargingPoints_data_locationBuilder b) =>
      b..G__typename = 'Location';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get title;
  String get address;
  static Serializer<GChargingPointsData_chargingPoints_data_location>
      get serializer =>
          _$gChargingPointsDataChargingPointsDataLocationSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GChargingPointsData_chargingPoints_data_location.serializer,
        this,
      ) as Map<String, dynamic>);

  static GChargingPointsData_chargingPoints_data_location? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GChargingPointsData_chargingPoints_data_location.serializer,
        json,
      );
}
