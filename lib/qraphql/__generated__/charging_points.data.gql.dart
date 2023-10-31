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
  String get id;
  String? get cpType;
  String? get cpNumber;
  double? get power;
  int? get statusId;
  GChargingPointsData_chargingPoints_data_location get location;
  GChargingPointsData_chargingPoints_data_connectors get connectors;
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

abstract class GChargingPointsData_chargingPoints_data_connectors
    implements
        Built<GChargingPointsData_chargingPoints_data_connectors,
            GChargingPointsData_chargingPoints_data_connectorsBuilder> {
  GChargingPointsData_chargingPoints_data_connectors._();

  factory GChargingPointsData_chargingPoints_data_connectors(
      [Function(GChargingPointsData_chargingPoints_data_connectorsBuilder b)
          updates]) = _$GChargingPointsData_chargingPoints_data_connectors;

  static void _initializeBuilder(
          GChargingPointsData_chargingPoints_data_connectorsBuilder b) =>
      b..G__typename = 'ConnectorPagination';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GChargingPointsData_chargingPoints_data_connectors_data?> get data;
  static Serializer<GChargingPointsData_chargingPoints_data_connectors>
      get serializer =>
          _$gChargingPointsDataChargingPointsDataConnectorsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GChargingPointsData_chargingPoints_data_connectors.serializer,
        this,
      ) as Map<String, dynamic>);

  static GChargingPointsData_chargingPoints_data_connectors? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GChargingPointsData_chargingPoints_data_connectors.serializer,
        json,
      );
}

abstract class GChargingPointsData_chargingPoints_data_connectors_data
    implements
        Built<GChargingPointsData_chargingPoints_data_connectors_data,
            GChargingPointsData_chargingPoints_data_connectors_dataBuilder> {
  GChargingPointsData_chargingPoints_data_connectors_data._();

  factory GChargingPointsData_chargingPoints_data_connectors_data(
      [Function(
              GChargingPointsData_chargingPoints_data_connectors_dataBuilder b)
          updates]) = _$GChargingPointsData_chargingPoints_data_connectors_data;

  static void _initializeBuilder(
          GChargingPointsData_chargingPoints_data_connectors_dataBuilder b) =>
      b..G__typename = 'ChargingPointConnector';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GChargingPointsData_chargingPoints_data_connectors_data_tariffs>
      get tariffs;
  static Serializer<GChargingPointsData_chargingPoints_data_connectors_data>
      get serializer =>
          _$gChargingPointsDataChargingPointsDataConnectorsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GChargingPointsData_chargingPoints_data_connectors_data.serializer,
        this,
      ) as Map<String, dynamic>);

  static GChargingPointsData_chargingPoints_data_connectors_data? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GChargingPointsData_chargingPoints_data_connectors_data.serializer,
        json,
      );
}

abstract class GChargingPointsData_chargingPoints_data_connectors_data_tariffs
    implements
        Built<GChargingPointsData_chargingPoints_data_connectors_data_tariffs,
            GChargingPointsData_chargingPoints_data_connectors_data_tariffsBuilder> {
  GChargingPointsData_chargingPoints_data_connectors_data_tariffs._();

  factory GChargingPointsData_chargingPoints_data_connectors_data_tariffs(
          [Function(
                  GChargingPointsData_chargingPoints_data_connectors_data_tariffsBuilder
                      b)
              updates]) =
      _$GChargingPointsData_chargingPoints_data_connectors_data_tariffs;

  static void _initializeBuilder(
          GChargingPointsData_chargingPoints_data_connectors_data_tariffsBuilder
              b) =>
      b..G__typename = 'Tariff';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  double get price;
  String get uom;
  static Serializer<
          GChargingPointsData_chargingPoints_data_connectors_data_tariffs>
      get serializer =>
          _$gChargingPointsDataChargingPointsDataConnectorsDataTariffsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GChargingPointsData_chargingPoints_data_connectors_data_tariffs
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GChargingPointsData_chargingPoints_data_connectors_data_tariffs?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GChargingPointsData_chargingPoints_data_connectors_data_tariffs
                .serializer,
            json,
          );
}

abstract class GChargingPointData
    implements Built<GChargingPointData, GChargingPointDataBuilder> {
  GChargingPointData._();

  factory GChargingPointData([Function(GChargingPointDataBuilder b) updates]) =
      _$GChargingPointData;

  static void _initializeBuilder(GChargingPointDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GChargingPointData_chargingPoint get chargingPoint;
  static Serializer<GChargingPointData> get serializer =>
      _$gChargingPointDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GChargingPointData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GChargingPointData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GChargingPointData.serializer,
        json,
      );
}

abstract class GChargingPointData_chargingPoint
    implements
        Built<GChargingPointData_chargingPoint,
            GChargingPointData_chargingPointBuilder> {
  GChargingPointData_chargingPoint._();

  factory GChargingPointData_chargingPoint(
          [Function(GChargingPointData_chargingPointBuilder b) updates]) =
      _$GChargingPointData_chargingPoint;

  static void _initializeBuilder(GChargingPointData_chargingPointBuilder b) =>
      b..G__typename = 'ChargingPoint';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get cpType;
  String? get model;
  double? get power;
  int? get statusId;
  String? get cpNumber;
  GChargingPointData_chargingPoint_location get location;
  GChargingPointData_chargingPoint_connectors get connectors;
  static Serializer<GChargingPointData_chargingPoint> get serializer =>
      _$gChargingPointDataChargingPointSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GChargingPointData_chargingPoint.serializer,
        this,
      ) as Map<String, dynamic>);

  static GChargingPointData_chargingPoint? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GChargingPointData_chargingPoint.serializer,
        json,
      );
}

