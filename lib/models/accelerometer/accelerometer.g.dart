// GENERATED CODE - DO NOT MODIFY BY HAND

part of accelerometer;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Accelerometer> _$accelerometerSerializer =
    new _$AccelerometerSerializer();

class _$AccelerometerSerializer implements StructuredSerializer<Accelerometer> {
  @override
  final Iterable<Type> types = const [Accelerometer, _$Accelerometer];
  @override
  final String wireName = 'Accelerometer';

  @override
  Iterable serialize(Serializers serializers, Accelerometer object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'x',
      serializers.serialize(object.x, specifiedType: const FullType(double)),
      'y',
      serializers.serialize(object.y, specifiedType: const FullType(double)),
      'z',
      serializers.serialize(object.z, specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  Accelerometer deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AccelerometerBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'x':
          result.x = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'y':
          result.y = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'z':
          result.z = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$Accelerometer extends Accelerometer {
  @override
  final double x;
  @override
  final double y;
  @override
  final double z;

  factory _$Accelerometer([void Function(AccelerometerBuilder) updates]) =>
      (new AccelerometerBuilder()..update(updates)).build();

  _$Accelerometer._({this.x, this.y, this.z}) : super._() {
    if (x == null) {
      throw new BuiltValueNullFieldError('Accelerometer', 'x');
    }
    if (y == null) {
      throw new BuiltValueNullFieldError('Accelerometer', 'y');
    }
    if (z == null) {
      throw new BuiltValueNullFieldError('Accelerometer', 'z');
    }
  }

  @override
  Accelerometer rebuild(void Function(AccelerometerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccelerometerBuilder toBuilder() => new AccelerometerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Accelerometer &&
        x == other.x &&
        y == other.y &&
        z == other.z;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, x.hashCode), y.hashCode), z.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Accelerometer')
          ..add('x', x)
          ..add('y', y)
          ..add('z', z))
        .toString();
  }
}

class AccelerometerBuilder
    implements Builder<Accelerometer, AccelerometerBuilder> {
  _$Accelerometer _$v;

  double _x;
  double get x => _$this._x;
  set x(double x) => _$this._x = x;

  double _y;
  double get y => _$this._y;
  set y(double y) => _$this._y = y;

  double _z;
  double get z => _$this._z;
  set z(double z) => _$this._z = z;

  AccelerometerBuilder();

  AccelerometerBuilder get _$this {
    if (_$v != null) {
      _x = _$v.x;
      _y = _$v.y;
      _z = _$v.z;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Accelerometer other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Accelerometer;
  }

  @override
  void update(void Function(AccelerometerBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Accelerometer build() {
    final _$result = _$v ?? new _$Accelerometer._(x: x, y: y, z: z);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
