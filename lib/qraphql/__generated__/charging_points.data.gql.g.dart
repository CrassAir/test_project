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
      'location',
      serializers.serialize(object.location,
          specifiedType:
              const FullType(GChargingPointsData_chargingPoints_data_location)),
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
  final String? cpType;
  @override
  final String? cpNumber;
  @override
  final double? power;
  @override
  final int? statusId;
  @override
  final GChargingPointsData_chargingPoints_data_location location;

  factory _$GChargingPointsData_chargingPoints_data(
          [void Function(GChargingPointsData_chargingPoints_dataBuilder)?
              updates]) =>
      (new GChargingPointsData_chargingPoints_dataBuilder()..update(updates))
          ._build();

  _$GChargingPointsData_chargingPoints_data._(
      {required this.G__typename,
      this.cpType,
      this.cpNumber,
      this.power,
      this.statusId,
      required this.location})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GChargingPointsData_chargingPoints_data', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        location, r'GChargingPointsData_chargingPoints_data', 'location');
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
        cpType == other.cpType &&
        cpNumber == other.cpNumber &&
        power == other.power &&
        statusId == other.statusId &&
        location == other.location;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, cpType.hashCode);
    _$hash = $jc(_$hash, cpNumber.hashCode);
    _$hash = $jc(_$hash, power.hashCode);
    _$hash = $jc(_$hash, statusId.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GChargingPointsData_chargingPoints_data')
          ..add('G__typename', G__typename)
          ..add('cpType', cpType)
          ..add('cpNumber', cpNumber)
          ..add('power', power)
          ..add('statusId', statusId)
          ..add('location', location))
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

  GChargingPointsData_chargingPoints_dataBuilder() {
    GChargingPointsData_chargingPoints_data._initializeBuilder(this);
  }

  GChargingPointsData_chargingPoints_dataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _cpType = $v.cpType;
      _cpNumber = $v.cpNumber;
      _power = $v.power;
      _statusId = $v.statusId;
      _location = $v.location.toBuilder();
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
              cpType: cpType,
              cpNumber: cpNumber,
              power: power,
              statusId: statusId,
              location: location.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'location';
        location.build();
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
