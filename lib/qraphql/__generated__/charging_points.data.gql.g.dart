// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'charging_points.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GChargingPointsData> _$gChargingPointsDataSerializer =
    new _$GChargingPointsDataSerializer();
Serializer<GChargingPointsData_chargingPoints>
    _$gChargingPointsDataChargingPointsSerializer =
    new _$GChargingPointsData_chargingPointsSerializer();
Serializer<GChargingPointsData_chargingPoints_data>
    _$gChargingPointsDataChargingPointsDataSerializer =
    new _$GChargingPointsData_chargingPoints_dataSerializer();
Serializer<GChargingPointsData_chargingPoints_data_location>
    _$gChargingPointsDataChargingPointsDataLocationSerializer =
    new _$GChargingPointsData_chargingPoints_data_locationSerializer();
Serializer<GChargingPointsData_chargingPoints_data_connectors>
    _$gChargingPointsDataChargingPointsDataConnectorsSerializer =
    new _$GChargingPointsData_chargingPoints_data_connectorsSerializer();
Serializer<GChargingPointsData_chargingPoints_data_connectors_data>
    _$gChargingPointsDataChargingPointsDataConnectorsDataSerializer =
    new _$GChargingPointsData_chargingPoints_data_connectors_dataSerializer();
Serializer<GChargingPointsData_chargingPoints_data_connectors_data_tariffs>
    _$gChargingPointsDataChargingPointsDataConnectorsDataTariffsSerializer =
    new _$GChargingPointsData_chargingPoints_data_connectors_data_tariffsSerializer();
Serializer<GChargingPointData> _$gChargingPointDataSerializer =
    new _$GChargingPointDataSerializer();
Serializer<GChargingPointData_chargingPoint>
    _$gChargingPointDataChargingPointSerializer =
    new _$GChargingPointData_chargingPointSerializer();
Serializer<GChargingPointData_chargingPoint_location>
    _$gChargingPointDataChargingPointLocationSerializer =
    new _$GChargingPointData_chargingPoint_locationSerializer();
Serializer<GChargingPointData_chargingPoint_connectors>
    _$gChargingPointDataChargingPointConnectorsSerializer =
    new _$GChargingPointData_chargingPoint_connectorsSerializer();
Serializer<GChargingPointData_chargingPoint_connectors_data>
    _$gChargingPointDataChargingPointConnectorsDataSerializer =
    new _$GChargingPointData_chargingPoint_connectors_dataSerializer();
Serializer<GChargingPointData_chargingPoint_connectors_data_tariffs>
    _$gChargingPointDataChargingPointConnectorsDataTariffsSerializer =
    new _$GChargingPointData_chargingPoint_connectors_data_tariffsSerializer();

class _$GChargingPointsDataSerializer
    implements StructuredSerializer<GChargingPointsData> {
  @override
  final Iterable<Type> types = const [
    GChargingPointsData,
    _$GChargingPointsData
  ];
  @override
  final String wireName = 'GChargingPointsData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GChargingPointsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'chargingPoints',
      serializers.serialize(object.chargingPoints,
          specifiedType: const FullType(GChargingPointsData_chargingPoints)),
    ];

    return result;
  }

  @override
  GChargingPointsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GChargingPointsDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'chargingPoints':
          result.chargingPoints.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GChargingPointsData_chargingPoints))!
              as GChargingPointsData_chargingPoints);
          break;
      }
    }

    return result.build();
  }
}

class _$GChargingPointsData_chargingPointsSerializer
    implements StructuredSerializer<GChargingPointsData_chargingPoints> {
  @override
  final Iterable<Type> types = const [
    GChargingPointsData_chargingPoints,
    _$GChargingPointsData_chargingPoints
  ];
  @override
  final String wireName = 'GChargingPointsData_chargingPoints';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GChargingPointsData_chargingPoints object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'count',
      serializers.serialize(object.count, specifiedType: const FullType(int)),
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(BuiltList, const [
            const FullType.nullable(GChargingPointsData_chargingPoints_data)
          ])),
    ];

    return result;
  }

  @override
  GChargingPointsData_chargingPoints deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GChargingPointsData_chargingPointsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'count':
          result.count = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(GChargingPointsData_chargingPoints_data)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GChargingPointsData_chargingPoints_dataSerializer
    implements StructuredSerializer<GChargingPointsData_chargingPoints_data> {
  @override
  final Iterable<Type> types = const [
    GChargingPointsData_chargingPoints_data,
    _$GChargingPointsData_chargingPoints_data
  ];
  @override
  final String wireName = 'GChargingPointsData_chargingPoints_data';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GChargingPointsData_chargingPoints_data object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'location',
      serializers.serialize(object.location,
          specifiedType:
              const FullType(GChargingPointsData_chargingPoints_data_location)),
      'connectors',
      serializers.serialize(object.connectors,
          specifiedType: const FullType(
              GChargingPointsData_chargingPoints_data_connectors)),
    ];
    Object? value;
    value = object.cpType;
    if (value != null) {
      result
        ..add('cpType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cpNumber;
    if (value != null) {
      result
        ..add('cpNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.power;
    if (value != null) {
      result
        ..add('power')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.statusId;
    if (value != null) {
      result
        ..add('statusId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GChargingPointsData_chargingPoints_data deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GChargingPointsData_chargingPoints_dataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'cpType':
          result.cpType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'cpNumber':
          result.cpNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'power':
          result.power = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'statusId':
          result.statusId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'location':
          result.location.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GChargingPointsData_chargingPoints_data_location))!
              as GChargingPointsData_chargingPoints_data_location);
          break;
        case 'connectors':
          result.connectors.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GChargingPointsData_chargingPoints_data_connectors))!
              as GChargingPointsData_chargingPoints_data_connectors);
          break;
      }
    }

    return result.build();
  }
}

class _$GChargingPointsData_chargingPoints_data_locationSerializer
    implements
        StructuredSerializer<GChargingPointsData_chargingPoints_data_location> {
  @override
  final Iterable<Type> types = const [
    GChargingPointsData_chargingPoints_data_location,
    _$GChargingPointsData_chargingPoints_data_location
  ];
  @override
  final String wireName = 'GChargingPointsData_chargingPoints_data_location';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GChargingPointsData_chargingPoints_data_location object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'address',
      serializers.serialize(object.address,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GChargingPointsData_chargingPoints_data_location deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GChargingPointsData_chargingPoints_data_locationBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GChargingPointsData_chargingPoints_data_connectorsSerializer
    implements
        StructuredSerializer<
            GChargingPointsData_chargingPoints_data_connectors> {
  @override
  final Iterable<Type> types = const [
    GChargingPointsData_chargingPoints_data_connectors,
    _$GChargingPointsData_chargingPoints_data_connectors
  ];
  @override
  final String wireName = 'GChargingPointsData_chargingPoints_data_connectors';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GChargingPointsData_chargingPoints_data_connectors object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(BuiltList, const [
            const FullType.nullable(
                GChargingPointsData_chargingPoints_data_connectors_data)
          ])),
    ];

    return result;
  }

  @override
  GChargingPointsData_chargingPoints_data_connectors deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GChargingPointsData_chargingPoints_data_connectorsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GChargingPointsData_chargingPoints_data_connectors_data)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GChargingPointsData_chargingPoints_data_connectors_dataSerializer
    implements
        StructuredSerializer<
            GChargingPointsData_chargingPoints_data_connectors_data> {
  @override
  final Iterable<Type> types = const [
    GChargingPointsData_chargingPoints_data_connectors_data,
    _$GChargingPointsData_chargingPoints_data_connectors_data
  ];
  @override
  final String wireName =
      'GChargingPointsData_chargingPoints_data_connectors_data';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GChargingPointsData_chargingPoints_data_connectors_data object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'tariffs',
      serializers.serialize(object.tariffs,
          specifiedType: const FullType(BuiltList, const [
            const FullType(
                GChargingPointsData_chargingPoints_data_connectors_data_tariffs)
          ])),
    ];

    return result;
  }

  @override
  GChargingPointsData_chargingPoints_data_connectors_data deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GChargingPointsData_chargingPoints_data_connectors_dataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'tariffs':
          result.tariffs.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    GChargingPointsData_chargingPoints_data_connectors_data_tariffs)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GChargingPointsData_chargingPoints_data_connectors_data_tariffsSerializer
    implements
        StructuredSerializer<
            GChargingPointsData_chargingPoints_data_connectors_data_tariffs> {
  @override
  final Iterable<Type> types = const [
    GChargingPointsData_chargingPoints_data_connectors_data_tariffs,
    _$GChargingPointsData_chargingPoints_data_connectors_data_tariffs
  ];
  @override
  final String wireName =
      'GChargingPointsData_chargingPoints_data_connectors_data_tariffs';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GChargingPointsData_chargingPoints_data_connectors_data_tariffs object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'price',
      serializers.serialize(object.price,
          specifiedType: const FullType(double)),
      'uom',
      serializers.serialize(object.uom, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GChargingPointsData_chargingPoints_data_connectors_data_tariffs deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GChargingPointsData_chargingPoints_data_connectors_data_tariffsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'uom':
          result.uom = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GChargingPointDataSerializer
    implements StructuredSerializer<GChargingPointData> {
  @override
  final Iterable<Type> types = const [GChargingPointData, _$GChargingPointData];
  @override
  final String wireName = 'GChargingPointData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GChargingPointData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'chargingPoint',
      serializers.serialize(object.chargingPoint,
          specifiedType: const FullType(GChargingPointData_chargingPoint)),
    ];

    return result;
  }

  @override
  GChargingPointData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GChargingPointDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'chargingPoint':
          result.chargingPoint.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GChargingPointData_chargingPoint))!
              as GChargingPointData_chargingPoint);
          break;
      }
    }

    return result.build();
  }
}

