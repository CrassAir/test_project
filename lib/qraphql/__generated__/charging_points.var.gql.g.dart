// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'charging_points.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GChargingPointsVars> _$gChargingPointsVarsSerializer =
    new _$GChargingPointsVarsSerializer();
Serializer<GChargingPointVars> _$gChargingPointVarsSerializer =
    new _$GChargingPointVarsSerializer();

class _$GChargingPointsVarsSerializer
    implements StructuredSerializer<GChargingPointsVars> {
  @override
  final Iterable<Type> types = const [
    GChargingPointsVars,
    _$GChargingPointsVars
  ];
  @override
  final String wireName = 'GChargingPointsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GChargingPointsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'offset',
      serializers.serialize(object.offset, specifiedType: const FullType(int)),
      'limit',
      serializers.serialize(object.limit, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GChargingPointsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GChargingPointsVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'offset':
          result.offset = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'limit':
          result.limit = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GChargingPointVarsSerializer
    implements StructuredSerializer<GChargingPointVars> {
  @override
  final Iterable<Type> types = const [GChargingPointVars, _$GChargingPointVars];
  @override
  final String wireName = 'GChargingPointVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GChargingPointVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GChargingPointVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GChargingPointVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GChargingPointsVars extends GChargingPointsVars {
  @override
  final int offset;
  @override
  final int limit;

  factory _$GChargingPointsVars(
          [void Function(GChargingPointsVarsBuilder)? updates]) =>
      (new GChargingPointsVarsBuilder()..update(updates))._build();

  _$GChargingPointsVars._({required this.offset, required this.limit})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        offset, r'GChargingPointsVars', 'offset');
    BuiltValueNullFieldError.checkNotNull(
        limit, r'GChargingPointsVars', 'limit');
  }

  @override
  GChargingPointsVars rebuild(
          void Function(GChargingPointsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GChargingPointsVarsBuilder toBuilder() =>
      new GChargingPointsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GChargingPointsVars &&
        offset == other.offset &&
        limit == other.limit;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, offset.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GChargingPointsVars')
          ..add('offset', offset)
          ..add('limit', limit))
        .toString();
  }
}

class GChargingPointsVarsBuilder
    implements Builder<GChargingPointsVars, GChargingPointsVarsBuilder> {
  _$GChargingPointsVars? _$v;

  int? _offset;
  int? get offset => _$this._offset;
  set offset(int? offset) => _$this._offset = offset;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  GChargingPointsVarsBuilder();

  GChargingPointsVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _offset = $v.offset;
      _limit = $v.limit;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GChargingPointsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GChargingPointsVars;
  }

  @override
  void update(void Function(GChargingPointsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GChargingPointsVars build() => _build();

  _$GChargingPointsVars _build() {
    final _$result = _$v ??
        new _$GChargingPointsVars._(
            offset: BuiltValueNullFieldError.checkNotNull(
                offset, r'GChargingPointsVars', 'offset'),
            limit: BuiltValueNullFieldError.checkNotNull(
                limit, r'GChargingPointsVars', 'limit'));
    replace(_$result);
    return _$result;
  }
}

class _$GChargingPointVars extends GChargingPointVars {
  @override
  final String id;

  factory _$GChargingPointVars(
          [void Function(GChargingPointVarsBuilder)? updates]) =>
      (new GChargingPointVarsBuilder()..update(updates))._build();

  _$GChargingPointVars._({required this.id}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'GChargingPointVars', 'id');
  }

  @override
  GChargingPointVars rebuild(
          void Function(GChargingPointVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GChargingPointVarsBuilder toBuilder() =>
      new GChargingPointVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GChargingPointVars && id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GChargingPointVars')..add('id', id))
        .toString();
  }
}

class GChargingPointVarsBuilder
    implements Builder<GChargingPointVars, GChargingPointVarsBuilder> {
  _$GChargingPointVars? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GChargingPointVarsBuilder();

  GChargingPointVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GChargingPointVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GChargingPointVars;
  }

  @override
  void update(void Function(GChargingPointVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GChargingPointVars build() => _build();

  _$GChargingPointVars _build() {
    final _$result = _$v ??
        new _$GChargingPointVars._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GChargingPointVars', 'id'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