abstract class GChargingPointData_chargingPoint_location
    implements
        Built<GChargingPointData_chargingPoint_location,
            GChargingPointData_chargingPoint_locationBuilder> {
  GChargingPointData_chargingPoint_location._();

  factory GChargingPointData_chargingPoint_location(
      [Function(GChargingPointData_chargingPoint_locationBuilder b)
          updates]) = _$GChargingPointData_chargingPoint_location;

  static void _initializeBuilder(
          GChargingPointData_chargingPoint_locationBuilder b) =>
      b..G__typename = 'Location';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get title;
  String get address;
  String get parkingAccess;
  double get latitude;
  double get longitude;
  String get workingHoursStart;
  String get workingHoursEnd;
  static Serializer<GChargingPointData_chargingPoint_location> get serializer =>
      _$gChargingPointDataChargingPointLocationSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GChargingPointData_chargingPoint_location.serializer,
        this,
      ) as Map<String, dynamic>);

  static GChargingPointData_chargingPoint_location? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GChargingPointData_chargingPoint_location.serializer,
        json,
      );
}

abstract class GChargingPointData_chargingPoint_connectors
    implements
        Built<GChargingPointData_chargingPoint_connectors,
            GChargingPointData_chargingPoint_connectorsBuilder> {
  GChargingPointData_chargingPoint_connectors._();

  factory GChargingPointData_chargingPoint_connectors(
      [Function(GChargingPointData_chargingPoint_connectorsBuilder b)
          updates]) = _$GChargingPointData_chargingPoint_connectors;

  static void _initializeBuilder(
          GChargingPointData_chargingPoint_connectorsBuilder b) =>
      b..G__typename = 'ConnectorPagination';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GChargingPointData_chargingPoint_connectors_data?> get data;
  static Serializer<GChargingPointData_chargingPoint_connectors>
      get serializer => _$gChargingPointDataChargingPointConnectorsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GChargingPointData_chargingPoint_connectors.serializer,
        this,
      ) as Map<String, dynamic>);

  static GChargingPointData_chargingPoint_connectors? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GChargingPointData_chargingPoint_connectors.serializer,
        json,
      );
}

abstract class GChargingPointData_chargingPoint_connectors_data
    implements
        Built<GChargingPointData_chargingPoint_connectors_data,
            GChargingPointData_chargingPoint_connectors_dataBuilder> {
  GChargingPointData_chargingPoint_connectors_data._();

  factory GChargingPointData_chargingPoint_connectors_data(
      [Function(GChargingPointData_chargingPoint_connectors_dataBuilder b)
          updates]) = _$GChargingPointData_chargingPoint_connectors_data;

  static void _initializeBuilder(
          GChargingPointData_chargingPoint_connectors_dataBuilder b) =>
      b..G__typename = 'ChargingPointConnector';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get amperage;
  String get id;
  String? get number;
  int? get statusId;
  String? get plugType;
  String? get type;
  BuiltList<GChargingPointData_chargingPoint_connectors_data_tariffs>
      get tariffs;
  static Serializer<GChargingPointData_chargingPoint_connectors_data>
      get serializer =>
          _$gChargingPointDataChargingPointConnectorsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GChargingPointData_chargingPoint_connectors_data.serializer,
        this,
      ) as Map<String, dynamic>);

  static GChargingPointData_chargingPoint_connectors_data? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GChargingPointData_chargingPoint_connectors_data.serializer,
        json,
      );
}

abstract class GChargingPointData_chargingPoint_connectors_data_tariffs
    implements
        Built<GChargingPointData_chargingPoint_connectors_data_tariffs,
            GChargingPointData_chargingPoint_connectors_data_tariffsBuilder> {
  GChargingPointData_chargingPoint_connectors_data_tariffs._();

  factory GChargingPointData_chargingPoint_connectors_data_tariffs(
      [Function(
              GChargingPointData_chargingPoint_connectors_data_tariffsBuilder b)
          updates]) = _$GChargingPointData_chargingPoint_connectors_data_tariffs;

  static void _initializeBuilder(
          GChargingPointData_chargingPoint_connectors_data_tariffsBuilder b) =>
      b..G__typename = 'Tariff';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  double get price;
  String get uom;
  static Serializer<GChargingPointData_chargingPoint_connectors_data_tariffs>
      get serializer =>
          _$gChargingPointDataChargingPointConnectorsDataTariffsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GChargingPointData_chargingPoint_connectors_data_tariffs.serializer,
        this,
      ) as Map<String, dynamic>);

  static GChargingPointData_chargingPoint_connectors_data_tariffs? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GChargingPointData_chargingPoint_connectors_data_tariffs.serializer,
        json,
      );
}