class _$GChargingPointData_chargingPointSerializer
    implements StructuredSerializer<GChargingPointData_chargingPoint> {
  @override
  final Iterable<Type> types = const [
    GChargingPointData_chargingPoint,
    _$GChargingPointData_chargingPoint
  ];
  @override
  final String wireName = 'GChargingPointData_chargingPoint';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GChargingPointData_chargingPoint object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'location',
      serializers.serialize(object.location,
          specifiedType:
              const FullType(GChargingPointData_chargingPoint_location)),
      'connectors',
      serializers.serialize(object.connectors,
          specifiedType:
              const FullType(GChargingPointData_chargingPoint_connectors)),
    ];
    Object? value;
    value = object.cpType;
    if (value != null) {
      result
        ..add('cpType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.model;
    if (value != null) {
      result
        ..add('model')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.power;
    if (value != null) {
      result
        ..add('power')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.statusId;
    if (value != null) {
      result
        ..add('statusId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.cpNumber;
    if (value != null) {
      result
        ..add('cpNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GChargingPointData_chargingPoint deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GChargingPointData_chargingPointBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'cpType':
          result.cpType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'model':
          result.model = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'power':
          result.power = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'statusId':
          result.statusId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'cpNumber':
          result.cpNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'location':
          result.location.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GChargingPointData_chargingPoint_location))!
              as GChargingPointData_chargingPoint_location);
          break;
        case 'connectors':
          result.connectors.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GChargingPointData_chargingPoint_connectors))!
              as GChargingPointData_chargingPoint_connectors);
          break;
      }
    }

    return result.build();
  }
}

class _$GChargingPointData_chargingPoint_locationSerializer
    implements StructuredSerializer<GChargingPointData_chargingPoint_location> {
  @override
  final Iterable<Type> types = const [
    GChargingPointData_chargingPoint_location,
    _$GChargingPointData_chargingPoint_location
  ];
  @override
  final String wireName = 'GChargingPointData_chargingPoint_location';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GChargingPointData_chargingPoint_location object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'address',
      serializers.serialize(object.address,
          specifiedType: const FullType(String)),
      'parkingAccess',
      serializers.serialize(object.parkingAccess,
          specifiedType: const FullType(String)),
      'latitude',
      serializers.serialize(object.latitude,
          specifiedType: const FullType(double)),
      'longitude',
      serializers.serialize(object.longitude,
          specifiedType: const FullType(double)),
      'workingHoursStart',
      serializers.serialize(object.workingHoursStart,
          specifiedType: const FullType(String)),
      'workingHoursEnd',
      serializers.serialize(object.workingHoursEnd,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GChargingPointData_chargingPoint_location deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GChargingPointData_chargingPoint_locationBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'parkingAccess':
          result.parkingAccess = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'latitude':
          result.latitude = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'longitude':
          result.longitude = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'workingHoursStart':
          result.workingHoursStart = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'workingHoursEnd':
          result.workingHoursEnd = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GChargingPointData_chargingPoint_connectorsSerializer
    implements
        StructuredSerializer<GChargingPointData_chargingPoint_connectors> {
  @override
  final Iterable<Type> types = const [
    GChargingPointData_chargingPoint_connectors,
    _$GChargingPointData_chargingPoint_connectors
  ];
  @override
  final String wireName = 'GChargingPointData_chargingPoint_connectors';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GChargingPointData_chargingPoint_connectors object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(BuiltList, const [
            const FullType.nullable(
                GChargingPointData_chargingPoint_connectors_data)
          ])),
    ];

    return result;
  }

  @override
  GChargingPointData_chargingPoint_connectors deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GChargingPointData_chargingPoint_connectorsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GChargingPointData_chargingPoint_connectors_data)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GChargingPointData_chargingPoint_connectors_dataSerializer
    implements
        StructuredSerializer<GChargingPointData_chargingPoint_connectors_data> {
  @override
  final Iterable<Type> types = const [
    GChargingPointData_chargingPoint_connectors_data,
    _$GChargingPointData_chargingPoint_connectors_data
  ];
  @override
  final String wireName = 'GChargingPointData_chargingPoint_connectors_data';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GChargingPointData_chargingPoint_connectors_data object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'tariffs',
      serializers.serialize(object.tariffs,
          specifiedType: const FullType(BuiltList, const [
            const FullType(
                GChargingPointData_chargingPoint_connectors_data_tariffs)
          ])),
    ];
    Object? value;
    value = object.amperage;
    if (value != null) {
      result
        ..add('amperage')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.number;
    if (value != null) {
      result
        ..add('number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.statusId;
    if (value != null) {
      result
        ..add('statusId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.plugType;
    if (value != null) {
      result
        ..add('plugType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GChargingPointData_chargingPoint_connectors_data deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GChargingPointData_chargingPoint_connectors_dataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'amperage':
          result.amperage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'number':
          result.number = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'statusId':
          result.statusId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'plugType':
          result.plugType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'tariffs':
          result.tariffs.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    GChargingPointData_chargingPoint_connectors_data_tariffs)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GChargingPointData_chargingPoint_connectors_data_tariffsSerializer
    implements
        StructuredSerializer<
            GChargingPointData_chargingPoint_connectors_data_tariffs> {
  @override
  final Iterable<Type> types = const [
    GChargingPointData_chargingPoint_connectors_data_tariffs,
    _$GChargingPointData_chargingPoint_connectors_data_tariffs
  ];
  @override
  final String wireName =
      'GChargingPointData_chargingPoint_connectors_data_tariffs';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GChargingPointData_chargingPoint_connectors_data_tariffs object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'price',
      serializers.serialize(object.price,
          specifiedType: const FullType(double)),
      'uom',
      serializers.serialize(object.uom, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GChargingPointData_chargingPoint_connectors_data_tariffs deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GChargingPointData_chargingPoint_connectors_data_tariffsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'uom':
          result.uom = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GChargingPointsData extends GChargingPointsData {
  @override
  final String G__typename;
  @override
  final GChargingPointsData_chargingPoints chargingPoints;

  factory _$GChargingPointsData(
          [void Function(GChargingPointsDataBuilder)? updates]) =>
      (new GChargingPointsDataBuilder()..update(updates))._build();

  _$GChargingPointsData._(
      {required this.G__typename, required this.chargingPoints})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GChargingPointsData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        chargingPoints, r'GChargingPointsData', 'chargingPoints');
  }

  @override
  GChargingPointsData rebuild(
          void Function(GChargingPointsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GChargingPointsDataBuilder toBuilder() =>
      new GChargingPointsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GChargingPointsData &&
        G__typename == other.G__typename &&
        chargingPoints == other.chargingPoints;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, chargingPoints.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GChargingPointsData')
          ..add('G__typename', G__typename)
          ..add('chargingPoints', chargingPoints))
        .toString();
  }
}

class GChargingPointsDataBuilder
    implements Builder<GChargingPointsData, GChargingPointsDataBuilder> {
  _$GChargingPointsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GChargingPointsData_chargingPointsBuilder? _chargingPoints;
  GChargingPointsData_chargingPointsBuilder get chargingPoints =>
      _$this._chargingPoints ??=
          new GChargingPointsData_chargingPointsBuilder();
  set chargingPoints(
          GChargingPointsData_chargingPointsBuilder? chargingPoints) =>
      _$this._chargingPoints = chargingPoints;

  GChargingPointsDataBuilder() {
    GChargingPointsData._initializeBuilder(this);
  }

  GChargingPointsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _chargingPoints = $v.chargingPoints.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GChargingPointsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GChargingPointsData;
  }

  @override
  void update(void Function(GChargingPointsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GChargingPointsData build() => _build();

  _$GChargingPointsData _build() {
    _$GChargingPointsData _$result;
    try {
      _$result = _$v ??
          new _$GChargingPointsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GChargingPointsData', 'G__typename'),
              chargingPoints: chargingPoints.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'chargingPoints';
        chargingPoints.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GChargingPointsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GChargingPointsData_chargingPoints
    extends GChargingPointsData_chargingPoints {
  @override
  final String G__typename;
  @override
  final int count;
  @override
  final BuiltList<GChargingPointsData_chargingPoints_data?> data;

  factory _$GChargingPointsData_chargingPoints(
          [void Function(GChargingPointsData_chargingPointsBuilder)?
              updates]) =>
      (new GChargingPointsData_chargingPointsBuilder()..update(updates))
          ._build();

  _$GChargingPointsData_chargingPoints._(
      {required this.G__typename, required this.count, required this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GChargingPointsData_chargingPoints', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        count, r'GChargingPointsData_chargingPoints', 'count');
    BuiltValueNullFieldError.checkNotNull(
        data, r'GChargingPointsData_chargingPoints', 'data');
  }

  @override
  GChargingPointsData_chargingPoints rebuild(
          void Function(GChargingPointsData_chargingPointsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GChargingPointsData_chargingPointsBuilder toBuilder() =>
      new GChargingPointsData_chargingPointsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GChargingPointsData_chargingPoints &&
        G__typename == other.G__typename &&
        count == other.count &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GChargingPointsData_chargingPoints')
          ..add('G__typename', G__typename)
          ..add('count', count)
          ..add('data', data))
        .toString();
  }
}

class GChargingPointsData_chargingPointsBuilder
    implements
        Builder<GChargingPointsData_chargingPoints,
            GChargingPointsData_chargingPointsBuilder> {
  _$GChargingPointsData_chargingPoints? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  ListBuilder<GChargingPointsData_chargingPoints_data?>? _data;
  ListBuilder<GChargingPointsData_chargingPoints_data?> get data =>
      _$this._data ??=
          new ListBuilder<GChargingPointsData_chargingPoints_data?>();
  set data(ListBuilder<GChargingPointsData_chargingPoints_data?>? data) =>
      _$this._data = data;

  GChargingPointsData_chargingPointsBuilder() {
    GChargingPointsData_chargingPoints._initializeBuilder(this);
  }

  GChargingPointsData_chargingPointsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _count = $v.count;
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GChargingPointsData_chargingPoints other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GChargingPointsData_chargingPoints;
  }

  @override
  void update(
      void Function(GChargingPointsData_chargingPointsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GChargingPointsData_chargingPoints build() => _build();

  _$GChargingPointsData_chargingPoints _build() {
    _$GChargingPointsData_chargingPoints _$result;
    try {
      _$result = _$v ??
          new _$GChargingPointsData_chargingPoints._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GChargingPointsData_chargingPoints', 'G__typename'),
              count: BuiltValueNullFieldError.checkNotNull(
                  count, r'GChargingPointsData_chargingPoints', 'count'),
              data: data.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GChargingPointsData_chargingPoints', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GChargingPointsData_chargingPoints_data
    extends GChargingPointsData_chargingPoints_data {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String? cpType;
  @override
  final String? cpNumber;
  @override
  final double? power;
  @override
  final int? statusId;
  @override
  final GChargingPointsData_chargingPoints_data_location location;
  @override
  final GChargingPointsData_chargingPoints_data_connectors connectors;

  factory _$GChargingPointsData_chargingPoints_data(
          [void Function(GChargingPointsData_chargingPoints_dataBuilder)?
              updates]) =>
      (new GChargingPointsData_chargingPoints_dataBuilder()..update(updates))
          ._build();

  _$GChargingPointsData_chargingPoints_data._(
      {required this.G__typename,
      required this.id,
      this.cpType,
      this.cpNumber,
      this.power,
      this.statusId,
      required this.location,
      required this.connectors})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GChargingPointsData_chargingPoints_data', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GChargingPointsData_chargingPoints_data', 'id');
    BuiltValueNullFieldError.checkNotNull(
        location, r'GChargingPointsData_chargingPoints_data', 'location');
    BuiltValueNullFieldError.checkNotNull(
        connectors, r'GChargingPointsData_chargingPoints_data', 'connectors');
  }

  @override
  GChargingPointsData_chargingPoints_data rebuild(
          void Function(GChargingPointsData_chargingPoints_dataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GChargingPointsData_chargingPoints_dataBuilder toBuilder() =>
      new GChargingPointsData_chargingPoints_dataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GChargingPointsData_chargingPoints_data &&
        G__typename == other.G__typename &&
        id == other.id &&
        cpType == other.cpType &&
        cpNumber == other.cpNumber &&
        power == other.power &&
        statusId == other.statusId &&
        location == other.location &&
        connectors == other.connectors;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, cpType.hashCode);
    _$hash = $jc(_$hash, cpNumber.hashCode);
    _$hash = $jc(_$hash, power.hashCode);
    _$hash = $jc(_$hash, statusId.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jc(_$hash, connectors.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GChargingPointsData_chargingPoints_data')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('cpType', cpType)
          ..add('cpNumber', cpNumber)
          ..add('power', power)
          ..add('statusId', statusId)
          ..add('location', location)
          ..add('connectors', connectors))
        .toString();
  }
}

class GChargingPointsData_chargingPoints_dataBuilder
    implements
        Builder<GChargingPointsData_chargingPoints_data,
            GChargingPointsData_chargingPoints_dataBuilder> {
  _$GChargingPointsData_chargingPoints_data? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _cpType;
  String? get cpType => _$this._cpType;
  set cpType(String? cpType) => _$this._cpType = cpType;

  String? _cpNumber;
  String? get cpNumber => _$this._cpNumber;
  set cpNumber(String? cpNumber) => _$this._cpNumber = cpNumber;

  double? _power;
  double? get power => _$this._power;
  set power(double? power) => _$this._power = power;

  int? _statusId;
  int? get statusId => _$this._statusId;
  set statusId(int? statusId) => _$this._statusId = statusId;

  GChargingPointsData_chargingPoints_data_locationBuilder? _location;
  GChargingPointsData_chargingPoints_data_locationBuilder get location =>
      _$this._location ??=
          new GChargingPointsData_chargingPoints_data_locationBuilder();
  set location(
          GChargingPointsData_chargingPoints_data_locationBuilder? location) =>
      _$this._location = location;

  GChargingPointsData_chargingPoints_data_connectorsBuilder? _connectors;
  GChargingPointsData_chargingPoints_data_connectorsBuilder get connectors =>
      _$this._connectors ??=
          new GChargingPointsData_chargingPoints_data_connectorsBuilder();
  set connectors(
          GChargingPointsData_chargingPoints_data_connectorsBuilder?
              connectors) =>
      _$this._connectors = connectors;

  GChargingPointsData_chargingPoints_dataBuilder() {
    GChargingPointsData_chargingPoints_data._initializeBuilder(this);
  }

  GChargingPointsData_chargingPoints_dataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _cpType = $v.cpType;
      _cpNumber = $v.cpNumber;
      _power = $v.power;
      _statusId = $v.statusId;
      _location = $v.location.toBuilder();
      _connectors = $v.connectors.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GChargingPointsData_chargingPoints_data other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GChargingPointsData_chargingPoints_data;
  }

  @override
  void update(
      void Function(GChargingPointsData_chargingPoints_dataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GChargingPointsData_chargingPoints_data build() => _build();

  _$GChargingPointsData_chargingPoints_data _build() {
    _$GChargingPointsData_chargingPoints_data _$result;
    try {
      _$result = _$v ??
          new _$GChargingPointsData_chargingPoints_data._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GChargingPointsData_chargingPoints_data', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GChargingPointsData_chargingPoints_data', 'id'),
              cpType: cpType,
              cpNumber: cpNumber,
              power: power,
              statusId: statusId,
              location: location.build(),
              connectors: connectors.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'location';
        location.build();
        _$failedField = 'connectors';
        connectors.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GChargingPointsData_chargingPoints_data',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GChargingPointsData_chargingPoints_data_location
    extends GChargingPointsData_chargingPoints_data_location {
  @override
  final String G__typename;
  @override
  final String title;
  @override
  final String address;

  factory _$GChargingPointsData_chargingPoints_data_location(
          [void Function(
                  GChargingPointsData_chargingPoints_data_locationBuilder)?
              updates]) =>
      (new GChargingPointsData_chargingPoints_data_locationBuilder()
            ..update(updates))
          ._build();

  _$GChargingPointsData_chargingPoints_data_location._(
      {required this.G__typename, required this.title, required this.address})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GChargingPointsData_chargingPoints_data_location', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        title, r'GChargingPointsData_chargingPoints_data_location', 'title');
    BuiltValueNullFieldError.checkNotNull(address,
        r'GChargingPointsData_chargingPoints_data_location', 'address');
  }

  @override
  GChargingPointsData_chargingPoints_data_location rebuild(
          void Function(GChargingPointsData_chargingPoints_data_locationBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GChargingPointsData_chargingPoints_data_locationBuilder toBuilder() =>
      new GChargingPointsData_chargingPoints_data_locationBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GChargingPointsData_chargingPoints_data_location &&
        G__typename == other.G__typename &&
        title == other.title &&
        address == other.address;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GChargingPointsData_chargingPoints_data_location')
          ..add('G__typename', G__typename)
          ..add('title', title)
          ..add('address', address))
        .toString();
  }
}

class GChargingPointsData_chargingPoints_data_locationBuilder
    implements
        Builder<GChargingPointsData_chargingPoints_data_location,
            GChargingPointsData_chargingPoints_data_locationBuilder> {
  _$GChargingPointsData_chargingPoints_data_location? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  GChargingPointsData_chargingPoints_data_locationBuilder() {
    GChargingPointsData_chargingPoints_data_location._initializeBuilder(this);
  }

  GChargingPointsData_chargingPoints_data_locationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _title = $v.title;
      _address = $v.address;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GChargingPointsData_chargingPoints_data_location other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GChargingPointsData_chargingPoints_data_location;
  }

  @override
  void update(
      void Function(GChargingPointsData_chargingPoints_data_locationBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GChargingPointsData_chargingPoints_data_location build() => _build();

  _$GChargingPointsData_chargingPoints_data_location _build() {
    final _$result = _$v ??
        new _$GChargingPointsData_chargingPoints_data_location._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GChargingPointsData_chargingPoints_data_location',
                'G__typename'),
            title: BuiltValueNullFieldError.checkNotNull(title,
                r'GChargingPointsData_chargingPoints_data_location', 'title'),
            address: BuiltValueNullFieldError.checkNotNull(
                address,
                r'GChargingPointsData_chargingPoints_data_location',
                'address'));
    replace(_$result);
    return _$result;
  }
}

class _$GChargingPointsData_chargingPoints_data_connectors
    extends GChargingPointsData_chargingPoints_data_connectors {
  @override
  final String G__typename;
  @override
  final BuiltList<GChargingPointsData_chargingPoints_data_connectors_data?>
      data;

  factory _$GChargingPointsData_chargingPoints_data_connectors(
          [void Function(
                  GChargingPointsData_chargingPoints_data_connectorsBuilder)?
              updates]) =>
      (new GChargingPointsData_chargingPoints_data_connectorsBuilder()
            ..update(updates))
          ._build();

  _$GChargingPointsData_chargingPoints_data_connectors._(
      {required this.G__typename, required this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GChargingPointsData_chargingPoints_data_connectors', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        data, r'GChargingPointsData_chargingPoints_data_connectors', 'data');
  }

  @override
  GChargingPointsData_chargingPoints_data_connectors rebuild(
          void Function(
                  GChargingPointsData_chargingPoints_data_connectorsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GChargingPointsData_chargingPoints_data_connectorsBuilder toBuilder() =>
      new GChargingPointsData_chargingPoints_data_connectorsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GChargingPointsData_chargingPoints_data_connectors &&
        G__typename == other.G__typename &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GChargingPointsData_chargingPoints_data_connectors')
          ..add('G__typename', G__typename)
          ..add('data', data))
        .toString();
  }
}

class GChargingPointsData_chargingPoints_data_connectorsBuilder
    implements
        Builder<GChargingPointsData_chargingPoints_data_connectors,
            GChargingPointsData_chargingPoints_data_connectorsBuilder> {
  _$GChargingPointsData_chargingPoints_data_connectors? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GChargingPointsData_chargingPoints_data_connectors_data?>? _data;
  ListBuilder<GChargingPointsData_chargingPoints_data_connectors_data?>
      get data => _$this._data ??= new ListBuilder<
          GChargingPointsData_chargingPoints_data_connectors_data?>();
  set data(
          ListBuilder<GChargingPointsData_chargingPoints_data_connectors_data?>?
              data) =>
      _$this._data = data;

  GChargingPointsData_chargingPoints_data_connectorsBuilder() {
    GChargingPointsData_chargingPoints_data_connectors._initializeBuilder(this);
  }

  GChargingPointsData_chargingPoints_data_connectorsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GChargingPointsData_chargingPoints_data_connectors other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GChargingPointsData_chargingPoints_data_connectors;
  }

  @override
  void update(
      void Function(GChargingPointsData_chargingPoints_data_connectorsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GChargingPointsData_chargingPoints_data_connectors build() => _build();

  _$GChargingPointsData_chargingPoints_data_connectors _build() {
    _$GChargingPointsData_chargingPoints_data_connectors _$result;
    try {
      _$result = _$v ??
          new _$GChargingPointsData_chargingPoints_data_connectors._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GChargingPointsData_chargingPoints_data_connectors',
                  'G__typename'),
              data: data.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GChargingPointsData_chargingPoints_data_connectors',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GChargingPointsData_chargingPoints_data_connectors_data
    extends GChargingPointsData_chargingPoints_data_connectors_data {
  @override
  final String G__typename;
  @override
  final BuiltList<
      GChargingPointsData_chargingPoints_data_connectors_data_tariffs> tariffs;

  factory _$GChargingPointsData_chargingPoints_data_connectors_data(
          [void Function(
                  GChargingPointsData_chargingPoints_data_connectors_dataBuilder)?
              updates]) =>
      (new GChargingPointsData_chargingPoints_data_connectors_dataBuilder()
            ..update(updates))
          ._build();

  _$GChargingPointsData_chargingPoints_data_connectors_data._(
      {required this.G__typename, required this.tariffs})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GChargingPointsData_chargingPoints_data_connectors_data',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(tariffs,
        r'GChargingPointsData_chargingPoints_data_connectors_data', 'tariffs');
  }

  @override
  GChargingPointsData_chargingPoints_data_connectors_data rebuild(
          void Function(
                  GChargingPointsData_chargingPoints_data_connectors_dataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GChargingPointsData_chargingPoints_data_connectors_dataBuilder toBuilder() =>
      new GChargingPointsData_chargingPoints_data_connectors_dataBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GChargingPointsData_chargingPoints_data_connectors_data &&
        G__typename == other.G__typename &&
        tariffs == other.tariffs;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, tariffs.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GChargingPointsData_chargingPoints_data_connectors_data')
          ..add('G__typename', G__typename)
          ..add('tariffs', tariffs))
        .toString();
  }
}

class GChargingPointsData_chargingPoints_data_connectors_dataBuilder
    implements
        Builder<GChargingPointsData_chargingPoints_data_connectors_data,
            GChargingPointsData_chargingPoints_data_connectors_dataBuilder> {
  _$GChargingPointsData_chargingPoints_data_connectors_data? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GChargingPointsData_chargingPoints_data_connectors_data_tariffs>?
      _tariffs;
  ListBuilder<GChargingPointsData_chargingPoints_data_connectors_data_tariffs>
      get tariffs => _$this._tariffs ??= new ListBuilder<
          GChargingPointsData_chargingPoints_data_connectors_data_tariffs>();
  set tariffs(
          ListBuilder<
                  GChargingPointsData_chargingPoints_data_connectors_data_tariffs>?
              tariffs) =>
      _$this._tariffs = tariffs;

  GChargingPointsData_chargingPoints_data_connectors_dataBuilder() {
    GChargingPointsData_chargingPoints_data_connectors_data._initializeBuilder(
        this);
  }

  GChargingPointsData_chargingPoints_data_connectors_dataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _tariffs = $v.tariffs.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GChargingPointsData_chargingPoints_data_connectors_data other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GChargingPointsData_chargingPoints_data_connectors_data;
  }

  @override
  void update(
      void Function(
              GChargingPointsData_chargingPoints_data_connectors_dataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GChargingPointsData_chargingPoints_data_connectors_data build() => _build();

  _$GChargingPointsData_chargingPoints_data_connectors_data _build() {
    _$GChargingPointsData_chargingPoints_data_connectors_data _$result;
    try {
      _$result = _$v ??
          new _$GChargingPointsData_chargingPoints_data_connectors_data._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GChargingPointsData_chargingPoints_data_connectors_data',
                  'G__typename'),
              tariffs: tariffs.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tariffs';
        tariffs.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GChargingPointsData_chargingPoints_data_connectors_data',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GChargingPointsData_chargingPoints_data_connectors_data_tariffs
    extends GChargingPointsData_chargingPoints_data_connectors_data_tariffs {
  @override
  final String G__typename;
  @override
  final double price;
  @override
  final String uom;

  factory _$GChargingPointsData_chargingPoints_data_connectors_data_tariffs(
          [void Function(
                  GChargingPointsData_chargingPoints_data_connectors_data_tariffsBuilder)?
              updates]) =>
      (new GChargingPointsData_chargingPoints_data_connectors_data_tariffsBuilder()
            ..update(updates))
          ._build();

  _$GChargingPointsData_chargingPoints_data_connectors_data_tariffs._(
      {required this.G__typename, required this.price, required this.uom})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GChargingPointsData_chargingPoints_data_connectors_data_tariffs',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        price,
        r'GChargingPointsData_chargingPoints_data_connectors_data_tariffs',
        'price');
    BuiltValueNullFieldError.checkNotNull(
        uom,
        r'GChargingPointsData_chargingPoints_data_connectors_data_tariffs',
        'uom');
  }

  @override
  GChargingPointsData_chargingPoints_data_connectors_data_tariffs rebuild(
          void Function(
                  GChargingPointsData_chargingPoints_data_connectors_data_tariffsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GChargingPointsData_chargingPoints_data_connectors_data_tariffsBuilder
      toBuilder() =>
          new GChargingPointsData_chargingPoints_data_connectors_data_tariffsBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GChargingPointsData_chargingPoints_data_connectors_data_tariffs &&
        G__typename == other.G__typename &&
        price == other.price &&
        uom == other.uom;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, uom.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GChargingPointsData_chargingPoints_data_connectors_data_tariffs')
          ..add('G__typename', G__typename)
          ..add('price', price)
          ..add('uom', uom))
        .toString();
  }
}

class GChargingPointsData_chargingPoints_data_connectors_data_tariffsBuilder
    implements
        Builder<GChargingPointsData_chargingPoints_data_connectors_data_tariffs,
            GChargingPointsData_chargingPoints_data_connectors_data_tariffsBuilder> {
  _$GChargingPointsData_chargingPoints_data_connectors_data_tariffs? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  String? _uom;
  String? get uom => _$this._uom;
  set uom(String? uom) => _$this._uom = uom;

  GChargingPointsData_chargingPoints_data_connectors_data_tariffsBuilder() {
    GChargingPointsData_chargingPoints_data_connectors_data_tariffs
        ._initializeBuilder(this);
  }

  GChargingPointsData_chargingPoints_data_connectors_data_tariffsBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _price = $v.price;
      _uom = $v.uom;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GChargingPointsData_chargingPoints_data_connectors_data_tariffs other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GChargingPointsData_chargingPoints_data_connectors_data_tariffs;
  }

  @override
  void update(
      void Function(
              GChargingPointsData_chargingPoints_data_connectors_data_tariffsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GChargingPointsData_chargingPoints_data_connectors_data_tariffs build() =>
      _build();

  _$GChargingPointsData_chargingPoints_data_connectors_data_tariffs _build() {
    final _$result = _$v ??
        new _$GChargingPointsData_chargingPoints_data_connectors_data_tariffs._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GChargingPointsData_chargingPoints_data_connectors_data_tariffs',
                'G__typename'),
            price: BuiltValueNullFieldError.checkNotNull(
                price,
                r'GChargingPointsData_chargingPoints_data_connectors_data_tariffs',
                'price'),
            uom: BuiltValueNullFieldError.checkNotNull(
                uom,
                r'GChargingPointsData_chargingPoints_data_connectors_data_tariffs',
                'uom'));
    replace(_$result);
    return _$result;
  }
}

class _$GChargingPointData extends GChargingPointData {
  @override
  final String G__typename;
  @override
  final GChargingPointData_chargingPoint chargingPoint;

  factory _$GChargingPointData(
          [void Function(GChargingPointDataBuilder)? updates]) =>
      (new GChargingPointDataBuilder()..update(updates))._build();

  _$GChargingPointData._(
      {required this.G__typename, required this.chargingPoint})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GChargingPointData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        chargingPoint, r'GChargingPointData', 'chargingPoint');
  }

  @override
  GChargingPointData rebuild(
          void Function(GChargingPointDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GChargingPointDataBuilder toBuilder() =>
      new GChargingPointDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GChargingPointData &&
        G__typename == other.G__typename &&
        chargingPoint == other.chargingPoint;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, chargingPoint.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GChargingPointData')
          ..add('G__typename', G__typename)
          ..add('chargingPoint', chargingPoint))
        .toString();
  }
}

class GChargingPointDataBuilder
    implements Builder<GChargingPointData, GChargingPointDataBuilder> {
  _$GChargingPointData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GChargingPointData_chargingPointBuilder? _chargingPoint;
  GChargingPointData_chargingPointBuilder get chargingPoint =>
      _$this._chargingPoint ??= new GChargingPointData_chargingPointBuilder();
  set chargingPoint(GChargingPointData_chargingPointBuilder? chargingPoint) =>
      _$this._chargingPoint = chargingPoint;

  GChargingPointDataBuilder() {
    GChargingPointData._initializeBuilder(this);
  }

  GChargingPointDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _chargingPoint = $v.chargingPoint.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GChargingPointData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GChargingPointData;
  }

  @override
  void update(void Function(GChargingPointDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GChargingPointData build() => _build();

  _$GChargingPointData _build() {
    _$GChargingPointData _$result;
    try {
      _$result = _$v ??
          new _$GChargingPointData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GChargingPointData', 'G__typename'),
              chargingPoint: chargingPoint.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'chargingPoint';
        chargingPoint.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GChargingPointData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GChargingPointData_chargingPoint
    extends GChargingPointData_chargingPoint {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String? cpType;
  @override
  final String? model;
  @override
  final double? power;
  @override
  final int? statusId;
  @override
  final String? cpNumber;
  @override
  final GChargingPointData_chargingPoint_location location;
  @override
  final GChargingPointData_chargingPoint_connectors connectors;

  factory _$GChargingPointData_chargingPoint(
          [void Function(GChargingPointData_chargingPointBuilder)? updates]) =>
      (new GChargingPointData_chargingPointBuilder()..update(updates))._build();

  _$GChargingPointData_chargingPoint._(
      {required this.G__typename,
      required this.id,
      this.cpType,
      this.model,
      this.power,
      this.statusId,
      this.cpNumber,
      required this.location,
      required this.connectors})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GChargingPointData_chargingPoint', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GChargingPointData_chargingPoint', 'id');
    BuiltValueNullFieldError.checkNotNull(
        location, r'GChargingPointData_chargingPoint', 'location');
    BuiltValueNullFieldError.checkNotNull(
        connectors, r'GChargingPointData_chargingPoint', 'connectors');
  }

  @override
  GChargingPointData_chargingPoint rebuild(
          void Function(GChargingPointData_chargingPointBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GChargingPointData_chargingPointBuilder toBuilder() =>
      new GChargingPointData_chargingPointBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GChargingPointData_chargingPoint &&
        G__typename == other.G__typename &&
        id == other.id &&
        cpType == other.cpType &&
        model == other.model &&
        power == other.power &&
        statusId == other.statusId &&
        cpNumber == other.cpNumber &&
        location == other.location &&
        connectors == other.connectors;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, cpType.hashCode);
    _$hash = $jc(_$hash, model.hashCode);
    _$hash = $jc(_$hash, power.hashCode);
    _$hash = $jc(_$hash, statusId.hashCode);
    _$hash = $jc(_$hash, cpNumber.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jc(_$hash, connectors.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GChargingPointData_chargingPoint')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('cpType', cpType)
          ..add('model', model)
          ..add('power', power)
          ..add('statusId', statusId)
          ..add('cpNumber', cpNumber)
          ..add('location', location)
          ..add('connectors', connectors))
        .toString();
  }
}

class GChargingPointData_chargingPointBuilder
    implements
        Builder<GChargingPointData_chargingPoint,
            GChargingPointData_chargingPointBuilder> {
  _$GChargingPointData_chargingPoint? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _cpType;
  String? get cpType => _$this._cpType;
  set cpType(String? cpType) => _$this._cpType = cpType;

  String? _model;
  String? get model => _$this._model;
  set model(String? model) => _$this._model = model;

  double? _power;
  double? get power => _$this._power;
  set power(double? power) => _$this._power = power;

  int? _statusId;
  int? get statusId => _$this._statusId;
  set statusId(int? statusId) => _$this._statusId = statusId;

  String? _cpNumber;
  String? get cpNumber => _$this._cpNumber;
  set cpNumber(String? cpNumber) => _$this._cpNumber = cpNumber;

  GChargingPointData_chargingPoint_locationBuilder? _location;
  GChargingPointData_chargingPoint_locationBuilder get location =>
      _$this._location ??=
          new GChargingPointData_chargingPoint_locationBuilder();
  set location(GChargingPointData_chargingPoint_locationBuilder? location) =>
      _$this._location = location;

  GChargingPointData_chargingPoint_connectorsBuilder? _connectors;
  GChargingPointData_chargingPoint_connectorsBuilder get connectors =>
      _$this._connectors ??=
          new GChargingPointData_chargingPoint_connectorsBuilder();
  set connectors(
          GChargingPointData_chargingPoint_connectorsBuilder? connectors) =>
      _$this._connectors = connectors;

  GChargingPointData_chargingPointBuilder() {
    GChargingPointData_chargingPoint._initializeBuilder(this);
  }

  GChargingPointData_chargingPointBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _cpType = $v.cpType;
      _model = $v.model;
      _power = $v.power;
      _statusId = $v.statusId;
      _cpNumber = $v.cpNumber;
      _location = $v.location.toBuilder();
      _connectors = $v.connectors.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GChargingPointData_chargingPoint other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GChargingPointData_chargingPoint;
  }

  @override
  void update(void Function(GChargingPointData_chargingPointBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GChargingPointData_chargingPoint build() => _build();

  _$GChargingPointData_chargingPoint _build() {
    _$GChargingPointData_chargingPoint _$result;
    try {
      _$result = _$v ??
          new _$GChargingPointData_chargingPoint._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GChargingPointData_chargingPoint', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GChargingPointData_chargingPoint', 'id'),
              cpType: cpType,
              model: model,
              power: power,
              statusId: statusId,
              cpNumber: cpNumber,
              location: location.build(),
              connectors: connectors.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'location';
        location.build();
        _$failedField = 'connectors';
        connectors.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GChargingPointData_chargingPoint', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GChargingPointData_chargingPoint_location
    extends GChargingPointData_chargingPoint_location {
  @override
  final String G__typename;
  @override
  final String title;
  @override
  final String address;
  @override
  final String parkingAccess;
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final String workingHoursStart;
  @override
  final String workingHoursEnd;

  factory _$GChargingPointData_chargingPoint_location(
          [void Function(GChargingPointData_chargingPoint_locationBuilder)?
              updates]) =>
      (new GChargingPointData_chargingPoint_locationBuilder()..update(updates))
          ._build();

  _$GChargingPointData_chargingPoint_location._(
      {required this.G__typename,
      required this.title,
      required this.address,
      required this.parkingAccess,
      required this.latitude,
      required this.longitude,
      required this.workingHoursStart,
      required this.workingHoursEnd})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GChargingPointData_chargingPoint_location', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        title, r'GChargingPointData_chargingPoint_location', 'title');
    BuiltValueNullFieldError.checkNotNull(
        address, r'GChargingPointData_chargingPoint_location', 'address');
    BuiltValueNullFieldError.checkNotNull(parkingAccess,
        r'GChargingPointData_chargingPoint_location', 'parkingAccess');
    BuiltValueNullFieldError.checkNotNull(
        latitude, r'GChargingPointData_chargingPoint_location', 'latitude');
    BuiltValueNullFieldError.checkNotNull(
        longitude, r'GChargingPointData_chargingPoint_location', 'longitude');
    BuiltValueNullFieldError.checkNotNull(workingHoursStart,
        r'GChargingPointData_chargingPoint_location', 'workingHoursStart');
    BuiltValueNullFieldError.checkNotNull(workingHoursEnd,
        r'GChargingPointData_chargingPoint_location', 'workingHoursEnd');
  }

  @override
  GChargingPointData_chargingPoint_location rebuild(
          void Function(GChargingPointData_chargingPoint_locationBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GChargingPointData_chargingPoint_locationBuilder toBuilder() =>
      new GChargingPointData_chargingPoint_locationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GChargingPointData_chargingPoint_location &&
        G__typename == other.G__typename &&
        title == other.title &&
        address == other.address &&
        parkingAccess == other.parkingAccess &&
        latitude == other.latitude &&
        longitude == other.longitude &&
        workingHoursStart == other.workingHoursStart &&
        workingHoursEnd == other.workingHoursEnd;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, parkingAccess.hashCode);
    _$hash = $jc(_$hash, latitude.hashCode);
    _$hash = $jc(_$hash, longitude.hashCode);
    _$hash = $jc(_$hash, workingHoursStart.hashCode);
    _$hash = $jc(_$hash, workingHoursEnd.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GChargingPointData_chargingPoint_location')
          ..add('G__typename', G__typename)
          ..add('title', title)
          ..add('address', address)
          ..add('parkingAccess', parkingAccess)
          ..add('latitude', latitude)
          ..add('longitude', longitude)
          ..add('workingHoursStart', workingHoursStart)
          ..add('workingHoursEnd', workingHoursEnd))
        .toString();
  }
}

class GChargingPointData_chargingPoint_locationBuilder
    implements
        Builder<GChargingPointData_chargingPoint_location,
            GChargingPointData_chargingPoint_locationBuilder> {
  _$GChargingPointData_chargingPoint_location? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _parkingAccess;
  String? get parkingAccess => _$this._parkingAccess;
  set parkingAccess(String? parkingAccess) =>
      _$this._parkingAccess = parkingAccess;

  double? _latitude;
  double? get latitude => _$this._latitude;
  set latitude(double? latitude) => _$this._latitude = latitude;

  double? _longitude;
  double? get longitude => _$this._longitude;
  set longitude(double? longitude) => _$this._longitude = longitude;

  String? _workingHoursStart;
  String? get workingHoursStart => _$this._workingHoursStart;
  set workingHoursStart(String? workingHoursStart) =>
      _$this._workingHoursStart = workingHoursStart;

  String? _workingHoursEnd;
  String? get workingHoursEnd => _$this._workingHoursEnd;
  set workingHoursEnd(String? workingHoursEnd) =>
      _$this._workingHoursEnd = workingHoursEnd;

  GChargingPointData_chargingPoint_locationBuilder() {
    GChargingPointData_chargingPoint_location._initializeBuilder(this);
  }

  GChargingPointData_chargingPoint_locationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _title = $v.title;
      _address = $v.address;
      _parkingAccess = $v.parkingAccess;
      _latitude = $v.latitude;
      _longitude = $v.longitude;
      _workingHoursStart = $v.workingHoursStart;
      _workingHoursEnd = $v.workingHoursEnd;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GChargingPointData_chargingPoint_location other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GChargingPointData_chargingPoint_location;
  }

  @override
  void update(
      void Function(GChargingPointData_chargingPoint_locationBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GChargingPointData_chargingPoint_location build() => _build();

  _$GChargingPointData_chargingPoint_location _build() {
    final _$result = _$v ??
        new _$GChargingPointData_chargingPoint_location._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GChargingPointData_chargingPoint_location', 'G__typename'),
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'GChargingPointData_chargingPoint_location', 'title'),
            address: BuiltValueNullFieldError.checkNotNull(
                address, r'GChargingPointData_chargingPoint_location', 'address'),
            parkingAccess: BuiltValueNullFieldError.checkNotNull(
                parkingAccess, r'GChargingPointData_chargingPoint_location', 'parkingAccess'),
            latitude: BuiltValueNullFieldError.checkNotNull(
                latitude, r'GChargingPointData_chargingPoint_location', 'latitude'),
            longitude: BuiltValueNullFieldError.checkNotNull(
                longitude, r'GChargingPointData_chargingPoint_location', 'longitude'),
            workingHoursStart: BuiltValueNullFieldError.checkNotNull(
                workingHoursStart, r'GChargingPointData_chargingPoint_location', 'workingHoursStart'),
            workingHoursEnd: BuiltValueNullFieldError.checkNotNull(workingHoursEnd, r'GChargingPointData_chargingPoint_location', 'workingHoursEnd'));
    replace(_$result);
    return _$result;
  }
}

class _$GChargingPointData_chargingPoint_connectors
    extends GChargingPointData_chargingPoint_connectors {
  @override
  final String G__typename;
  @override
  final BuiltList<GChargingPointData_chargingPoint_connectors_data?> data;

  factory _$GChargingPointData_chargingPoint_connectors(
          [void Function(GChargingPointData_chargingPoint_connectorsBuilder)?
              updates]) =>
      (new GChargingPointData_chargingPoint_connectorsBuilder()
            ..update(updates))
          ._build();

  _$GChargingPointData_chargingPoint_connectors._(
      {required this.G__typename, required this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GChargingPointData_chargingPoint_connectors', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        data, r'GChargingPointData_chargingPoint_connectors', 'data');
  }

  @override
  GChargingPointData_chargingPoint_connectors rebuild(
          void Function(GChargingPointData_chargingPoint_connectorsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GChargingPointData_chargingPoint_connectorsBuilder toBuilder() =>
      new GChargingPointData_chargingPoint_connectorsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GChargingPointData_chargingPoint_connectors &&
        G__typename == other.G__typename &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GChargingPointData_chargingPoint_connectors')
          ..add('G__typename', G__typename)
          ..add('data', data))
        .toString();
  }
}

class GChargingPointData_chargingPoint_connectorsBuilder
    implements
        Builder<GChargingPointData_chargingPoint_connectors,
            GChargingPointData_chargingPoint_connectorsBuilder> {
  _$GChargingPointData_chargingPoint_connectors? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GChargingPointData_chargingPoint_connectors_data?>? _data;
  ListBuilder<GChargingPointData_chargingPoint_connectors_data?> get data =>
      _$this._data ??=
          new ListBuilder<GChargingPointData_chargingPoint_connectors_data?>();
  set data(
          ListBuilder<GChargingPointData_chargingPoint_connectors_data?>?
              data) =>
      _$this._data = data;

  GChargingPointData_chargingPoint_connectorsBuilder() {
    GChargingPointData_chargingPoint_connectors._initializeBuilder(this);
  }

  GChargingPointData_chargingPoint_connectorsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GChargingPointData_chargingPoint_connectors other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GChargingPointData_chargingPoint_connectors;
  }

  @override
  void update(
      void Function(GChargingPointData_chargingPoint_connectorsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GChargingPointData_chargingPoint_connectors build() => _build();

  _$GChargingPointData_chargingPoint_connectors _build() {
    _$GChargingPointData_chargingPoint_connectors _$result;
    try {
      _$result = _$v ??
          new _$GChargingPointData_chargingPoint_connectors._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GChargingPointData_chargingPoint_connectors',
                  'G__typename'),
              data: data.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GChargingPointData_chargingPoint_connectors',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GChargingPointData_chargingPoint_connectors_data
    extends GChargingPointData_chargingPoint_connectors_data {
  @override
  final String G__typename;
  @override
  final int? amperage;
  @override
  final String id;
  @override
  final String? number;
  @override
  final int? statusId;
  @override
  final String? plugType;
  @override
  final String? type;
  @override
  final BuiltList<GChargingPointData_chargingPoint_connectors_data_tariffs>
      tariffs;

  factory _$GChargingPointData_chargingPoint_connectors_data(
          [void Function(
                  GChargingPointData_chargingPoint_connectors_dataBuilder)?
              updates]) =>
      (new GChargingPointData_chargingPoint_connectors_dataBuilder()
            ..update(updates))
          ._build();

  _$GChargingPointData_chargingPoint_connectors_data._(
      {required this.G__typename,
      this.amperage,
      required this.id,
      this.number,
      this.statusId,
      this.plugType,
      this.type,
      required this.tariffs})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GChargingPointData_chargingPoint_connectors_data', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GChargingPointData_chargingPoint_connectors_data', 'id');
    BuiltValueNullFieldError.checkNotNull(tariffs,
        r'GChargingPointData_chargingPoint_connectors_data', 'tariffs');
  }

  @override
  GChargingPointData_chargingPoint_connectors_data rebuild(
          void Function(GChargingPointData_chargingPoint_connectors_dataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GChargingPointData_chargingPoint_connectors_dataBuilder toBuilder() =>
      new GChargingPointData_chargingPoint_connectors_dataBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GChargingPointData_chargingPoint_connectors_data &&
        G__typename == other.G__typename &&
        amperage == other.amperage &&
        id == other.id &&
        number == other.number &&
        statusId == other.statusId &&
        plugType == other.plugType &&
        type == other.type &&
        tariffs == other.tariffs;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, amperage.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, number.hashCode);
    _$hash = $jc(_$hash, statusId.hashCode);
    _$hash = $jc(_$hash, plugType.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, tariffs.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GChargingPointData_chargingPoint_connectors_data')
          ..add('G__typename', G__typename)
          ..add('amperage', amperage)
          ..add('id', id)
          ..add('number', number)
          ..add('statusId', statusId)
          ..add('plugType', plugType)
          ..add('type', type)
          ..add('tariffs', tariffs))
        .toString();
  }
}

class GChargingPointData_chargingPoint_connectors_dataBuilder
    implements
        Builder<GChargingPointData_chargingPoint_connectors_data,
            GChargingPointData_chargingPoint_connectors_dataBuilder> {
  _$GChargingPointData_chargingPoint_connectors_data? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _amperage;
  int? get amperage => _$this._amperage;
  set amperage(int? amperage) => _$this._amperage = amperage;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _number;
  String? get number => _$this._number;
  set number(String? number) => _$this._number = number;

  int? _statusId;
  int? get statusId => _$this._statusId;
  set statusId(int? statusId) => _$this._statusId = statusId;

  String? _plugType;
  String? get plugType => _$this._plugType;
  set plugType(String? plugType) => _$this._plugType = plugType;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  ListBuilder<GChargingPointData_chargingPoint_connectors_data_tariffs>?
      _tariffs;
  ListBuilder<GChargingPointData_chargingPoint_connectors_data_tariffs>
      get tariffs => _$this._tariffs ??= new ListBuilder<
          GChargingPointData_chargingPoint_connectors_data_tariffs>();
  set tariffs(
          ListBuilder<GChargingPointData_chargingPoint_connectors_data_tariffs>?
              tariffs) =>
      _$this._tariffs = tariffs;

  GChargingPointData_chargingPoint_connectors_dataBuilder() {
    GChargingPointData_chargingPoint_connectors_data._initializeBuilder(this);
  }

  GChargingPointData_chargingPoint_connectors_dataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _amperage = $v.amperage;
      _id = $v.id;
      _number = $v.number;
      _statusId = $v.statusId;
      _plugType = $v.plugType;
      _type = $v.type;
      _tariffs = $v.tariffs.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GChargingPointData_chargingPoint_connectors_data other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GChargingPointData_chargingPoint_connectors_data;
  }

  @override
  void update(
      void Function(GChargingPointData_chargingPoint_connectors_dataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GChargingPointData_chargingPoint_connectors_data build() => _build();

  _$GChargingPointData_chargingPoint_connectors_data _build() {
    _$GChargingPointData_chargingPoint_connectors_data _$result;
    try {
      _$result = _$v ??
          new _$GChargingPointData_chargingPoint_connectors_data._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GChargingPointData_chargingPoint_connectors_data',
                  'G__typename'),
              amperage: amperage,
              id: BuiltValueNullFieldError.checkNotNull(id,
                  r'GChargingPointData_chargingPoint_connectors_data', 'id'),
              number: number,
              statusId: statusId,
              plugType: plugType,
              type: type,
              tariffs: tariffs.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tariffs';
        tariffs.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GChargingPointData_chargingPoint_connectors_data',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GChargingPointData_chargingPoint_connectors_data_tariffs
    extends GChargingPointData_chargingPoint_connectors_data_tariffs {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final double price;
  @override
  final String uom;

  factory _$GChargingPointData_chargingPoint_connectors_data_tariffs(
          [void Function(
                  GChargingPointData_chargingPoint_connectors_data_tariffsBuilder)?
              updates]) =>
      (new GChargingPointData_chargingPoint_connectors_data_tariffsBuilder()
            ..update(updates))
          ._build();

  _$GChargingPointData_chargingPoint_connectors_data_tariffs._(
      {required this.G__typename,
      required this.id,
      required this.price,
      required this.uom})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GChargingPointData_chargingPoint_connectors_data_tariffs',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GChargingPointData_chargingPoint_connectors_data_tariffs', 'id');
    BuiltValueNullFieldError.checkNotNull(price,
        r'GChargingPointData_chargingPoint_connectors_data_tariffs', 'price');
    BuiltValueNullFieldError.checkNotNull(uom,
        r'GChargingPointData_chargingPoint_connectors_data_tariffs', 'uom');
  }

  @override
  GChargingPointData_chargingPoint_connectors_data_tariffs rebuild(
          void Function(
                  GChargingPointData_chargingPoint_connectors_data_tariffsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GChargingPointData_chargingPoint_connectors_data_tariffsBuilder toBuilder() =>
      new GChargingPointData_chargingPoint_connectors_data_tariffsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GChargingPointData_chargingPoint_connectors_data_tariffs &&
        G__typename == other.G__typename &&
        id == other.id &&
        price == other.price &&
        uom == other.uom;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, uom.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GChargingPointData_chargingPoint_connectors_data_tariffs')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('price', price)
          ..add('uom', uom))
        .toString();
  }
}

class GChargingPointData_chargingPoint_connectors_data_tariffsBuilder
    implements
        Builder<GChargingPointData_chargingPoint_connectors_data_tariffs,
            GChargingPointData_chargingPoint_connectors_data_tariffsBuilder> {
  _$GChargingPointData_chargingPoint_connectors_data_tariffs? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  String? _uom;
  String? get uom => _$this._uom;
  set uom(String? uom) => _$this._uom = uom;

  GChargingPointData_chargingPoint_connectors_data_tariffsBuilder() {
    GChargingPointData_chargingPoint_connectors_data_tariffs._initializeBuilder(
        this);
  }

  GChargingPointData_chargingPoint_connectors_data_tariffsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _price = $v.price;
      _uom = $v.uom;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GChargingPointData_chargingPoint_connectors_data_tariffs other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GChargingPointData_chargingPoint_connectors_data_tariffs;
  }

  @override
  void update(
      void Function(
              GChargingPointData_chargingPoint_connectors_data_tariffsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GChargingPointData_chargingPoint_connectors_data_tariffs build() => _build();

  _$GChargingPointData_chargingPoint_connectors_data_tariffs _build() {
    final _$result = _$v ??
        new _$GChargingPointData_chargingPoint_connectors_data_tariffs._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GChargingPointData_chargingPoint_connectors_data_tariffs',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id,
                r'GChargingPointData_chargingPoint_connectors_data_tariffs',
                'id'),
            price: BuiltValueNullFieldError.checkNotNull(
                price,
                r'GChargingPointData_chargingPoint_connectors_data_tariffs',
                'price'),
            uom: BuiltValueNullFieldError.checkNotNull(
                uom,
                r'GChargingPointData_chargingPoint_connectors_data_tariffs',
                'uom'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
