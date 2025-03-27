// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Amount {
  BigInt get value => throw _privateConstructorUsedError;
  bool get deductFee => throw _privateConstructorUsedError;

  /// Create a copy of Amount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AmountCopyWith<Amount> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AmountCopyWith<$Res> {
  factory $AmountCopyWith(Amount value, $Res Function(Amount) then) =
      _$AmountCopyWithImpl<$Res, Amount>;
  @useResult
  $Res call({BigInt value, bool deductFee});
}

/// @nodoc
class _$AmountCopyWithImpl<$Res, $Val extends Amount>
    implements $AmountCopyWith<$Res> {
  _$AmountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Amount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? deductFee = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as BigInt,
      deductFee: null == deductFee
          ? _value.deductFee
          : deductFee // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AmountImplCopyWith<$Res> implements $AmountCopyWith<$Res> {
  factory _$$AmountImplCopyWith(
          _$AmountImpl value, $Res Function(_$AmountImpl) then) =
      __$$AmountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BigInt value, bool deductFee});
}

/// @nodoc
class __$$AmountImplCopyWithImpl<$Res>
    extends _$AmountCopyWithImpl<$Res, _$AmountImpl>
    implements _$$AmountImplCopyWith<$Res> {
  __$$AmountImplCopyWithImpl(
      _$AmountImpl _value, $Res Function(_$AmountImpl) _then)
      : super(_value, _then);

  /// Create a copy of Amount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? deductFee = null,
  }) {
    return _then(_$AmountImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as BigInt,
      deductFee: null == deductFee
          ? _value.deductFee
          : deductFee // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AmountImpl implements _Amount {
  const _$AmountImpl({required this.value, required this.deductFee});

  @override
  final BigInt value;
  @override
  final bool deductFee;

  @override
  String toString() {
    return 'Amount(value: $value, deductFee: $deductFee)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AmountImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.deductFee, deductFee) ||
                other.deductFee == deductFee));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value, deductFee);

  /// Create a copy of Amount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AmountImplCopyWith<_$AmountImpl> get copyWith =>
      __$$AmountImplCopyWithImpl<_$AmountImpl>(this, _$identity);
}

abstract class _Amount implements Amount {
  const factory _Amount(
      {required final BigInt value,
      required final bool deductFee}) = _$AmountImpl;

  @override
  BigInt get value;
  @override
  bool get deductFee;

  /// Create a copy of Amount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AmountImplCopyWith<_$AmountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Backup {
  String get name => throw _privateConstructorUsedError;
  String? get seed => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  String? get sk => throw _privateConstructorUsedError;
  String get fvk => throw _privateConstructorUsedError;
  String get uvk => throw _privateConstructorUsedError;
  String? get tsk => throw _privateConstructorUsedError;
  bool get saved => throw _privateConstructorUsedError;

  /// Create a copy of Backup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BackupCopyWith<Backup> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BackupCopyWith<$Res> {
  factory $BackupCopyWith(Backup value, $Res Function(Backup) then) =
      _$BackupCopyWithImpl<$Res, Backup>;
  @useResult
  $Res call(
      {String name,
      String? seed,
      int index,
      String? sk,
      String fvk,
      String uvk,
      String? tsk,
      bool saved});
}

/// @nodoc
class _$BackupCopyWithImpl<$Res, $Val extends Backup>
    implements $BackupCopyWith<$Res> {
  _$BackupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Backup
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? seed = freezed,
    Object? index = null,
    Object? sk = freezed,
    Object? fvk = null,
    Object? uvk = null,
    Object? tsk = freezed,
    Object? saved = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      seed: freezed == seed
          ? _value.seed
          : seed // ignore: cast_nullable_to_non_nullable
              as String?,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      sk: freezed == sk
          ? _value.sk
          : sk // ignore: cast_nullable_to_non_nullable
              as String?,
      fvk: null == fvk
          ? _value.fvk
          : fvk // ignore: cast_nullable_to_non_nullable
              as String,
      uvk: null == uvk
          ? _value.uvk
          : uvk // ignore: cast_nullable_to_non_nullable
              as String,
      tsk: freezed == tsk
          ? _value.tsk
          : tsk // ignore: cast_nullable_to_non_nullable
              as String?,
      saved: null == saved
          ? _value.saved
          : saved // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BackupImplCopyWith<$Res> implements $BackupCopyWith<$Res> {
  factory _$$BackupImplCopyWith(
          _$BackupImpl value, $Res Function(_$BackupImpl) then) =
      __$$BackupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String? seed,
      int index,
      String? sk,
      String fvk,
      String uvk,
      String? tsk,
      bool saved});
}

/// @nodoc
class __$$BackupImplCopyWithImpl<$Res>
    extends _$BackupCopyWithImpl<$Res, _$BackupImpl>
    implements _$$BackupImplCopyWith<$Res> {
  __$$BackupImplCopyWithImpl(
      _$BackupImpl _value, $Res Function(_$BackupImpl) _then)
      : super(_value, _then);

  /// Create a copy of Backup
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? seed = freezed,
    Object? index = null,
    Object? sk = freezed,
    Object? fvk = null,
    Object? uvk = null,
    Object? tsk = freezed,
    Object? saved = null,
  }) {
    return _then(_$BackupImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      seed: freezed == seed
          ? _value.seed
          : seed // ignore: cast_nullable_to_non_nullable
              as String?,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      sk: freezed == sk
          ? _value.sk
          : sk // ignore: cast_nullable_to_non_nullable
              as String?,
      fvk: null == fvk
          ? _value.fvk
          : fvk // ignore: cast_nullable_to_non_nullable
              as String,
      uvk: null == uvk
          ? _value.uvk
          : uvk // ignore: cast_nullable_to_non_nullable
              as String,
      tsk: freezed == tsk
          ? _value.tsk
          : tsk // ignore: cast_nullable_to_non_nullable
              as String?,
      saved: null == saved
          ? _value.saved
          : saved // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$BackupImpl implements _Backup {
  const _$BackupImpl(
      {required this.name,
      this.seed,
      required this.index,
      this.sk,
      required this.fvk,
      required this.uvk,
      this.tsk,
      required this.saved});

  @override
  final String name;
  @override
  final String? seed;
  @override
  final int index;
  @override
  final String? sk;
  @override
  final String fvk;
  @override
  final String uvk;
  @override
  final String? tsk;
  @override
  final bool saved;

  @override
  String toString() {
    return 'Backup(name: $name, seed: $seed, index: $index, sk: $sk, fvk: $fvk, uvk: $uvk, tsk: $tsk, saved: $saved)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BackupImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.seed, seed) || other.seed == seed) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.sk, sk) || other.sk == sk) &&
            (identical(other.fvk, fvk) || other.fvk == fvk) &&
            (identical(other.uvk, uvk) || other.uvk == uvk) &&
            (identical(other.tsk, tsk) || other.tsk == tsk) &&
            (identical(other.saved, saved) || other.saved == saved));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, seed, index, sk, fvk, uvk, tsk, saved);

  /// Create a copy of Backup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BackupImplCopyWith<_$BackupImpl> get copyWith =>
      __$$BackupImplCopyWithImpl<_$BackupImpl>(this, _$identity);
}

abstract class _Backup implements Backup {
  const factory _Backup(
      {required final String name,
      final String? seed,
      required final int index,
      final String? sk,
      required final String fvk,
      required final String uvk,
      final String? tsk,
      required final bool saved}) = _$BackupImpl;

  @override
  String get name;
  @override
  String? get seed;
  @override
  int get index;
  @override
  String? get sk;
  @override
  String get fvk;
  @override
  String get uvk;
  @override
  String? get tsk;
  @override
  bool get saved;

  /// Create a copy of Backup
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BackupImplCopyWith<_$BackupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BlockHeight {
  int get height => throw _privateConstructorUsedError;
  int get timestamp => throw _privateConstructorUsedError;

  /// Create a copy of BlockHeight
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlockHeightCopyWith<BlockHeight> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlockHeightCopyWith<$Res> {
  factory $BlockHeightCopyWith(
          BlockHeight value, $Res Function(BlockHeight) then) =
      _$BlockHeightCopyWithImpl<$Res, BlockHeight>;
  @useResult
  $Res call({int height, int timestamp});
}

/// @nodoc
class _$BlockHeightCopyWithImpl<$Res, $Val extends BlockHeight>
    implements $BlockHeightCopyWith<$Res> {
  _$BlockHeightCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlockHeight
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = null,
    Object? timestamp = null,
  }) {
    return _then(_value.copyWith(
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlockHeightImplCopyWith<$Res>
    implements $BlockHeightCopyWith<$Res> {
  factory _$$BlockHeightImplCopyWith(
          _$BlockHeightImpl value, $Res Function(_$BlockHeightImpl) then) =
      __$$BlockHeightImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int height, int timestamp});
}

/// @nodoc
class __$$BlockHeightImplCopyWithImpl<$Res>
    extends _$BlockHeightCopyWithImpl<$Res, _$BlockHeightImpl>
    implements _$$BlockHeightImplCopyWith<$Res> {
  __$$BlockHeightImplCopyWithImpl(
      _$BlockHeightImpl _value, $Res Function(_$BlockHeightImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlockHeight
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = null,
    Object? timestamp = null,
  }) {
    return _then(_$BlockHeightImpl(
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$BlockHeightImpl implements _BlockHeight {
  const _$BlockHeightImpl({required this.height, required this.timestamp});

  @override
  final int height;
  @override
  final int timestamp;

  @override
  String toString() {
    return 'BlockHeight(height: $height, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlockHeightImpl &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, height, timestamp);

  /// Create a copy of BlockHeight
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlockHeightImplCopyWith<_$BlockHeightImpl> get copyWith =>
      __$$BlockHeightImplCopyWithImpl<_$BlockHeightImpl>(this, _$identity);
}

abstract class _BlockHeight implements BlockHeight {
  const factory _BlockHeight(
      {required final int height,
      required final int timestamp}) = _$BlockHeightImpl;

  @override
  int get height;
  @override
  int get timestamp;

  /// Create a copy of BlockHeight
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlockHeightImplCopyWith<_$BlockHeightImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Contact {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;

  /// Create a copy of Contact
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContactCopyWith<Contact> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactCopyWith<$Res> {
  factory $ContactCopyWith(Contact value, $Res Function(Contact) then) =
      _$ContactCopyWithImpl<$Res, Contact>;
  @useResult
  $Res call({int id, String name, String address});
}

/// @nodoc
class _$ContactCopyWithImpl<$Res, $Val extends Contact>
    implements $ContactCopyWith<$Res> {
  _$ContactCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Contact
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? address = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContactImplCopyWith<$Res> implements $ContactCopyWith<$Res> {
  factory _$$ContactImplCopyWith(
          _$ContactImpl value, $Res Function(_$ContactImpl) then) =
      __$$ContactImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String address});
}

/// @nodoc
class __$$ContactImplCopyWithImpl<$Res>
    extends _$ContactCopyWithImpl<$Res, _$ContactImpl>
    implements _$$ContactImplCopyWith<$Res> {
  __$$ContactImplCopyWithImpl(
      _$ContactImpl _value, $Res Function(_$ContactImpl) _then)
      : super(_value, _then);

  /// Create a copy of Contact
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? address = null,
  }) {
    return _then(_$ContactImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ContactImpl implements _Contact {
  const _$ContactImpl(
      {required this.id, required this.name, required this.address});

  @override
  final int id;
  @override
  final String name;
  @override
  final String address;

  @override
  String toString() {
    return 'Contact(id: $id, name: $name, address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, address);

  /// Create a copy of Contact
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactImplCopyWith<_$ContactImpl> get copyWith =>
      __$$ContactImplCopyWithImpl<_$ContactImpl>(this, _$identity);
}

abstract class _Contact implements Contact {
  const factory _Contact(
      {required final int id,
      required final String name,
      required final String address}) = _$ContactImpl;

  @override
  int get id;
  @override
  String get name;
  @override
  String get address;

  /// Create a copy of Contact
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContactImplCopyWith<_$ContactImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Fee {
  int get scheme => throw _privateConstructorUsedError;
  BigInt get fee => throw _privateConstructorUsedError;

  /// Create a copy of Fee
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeeCopyWith<Fee> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeeCopyWith<$Res> {
  factory $FeeCopyWith(Fee value, $Res Function(Fee) then) =
      _$FeeCopyWithImpl<$Res, Fee>;
  @useResult
  $Res call({int scheme, BigInt fee});
}

/// @nodoc
class _$FeeCopyWithImpl<$Res, $Val extends Fee> implements $FeeCopyWith<$Res> {
  _$FeeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Fee
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scheme = null,
    Object? fee = null,
  }) {
    return _then(_value.copyWith(
      scheme: null == scheme
          ? _value.scheme
          : scheme // ignore: cast_nullable_to_non_nullable
              as int,
      fee: null == fee
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FeeImplCopyWith<$Res> implements $FeeCopyWith<$Res> {
  factory _$$FeeImplCopyWith(_$FeeImpl value, $Res Function(_$FeeImpl) then) =
      __$$FeeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int scheme, BigInt fee});
}

/// @nodoc
class __$$FeeImplCopyWithImpl<$Res> extends _$FeeCopyWithImpl<$Res, _$FeeImpl>
    implements _$$FeeImplCopyWith<$Res> {
  __$$FeeImplCopyWithImpl(_$FeeImpl _value, $Res Function(_$FeeImpl) _then)
      : super(_value, _then);

  /// Create a copy of Fee
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scheme = null,
    Object? fee = null,
  }) {
    return _then(_$FeeImpl(
      scheme: null == scheme
          ? _value.scheme
          : scheme // ignore: cast_nullable_to_non_nullable
              as int,
      fee: null == fee
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }
}

/// @nodoc

class _$FeeImpl implements _Fee {
  const _$FeeImpl({required this.scheme, required this.fee});

  @override
  final int scheme;
  @override
  final BigInt fee;

  @override
  String toString() {
    return 'Fee(scheme: $scheme, fee: $fee)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeeImpl &&
            (identical(other.scheme, scheme) || other.scheme == scheme) &&
            (identical(other.fee, fee) || other.fee == fee));
  }

  @override
  int get hashCode => Object.hash(runtimeType, scheme, fee);

  /// Create a copy of Fee
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeeImplCopyWith<_$FeeImpl> get copyWith =>
      __$$FeeImplCopyWithImpl<_$FeeImpl>(this, _$identity);
}

abstract class _Fee implements Fee {
  const factory _Fee({required final int scheme, required final BigInt fee}) =
      _$FeeImpl;

  @override
  int get scheme;
  @override
  BigInt get fee;

  /// Create a copy of Fee
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeeImplCopyWith<_$FeeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$KeyType {
  int get pools => throw _privateConstructorUsedError;
  bool get secret => throw _privateConstructorUsedError;
  bool get diversified => throw _privateConstructorUsedError;

  /// Create a copy of KeyType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $KeyTypeCopyWith<KeyType> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KeyTypeCopyWith<$Res> {
  factory $KeyTypeCopyWith(KeyType value, $Res Function(KeyType) then) =
      _$KeyTypeCopyWithImpl<$Res, KeyType>;
  @useResult
  $Res call({int pools, bool secret, bool diversified});
}

/// @nodoc
class _$KeyTypeCopyWithImpl<$Res, $Val extends KeyType>
    implements $KeyTypeCopyWith<$Res> {
  _$KeyTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of KeyType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pools = null,
    Object? secret = null,
    Object? diversified = null,
  }) {
    return _then(_value.copyWith(
      pools: null == pools
          ? _value.pools
          : pools // ignore: cast_nullable_to_non_nullable
              as int,
      secret: null == secret
          ? _value.secret
          : secret // ignore: cast_nullable_to_non_nullable
              as bool,
      diversified: null == diversified
          ? _value.diversified
          : diversified // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KeyTypeImplCopyWith<$Res> implements $KeyTypeCopyWith<$Res> {
  factory _$$KeyTypeImplCopyWith(
          _$KeyTypeImpl value, $Res Function(_$KeyTypeImpl) then) =
      __$$KeyTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int pools, bool secret, bool diversified});
}

/// @nodoc
class __$$KeyTypeImplCopyWithImpl<$Res>
    extends _$KeyTypeCopyWithImpl<$Res, _$KeyTypeImpl>
    implements _$$KeyTypeImplCopyWith<$Res> {
  __$$KeyTypeImplCopyWithImpl(
      _$KeyTypeImpl _value, $Res Function(_$KeyTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of KeyType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pools = null,
    Object? secret = null,
    Object? diversified = null,
  }) {
    return _then(_$KeyTypeImpl(
      pools: null == pools
          ? _value.pools
          : pools // ignore: cast_nullable_to_non_nullable
              as int,
      secret: null == secret
          ? _value.secret
          : secret // ignore: cast_nullable_to_non_nullable
              as bool,
      diversified: null == diversified
          ? _value.diversified
          : diversified // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$KeyTypeImpl implements _KeyType {
  const _$KeyTypeImpl(
      {required this.pools, required this.secret, required this.diversified});

  @override
  final int pools;
  @override
  final bool secret;
  @override
  final bool diversified;

  @override
  String toString() {
    return 'KeyType(pools: $pools, secret: $secret, diversified: $diversified)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KeyTypeImpl &&
            (identical(other.pools, pools) || other.pools == pools) &&
            (identical(other.secret, secret) || other.secret == secret) &&
            (identical(other.diversified, diversified) ||
                other.diversified == diversified));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pools, secret, diversified);

  /// Create a copy of KeyType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$KeyTypeImplCopyWith<_$KeyTypeImpl> get copyWith =>
      __$$KeyTypeImplCopyWithImpl<_$KeyTypeImpl>(this, _$identity);
}

abstract class _KeyType implements KeyType {
  const factory _KeyType(
      {required final int pools,
      required final bool secret,
      required final bool diversified}) = _$KeyTypeImpl;

  @override
  int get pools;
  @override
  bool get secret;
  @override
  bool get diversified;

  /// Create a copy of KeyType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$KeyTypeImplCopyWith<_$KeyTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ParsedMemo {
  bool get reply => throw _privateConstructorUsedError;
  String get subject => throw _privateConstructorUsedError;
  String get memo => throw _privateConstructorUsedError;

  /// Create a copy of ParsedMemo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ParsedMemoCopyWith<ParsedMemo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParsedMemoCopyWith<$Res> {
  factory $ParsedMemoCopyWith(
          ParsedMemo value, $Res Function(ParsedMemo) then) =
      _$ParsedMemoCopyWithImpl<$Res, ParsedMemo>;
  @useResult
  $Res call({bool reply, String subject, String memo});
}

/// @nodoc
class _$ParsedMemoCopyWithImpl<$Res, $Val extends ParsedMemo>
    implements $ParsedMemoCopyWith<$Res> {
  _$ParsedMemoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ParsedMemo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reply = null,
    Object? subject = null,
    Object? memo = null,
  }) {
    return _then(_value.copyWith(
      reply: null == reply
          ? _value.reply
          : reply // ignore: cast_nullable_to_non_nullable
              as bool,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      memo: null == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ParsedMemoImplCopyWith<$Res>
    implements $ParsedMemoCopyWith<$Res> {
  factory _$$ParsedMemoImplCopyWith(
          _$ParsedMemoImpl value, $Res Function(_$ParsedMemoImpl) then) =
      __$$ParsedMemoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool reply, String subject, String memo});
}

/// @nodoc
class __$$ParsedMemoImplCopyWithImpl<$Res>
    extends _$ParsedMemoCopyWithImpl<$Res, _$ParsedMemoImpl>
    implements _$$ParsedMemoImplCopyWith<$Res> {
  __$$ParsedMemoImplCopyWithImpl(
      _$ParsedMemoImpl _value, $Res Function(_$ParsedMemoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ParsedMemo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reply = null,
    Object? subject = null,
    Object? memo = null,
  }) {
    return _then(_$ParsedMemoImpl(
      reply: null == reply
          ? _value.reply
          : reply // ignore: cast_nullable_to_non_nullable
              as bool,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      memo: null == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ParsedMemoImpl implements _ParsedMemo {
  const _$ParsedMemoImpl(
      {required this.reply, required this.subject, required this.memo});

  @override
  final bool reply;
  @override
  final String subject;
  @override
  final String memo;

  @override
  String toString() {
    return 'ParsedMemo(reply: $reply, subject: $subject, memo: $memo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParsedMemoImpl &&
            (identical(other.reply, reply) || other.reply == reply) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.memo, memo) || other.memo == memo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reply, subject, memo);

  /// Create a copy of ParsedMemo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ParsedMemoImplCopyWith<_$ParsedMemoImpl> get copyWith =>
      __$$ParsedMemoImplCopyWithImpl<_$ParsedMemoImpl>(this, _$identity);
}

abstract class _ParsedMemo implements ParsedMemo {
  const factory _ParsedMemo(
      {required final bool reply,
      required final String subject,
      required final String memo}) = _$ParsedMemoImpl;

  @override
  bool get reply;
  @override
  String get subject;
  @override
  String get memo;

  /// Create a copy of ParsedMemo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ParsedMemoImplCopyWith<_$ParsedMemoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PaymentURI {
  String get address => throw _privateConstructorUsedError;
  BigInt get amount => throw _privateConstructorUsedError;
  String get memo => throw _privateConstructorUsedError;

  /// Create a copy of PaymentURI
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentURICopyWith<PaymentURI> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentURICopyWith<$Res> {
  factory $PaymentURICopyWith(
          PaymentURI value, $Res Function(PaymentURI) then) =
      _$PaymentURICopyWithImpl<$Res, PaymentURI>;
  @useResult
  $Res call({String address, BigInt amount, String memo});
}

/// @nodoc
class _$PaymentURICopyWithImpl<$Res, $Val extends PaymentURI>
    implements $PaymentURICopyWith<$Res> {
  _$PaymentURICopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentURI
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? amount = null,
    Object? memo = null,
  }) {
    return _then(_value.copyWith(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as BigInt,
      memo: null == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentURIImplCopyWith<$Res>
    implements $PaymentURICopyWith<$Res> {
  factory _$$PaymentURIImplCopyWith(
          _$PaymentURIImpl value, $Res Function(_$PaymentURIImpl) then) =
      __$$PaymentURIImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String address, BigInt amount, String memo});
}

/// @nodoc
class __$$PaymentURIImplCopyWithImpl<$Res>
    extends _$PaymentURICopyWithImpl<$Res, _$PaymentURIImpl>
    implements _$$PaymentURIImplCopyWith<$Res> {
  __$$PaymentURIImplCopyWithImpl(
      _$PaymentURIImpl _value, $Res Function(_$PaymentURIImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentURI
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? amount = null,
    Object? memo = null,
  }) {
    return _then(_$PaymentURIImpl(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as BigInt,
      memo: null == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PaymentURIImpl implements _PaymentURI {
  const _$PaymentURIImpl(
      {required this.address, required this.amount, required this.memo});

  @override
  final String address;
  @override
  final BigInt amount;
  @override
  final String memo;

  @override
  String toString() {
    return 'PaymentURI(address: $address, amount: $amount, memo: $memo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentURIImpl &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.memo, memo) || other.memo == memo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address, amount, memo);

  /// Create a copy of PaymentURI
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentURIImplCopyWith<_$PaymentURIImpl> get copyWith =>
      __$$PaymentURIImplCopyWithImpl<_$PaymentURIImpl>(this, _$identity);
}

abstract class _PaymentURI implements PaymentURI {
  const factory _PaymentURI(
      {required final String address,
      required final BigInt amount,
      required final String memo}) = _$PaymentURIImpl;

  @override
  String get address;
  @override
  BigInt get amount;
  @override
  String get memo;

  /// Create a copy of PaymentURI
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentURIImplCopyWith<_$PaymentURIImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PoolBalance {
  BigInt get transparent => throw _privateConstructorUsedError;
  BigInt get sapling => throw _privateConstructorUsedError;
  BigInt get orchard => throw _privateConstructorUsedError;

  /// Create a copy of PoolBalance
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PoolBalanceCopyWith<PoolBalance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PoolBalanceCopyWith<$Res> {
  factory $PoolBalanceCopyWith(
          PoolBalance value, $Res Function(PoolBalance) then) =
      _$PoolBalanceCopyWithImpl<$Res, PoolBalance>;
  @useResult
  $Res call({BigInt transparent, BigInt sapling, BigInt orchard});
}

/// @nodoc
class _$PoolBalanceCopyWithImpl<$Res, $Val extends PoolBalance>
    implements $PoolBalanceCopyWith<$Res> {
  _$PoolBalanceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PoolBalance
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transparent = null,
    Object? sapling = null,
    Object? orchard = null,
  }) {
    return _then(_value.copyWith(
      transparent: null == transparent
          ? _value.transparent
          : transparent // ignore: cast_nullable_to_non_nullable
              as BigInt,
      sapling: null == sapling
          ? _value.sapling
          : sapling // ignore: cast_nullable_to_non_nullable
              as BigInt,
      orchard: null == orchard
          ? _value.orchard
          : orchard // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PoolBalanceImplCopyWith<$Res>
    implements $PoolBalanceCopyWith<$Res> {
  factory _$$PoolBalanceImplCopyWith(
          _$PoolBalanceImpl value, $Res Function(_$PoolBalanceImpl) then) =
      __$$PoolBalanceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BigInt transparent, BigInt sapling, BigInt orchard});
}

/// @nodoc
class __$$PoolBalanceImplCopyWithImpl<$Res>
    extends _$PoolBalanceCopyWithImpl<$Res, _$PoolBalanceImpl>
    implements _$$PoolBalanceImplCopyWith<$Res> {
  __$$PoolBalanceImplCopyWithImpl(
      _$PoolBalanceImpl _value, $Res Function(_$PoolBalanceImpl) _then)
      : super(_value, _then);

  /// Create a copy of PoolBalance
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transparent = null,
    Object? sapling = null,
    Object? orchard = null,
  }) {
    return _then(_$PoolBalanceImpl(
      transparent: null == transparent
          ? _value.transparent
          : transparent // ignore: cast_nullable_to_non_nullable
              as BigInt,
      sapling: null == sapling
          ? _value.sapling
          : sapling // ignore: cast_nullable_to_non_nullable
              as BigInt,
      orchard: null == orchard
          ? _value.orchard
          : orchard // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }
}

/// @nodoc

class _$PoolBalanceImpl implements _PoolBalance {
  const _$PoolBalanceImpl(
      {required this.transparent,
      required this.sapling,
      required this.orchard});

  @override
  final BigInt transparent;
  @override
  final BigInt sapling;
  @override
  final BigInt orchard;

  @override
  String toString() {
    return 'PoolBalance(transparent: $transparent, sapling: $sapling, orchard: $orchard)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PoolBalanceImpl &&
            (identical(other.transparent, transparent) ||
                other.transparent == transparent) &&
            (identical(other.sapling, sapling) || other.sapling == sapling) &&
            (identical(other.orchard, orchard) || other.orchard == orchard));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transparent, sapling, orchard);

  /// Create a copy of PoolBalance
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PoolBalanceImplCopyWith<_$PoolBalanceImpl> get copyWith =>
      __$$PoolBalanceImplCopyWithImpl<_$PoolBalanceImpl>(this, _$identity);
}

abstract class _PoolBalance implements PoolBalance {
  const factory _PoolBalance(
      {required final BigInt transparent,
      required final BigInt sapling,
      required final BigInt orchard}) = _$PoolBalanceImpl;

  @override
  BigInt get transparent;
  @override
  BigInt get sapling;
  @override
  BigInt get orchard;

  /// Create a copy of PoolBalance
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PoolBalanceImplCopyWith<_$PoolBalanceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Progress {
  int get timestamp => throw _privateConstructorUsedError;
  int get trialDecryptions => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  int get downloaded => throw _privateConstructorUsedError;

  /// Create a copy of Progress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProgressCopyWith<Progress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgressCopyWith<$Res> {
  factory $ProgressCopyWith(Progress value, $Res Function(Progress) then) =
      _$ProgressCopyWithImpl<$Res, Progress>;
  @useResult
  $Res call({int timestamp, int trialDecryptions, int height, int downloaded});
}

/// @nodoc
class _$ProgressCopyWithImpl<$Res, $Val extends Progress>
    implements $ProgressCopyWith<$Res> {
  _$ProgressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Progress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? trialDecryptions = null,
    Object? height = null,
    Object? downloaded = null,
  }) {
    return _then(_value.copyWith(
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      trialDecryptions: null == trialDecryptions
          ? _value.trialDecryptions
          : trialDecryptions // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      downloaded: null == downloaded
          ? _value.downloaded
          : downloaded // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProgressImplCopyWith<$Res>
    implements $ProgressCopyWith<$Res> {
  factory _$$ProgressImplCopyWith(
          _$ProgressImpl value, $Res Function(_$ProgressImpl) then) =
      __$$ProgressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int timestamp, int trialDecryptions, int height, int downloaded});
}

/// @nodoc
class __$$ProgressImplCopyWithImpl<$Res>
    extends _$ProgressCopyWithImpl<$Res, _$ProgressImpl>
    implements _$$ProgressImplCopyWith<$Res> {
  __$$ProgressImplCopyWithImpl(
      _$ProgressImpl _value, $Res Function(_$ProgressImpl) _then)
      : super(_value, _then);

  /// Create a copy of Progress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? trialDecryptions = null,
    Object? height = null,
    Object? downloaded = null,
  }) {
    return _then(_$ProgressImpl(
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      trialDecryptions: null == trialDecryptions
          ? _value.trialDecryptions
          : trialDecryptions // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      downloaded: null == downloaded
          ? _value.downloaded
          : downloaded // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ProgressImpl implements _Progress {
  const _$ProgressImpl(
      {required this.timestamp,
      required this.trialDecryptions,
      required this.height,
      required this.downloaded});

  @override
  final int timestamp;
  @override
  final int trialDecryptions;
  @override
  final int height;
  @override
  final int downloaded;

  @override
  String toString() {
    return 'Progress(timestamp: $timestamp, trialDecryptions: $trialDecryptions, height: $height, downloaded: $downloaded)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgressImpl &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.trialDecryptions, trialDecryptions) ||
                other.trialDecryptions == trialDecryptions) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.downloaded, downloaded) ||
                other.downloaded == downloaded));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, timestamp, trialDecryptions, height, downloaded);

  /// Create a copy of Progress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgressImplCopyWith<_$ProgressImpl> get copyWith =>
      __$$ProgressImplCopyWithImpl<_$ProgressImpl>(this, _$identity);
}

abstract class _Progress implements Progress {
  const factory _Progress(
      {required final int timestamp,
      required final int trialDecryptions,
      required final int height,
      required final int downloaded}) = _$ProgressImpl;

  @override
  int get timestamp;
  @override
  int get trialDecryptions;
  @override
  int get height;
  @override
  int get downloaded;

  /// Create a copy of Progress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProgressImplCopyWith<_$ProgressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Quote {
  int get timestamp => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;

  /// Create a copy of Quote
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuoteCopyWith<Quote> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuoteCopyWith<$Res> {
  factory $QuoteCopyWith(Quote value, $Res Function(Quote) then) =
      _$QuoteCopyWithImpl<$Res, Quote>;
  @useResult
  $Res call({int timestamp, double price});
}

/// @nodoc
class _$QuoteCopyWithImpl<$Res, $Val extends Quote>
    implements $QuoteCopyWith<$Res> {
  _$QuoteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Quote
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuoteImplCopyWith<$Res> implements $QuoteCopyWith<$Res> {
  factory _$$QuoteImplCopyWith(
          _$QuoteImpl value, $Res Function(_$QuoteImpl) then) =
      __$$QuoteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int timestamp, double price});
}

/// @nodoc
class __$$QuoteImplCopyWithImpl<$Res>
    extends _$QuoteCopyWithImpl<$Res, _$QuoteImpl>
    implements _$$QuoteImplCopyWith<$Res> {
  __$$QuoteImplCopyWithImpl(
      _$QuoteImpl _value, $Res Function(_$QuoteImpl) _then)
      : super(_value, _then);

  /// Create a copy of Quote
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? price = null,
  }) {
    return _then(_$QuoteImpl(
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$QuoteImpl implements _Quote {
  const _$QuoteImpl({required this.timestamp, required this.price});

  @override
  final int timestamp;
  @override
  final double price;

  @override
  String toString() {
    return 'Quote(timestamp: $timestamp, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuoteImpl &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.price, price) || other.price == price));
  }

  @override
  int get hashCode => Object.hash(runtimeType, timestamp, price);

  /// Create a copy of Quote
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuoteImplCopyWith<_$QuoteImpl> get copyWith =>
      __$$QuoteImplCopyWithImpl<_$QuoteImpl>(this, _$identity);
}

abstract class _Quote implements Quote {
  const factory _Quote(
      {required final int timestamp,
      required final double price}) = _$QuoteImpl;

  @override
  int get timestamp;
  @override
  double get price;

  /// Create a copy of Quote
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuoteImplCopyWith<_$QuoteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RaptorQResult {
  int get progress => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  Uint8List get data => throw _privateConstructorUsedError;

  /// Create a copy of RaptorQResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RaptorQResultCopyWith<RaptorQResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RaptorQResultCopyWith<$Res> {
  factory $RaptorQResultCopyWith(
          RaptorQResult value, $Res Function(RaptorQResult) then) =
      _$RaptorQResultCopyWithImpl<$Res, RaptorQResult>;
  @useResult
  $Res call({int progress, int total, Uint8List data});
}

/// @nodoc
class _$RaptorQResultCopyWithImpl<$Res, $Val extends RaptorQResult>
    implements $RaptorQResultCopyWith<$Res> {
  _$RaptorQResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RaptorQResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? progress = null,
    Object? total = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RaptorQResultImplCopyWith<$Res>
    implements $RaptorQResultCopyWith<$Res> {
  factory _$$RaptorQResultImplCopyWith(
          _$RaptorQResultImpl value, $Res Function(_$RaptorQResultImpl) then) =
      __$$RaptorQResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int progress, int total, Uint8List data});
}

/// @nodoc
class __$$RaptorQResultImplCopyWithImpl<$Res>
    extends _$RaptorQResultCopyWithImpl<$Res, _$RaptorQResultImpl>
    implements _$$RaptorQResultImplCopyWith<$Res> {
  __$$RaptorQResultImplCopyWithImpl(
      _$RaptorQResultImpl _value, $Res Function(_$RaptorQResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of RaptorQResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? progress = null,
    Object? total = null,
    Object? data = null,
  }) {
    return _then(_$RaptorQResultImpl(
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc

class _$RaptorQResultImpl implements _RaptorQResult {
  const _$RaptorQResultImpl(
      {required this.progress, required this.total, required this.data});

  @override
  final int progress;
  @override
  final int total;
  @override
  final Uint8List data;

  @override
  String toString() {
    return 'RaptorQResult(progress: $progress, total: $total, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RaptorQResultImpl &&
            (identical(other.progress, progress) ||
                other.progress == progress) &&
            (identical(other.total, total) || other.total == total) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, progress, total, const DeepCollectionEquality().hash(data));

  /// Create a copy of RaptorQResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RaptorQResultImplCopyWith<_$RaptorQResultImpl> get copyWith =>
      __$$RaptorQResultImplCopyWithImpl<_$RaptorQResultImpl>(this, _$identity);
}

abstract class _RaptorQResult implements RaptorQResult {
  const factory _RaptorQResult(
      {required final int progress,
      required final int total,
      required final Uint8List data}) = _$RaptorQResultImpl;

  @override
  int get progress;
  @override
  int get total;
  @override
  Uint8List get data;

  /// Create a copy of RaptorQResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RaptorQResultImplCopyWith<_$RaptorQResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Recipient {
  String get address => throw _privateConstructorUsedError;
  int get pools => throw _privateConstructorUsedError;
  BigInt get amount => throw _privateConstructorUsedError;
  ParsedMemo get message => throw _privateConstructorUsedError;

  /// Create a copy of Recipient
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecipientCopyWith<Recipient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipientCopyWith<$Res> {
  factory $RecipientCopyWith(Recipient value, $Res Function(Recipient) then) =
      _$RecipientCopyWithImpl<$Res, Recipient>;
  @useResult
  $Res call({String address, int pools, BigInt amount, ParsedMemo message});

  $ParsedMemoCopyWith<$Res> get message;
}

/// @nodoc
class _$RecipientCopyWithImpl<$Res, $Val extends Recipient>
    implements $RecipientCopyWith<$Res> {
  _$RecipientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Recipient
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? pools = null,
    Object? amount = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      pools: null == pools
          ? _value.pools
          : pools // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as BigInt,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as ParsedMemo,
    ) as $Val);
  }

  /// Create a copy of Recipient
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParsedMemoCopyWith<$Res> get message {
    return $ParsedMemoCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RecipientImplCopyWith<$Res>
    implements $RecipientCopyWith<$Res> {
  factory _$$RecipientImplCopyWith(
          _$RecipientImpl value, $Res Function(_$RecipientImpl) then) =
      __$$RecipientImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String address, int pools, BigInt amount, ParsedMemo message});

  @override
  $ParsedMemoCopyWith<$Res> get message;
}

/// @nodoc
class __$$RecipientImplCopyWithImpl<$Res>
    extends _$RecipientCopyWithImpl<$Res, _$RecipientImpl>
    implements _$$RecipientImplCopyWith<$Res> {
  __$$RecipientImplCopyWithImpl(
      _$RecipientImpl _value, $Res Function(_$RecipientImpl) _then)
      : super(_value, _then);

  /// Create a copy of Recipient
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? pools = null,
    Object? amount = null,
    Object? message = null,
  }) {
    return _then(_$RecipientImpl(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      pools: null == pools
          ? _value.pools
          : pools // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as BigInt,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as ParsedMemo,
    ));
  }
}

/// @nodoc

class _$RecipientImpl implements _Recipient {
  const _$RecipientImpl(
      {required this.address,
      required this.pools,
      required this.amount,
      required this.message});

  @override
  final String address;
  @override
  final int pools;
  @override
  final BigInt amount;
  @override
  final ParsedMemo message;

  @override
  String toString() {
    return 'Recipient(address: $address, pools: $pools, amount: $amount, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipientImpl &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.pools, pools) || other.pools == pools) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address, pools, amount, message);

  /// Create a copy of Recipient
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipientImplCopyWith<_$RecipientImpl> get copyWith =>
      __$$RecipientImplCopyWithImpl<_$RecipientImpl>(this, _$identity);
}

abstract class _Recipient implements Recipient {
  const factory _Recipient(
      {required final String address,
      required final int pools,
      required final BigInt amount,
      required final ParsedMemo message}) = _$RecipientImpl;

  @override
  String get address;
  @override
  int get pools;
  @override
  BigInt get amount;
  @override
  ParsedMemo get message;

  /// Create a copy of Recipient
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecipientImplCopyWith<_$RecipientImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SeedInfo {
  String get seed => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;

  /// Create a copy of SeedInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SeedInfoCopyWith<SeedInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeedInfoCopyWith<$Res> {
  factory $SeedInfoCopyWith(SeedInfo value, $Res Function(SeedInfo) then) =
      _$SeedInfoCopyWithImpl<$Res, SeedInfo>;
  @useResult
  $Res call({String seed, int index});
}

/// @nodoc
class _$SeedInfoCopyWithImpl<$Res, $Val extends SeedInfo>
    implements $SeedInfoCopyWith<$Res> {
  _$SeedInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SeedInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seed = null,
    Object? index = null,
  }) {
    return _then(_value.copyWith(
      seed: null == seed
          ? _value.seed
          : seed // ignore: cast_nullable_to_non_nullable
              as String,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SeedInfoImplCopyWith<$Res>
    implements $SeedInfoCopyWith<$Res> {
  factory _$$SeedInfoImplCopyWith(
          _$SeedInfoImpl value, $Res Function(_$SeedInfoImpl) then) =
      __$$SeedInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String seed, int index});
}

/// @nodoc
class __$$SeedInfoImplCopyWithImpl<$Res>
    extends _$SeedInfoCopyWithImpl<$Res, _$SeedInfoImpl>
    implements _$$SeedInfoImplCopyWith<$Res> {
  __$$SeedInfoImplCopyWithImpl(
      _$SeedInfoImpl _value, $Res Function(_$SeedInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of SeedInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seed = null,
    Object? index = null,
  }) {
    return _then(_$SeedInfoImpl(
      seed: null == seed
          ? _value.seed
          : seed // ignore: cast_nullable_to_non_nullable
              as String,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SeedInfoImpl implements _SeedInfo {
  const _$SeedInfoImpl({required this.seed, required this.index});

  @override
  final String seed;
  @override
  final int index;

  @override
  String toString() {
    return 'SeedInfo(seed: $seed, index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeedInfoImpl &&
            (identical(other.seed, seed) || other.seed == seed) &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, seed, index);

  /// Create a copy of SeedInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SeedInfoImplCopyWith<_$SeedInfoImpl> get copyWith =>
      __$$SeedInfoImplCopyWithImpl<_$SeedInfoImpl>(this, _$identity);
}

abstract class _SeedInfo implements SeedInfo {
  const factory _SeedInfo(
      {required final String seed, required final int index}) = _$SeedInfoImpl;

  @override
  String get seed;
  @override
  int get index;

  /// Create a copy of SeedInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SeedInfoImplCopyWith<_$SeedInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SendContext {
  String get address => throw _privateConstructorUsedError;
  int get pools => throw _privateConstructorUsedError;
  BigInt get amount => throw _privateConstructorUsedError;
  bool get receiverFee => throw _privateConstructorUsedError;
  ParsedMemo get memo => throw _privateConstructorUsedError;

  /// Create a copy of SendContext
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SendContextCopyWith<SendContext> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendContextCopyWith<$Res> {
  factory $SendContextCopyWith(
          SendContext value, $Res Function(SendContext) then) =
      _$SendContextCopyWithImpl<$Res, SendContext>;
  @useResult
  $Res call(
      {String address,
      int pools,
      BigInt amount,
      bool receiverFee,
      ParsedMemo memo});

  $ParsedMemoCopyWith<$Res> get memo;
}

/// @nodoc
class _$SendContextCopyWithImpl<$Res, $Val extends SendContext>
    implements $SendContextCopyWith<$Res> {
  _$SendContextCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SendContext
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? pools = null,
    Object? amount = null,
    Object? receiverFee = null,
    Object? memo = null,
  }) {
    return _then(_value.copyWith(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      pools: null == pools
          ? _value.pools
          : pools // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as BigInt,
      receiverFee: null == receiverFee
          ? _value.receiverFee
          : receiverFee // ignore: cast_nullable_to_non_nullable
              as bool,
      memo: null == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as ParsedMemo,
    ) as $Val);
  }

  /// Create a copy of SendContext
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParsedMemoCopyWith<$Res> get memo {
    return $ParsedMemoCopyWith<$Res>(_value.memo, (value) {
      return _then(_value.copyWith(memo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SendContextImplCopyWith<$Res>
    implements $SendContextCopyWith<$Res> {
  factory _$$SendContextImplCopyWith(
          _$SendContextImpl value, $Res Function(_$SendContextImpl) then) =
      __$$SendContextImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String address,
      int pools,
      BigInt amount,
      bool receiverFee,
      ParsedMemo memo});

  @override
  $ParsedMemoCopyWith<$Res> get memo;
}

/// @nodoc
class __$$SendContextImplCopyWithImpl<$Res>
    extends _$SendContextCopyWithImpl<$Res, _$SendContextImpl>
    implements _$$SendContextImplCopyWith<$Res> {
  __$$SendContextImplCopyWithImpl(
      _$SendContextImpl _value, $Res Function(_$SendContextImpl) _then)
      : super(_value, _then);

  /// Create a copy of SendContext
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? pools = null,
    Object? amount = null,
    Object? receiverFee = null,
    Object? memo = null,
  }) {
    return _then(_$SendContextImpl(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      pools: null == pools
          ? _value.pools
          : pools // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as BigInt,
      receiverFee: null == receiverFee
          ? _value.receiverFee
          : receiverFee // ignore: cast_nullable_to_non_nullable
              as bool,
      memo: null == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as ParsedMemo,
    ));
  }
}

/// @nodoc

class _$SendContextImpl implements _SendContext {
  const _$SendContextImpl(
      {required this.address,
      required this.pools,
      required this.amount,
      required this.receiverFee,
      required this.memo});

  @override
  final String address;
  @override
  final int pools;
  @override
  final BigInt amount;
  @override
  final bool receiverFee;
  @override
  final ParsedMemo memo;

  @override
  String toString() {
    return 'SendContext(address: $address, pools: $pools, amount: $amount, receiverFee: $receiverFee, memo: $memo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendContextImpl &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.pools, pools) || other.pools == pools) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.receiverFee, receiverFee) ||
                other.receiverFee == receiverFee) &&
            (identical(other.memo, memo) || other.memo == memo));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, address, pools, amount, receiverFee, memo);

  /// Create a copy of SendContext
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendContextImplCopyWith<_$SendContextImpl> get copyWith =>
      __$$SendContextImplCopyWithImpl<_$SendContextImpl>(this, _$identity);
}

abstract class _SendContext implements SendContext {
  const factory _SendContext(
      {required final String address,
      required final int pools,
      required final BigInt amount,
      required final bool receiverFee,
      required final ParsedMemo memo}) = _$SendContextImpl;

  @override
  String get address;
  @override
  int get pools;
  @override
  BigInt get amount;
  @override
  bool get receiverFee;
  @override
  ParsedMemo get memo;

  /// Create a copy of SendContext
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendContextImplCopyWith<_$SendContextImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ShieldedNote {
  int get id => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  BigInt get value => throw _privateConstructorUsedError;
  int get timestamp => throw _privateConstructorUsedError;
  bool get orchard => throw _privateConstructorUsedError;
  bool get excluded => throw _privateConstructorUsedError;
  bool get spent => throw _privateConstructorUsedError;

  /// Create a copy of ShieldedNote
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShieldedNoteCopyWith<ShieldedNote> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShieldedNoteCopyWith<$Res> {
  factory $ShieldedNoteCopyWith(
          ShieldedNote value, $Res Function(ShieldedNote) then) =
      _$ShieldedNoteCopyWithImpl<$Res, ShieldedNote>;
  @useResult
  $Res call(
      {int id,
      int height,
      BigInt value,
      int timestamp,
      bool orchard,
      bool excluded,
      bool spent});
}

/// @nodoc
class _$ShieldedNoteCopyWithImpl<$Res, $Val extends ShieldedNote>
    implements $ShieldedNoteCopyWith<$Res> {
  _$ShieldedNoteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShieldedNote
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? height = null,
    Object? value = null,
    Object? timestamp = null,
    Object? orchard = null,
    Object? excluded = null,
    Object? spent = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as BigInt,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      orchard: null == orchard
          ? _value.orchard
          : orchard // ignore: cast_nullable_to_non_nullable
              as bool,
      excluded: null == excluded
          ? _value.excluded
          : excluded // ignore: cast_nullable_to_non_nullable
              as bool,
      spent: null == spent
          ? _value.spent
          : spent // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShieldedNoteImplCopyWith<$Res>
    implements $ShieldedNoteCopyWith<$Res> {
  factory _$$ShieldedNoteImplCopyWith(
          _$ShieldedNoteImpl value, $Res Function(_$ShieldedNoteImpl) then) =
      __$$ShieldedNoteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int height,
      BigInt value,
      int timestamp,
      bool orchard,
      bool excluded,
      bool spent});
}

/// @nodoc
class __$$ShieldedNoteImplCopyWithImpl<$Res>
    extends _$ShieldedNoteCopyWithImpl<$Res, _$ShieldedNoteImpl>
    implements _$$ShieldedNoteImplCopyWith<$Res> {
  __$$ShieldedNoteImplCopyWithImpl(
      _$ShieldedNoteImpl _value, $Res Function(_$ShieldedNoteImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShieldedNote
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? height = null,
    Object? value = null,
    Object? timestamp = null,
    Object? orchard = null,
    Object? excluded = null,
    Object? spent = null,
  }) {
    return _then(_$ShieldedNoteImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as BigInt,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      orchard: null == orchard
          ? _value.orchard
          : orchard // ignore: cast_nullable_to_non_nullable
              as bool,
      excluded: null == excluded
          ? _value.excluded
          : excluded // ignore: cast_nullable_to_non_nullable
              as bool,
      spent: null == spent
          ? _value.spent
          : spent // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ShieldedNoteImpl implements _ShieldedNote {
  const _$ShieldedNoteImpl(
      {required this.id,
      required this.height,
      required this.value,
      required this.timestamp,
      required this.orchard,
      required this.excluded,
      required this.spent});

  @override
  final int id;
  @override
  final int height;
  @override
  final BigInt value;
  @override
  final int timestamp;
  @override
  final bool orchard;
  @override
  final bool excluded;
  @override
  final bool spent;

  @override
  String toString() {
    return 'ShieldedNote(id: $id, height: $height, value: $value, timestamp: $timestamp, orchard: $orchard, excluded: $excluded, spent: $spent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShieldedNoteImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.orchard, orchard) || other.orchard == orchard) &&
            (identical(other.excluded, excluded) ||
                other.excluded == excluded) &&
            (identical(other.spent, spent) || other.spent == spent));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, height, value, timestamp, orchard, excluded, spent);

  /// Create a copy of ShieldedNote
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShieldedNoteImplCopyWith<_$ShieldedNoteImpl> get copyWith =>
      __$$ShieldedNoteImplCopyWithImpl<_$ShieldedNoteImpl>(this, _$identity);
}

abstract class _ShieldedNote implements ShieldedNote {
  const factory _ShieldedNote(
      {required final int id,
      required final int height,
      required final BigInt value,
      required final int timestamp,
      required final bool orchard,
      required final bool excluded,
      required final bool spent}) = _$ShieldedNoteImpl;

  @override
  int get id;
  @override
  int get height;
  @override
  BigInt get value;
  @override
  int get timestamp;
  @override
  bool get orchard;
  @override
  bool get excluded;
  @override
  bool get spent;

  /// Create a copy of ShieldedNote
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShieldedNoteImplCopyWith<_$ShieldedNoteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Spending {
  String get recipient => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;

  /// Create a copy of Spending
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SpendingCopyWith<Spending> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpendingCopyWith<$Res> {
  factory $SpendingCopyWith(Spending value, $Res Function(Spending) then) =
      _$SpendingCopyWithImpl<$Res, Spending>;
  @useResult
  $Res call({String recipient, int amount});
}

/// @nodoc
class _$SpendingCopyWithImpl<$Res, $Val extends Spending>
    implements $SpendingCopyWith<$Res> {
  _$SpendingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Spending
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipient = null,
    Object? amount = null,
  }) {
    return _then(_value.copyWith(
      recipient: null == recipient
          ? _value.recipient
          : recipient // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpendingImplCopyWith<$Res>
    implements $SpendingCopyWith<$Res> {
  factory _$$SpendingImplCopyWith(
          _$SpendingImpl value, $Res Function(_$SpendingImpl) then) =
      __$$SpendingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String recipient, int amount});
}

/// @nodoc
class __$$SpendingImplCopyWithImpl<$Res>
    extends _$SpendingCopyWithImpl<$Res, _$SpendingImpl>
    implements _$$SpendingImplCopyWith<$Res> {
  __$$SpendingImplCopyWithImpl(
      _$SpendingImpl _value, $Res Function(_$SpendingImpl) _then)
      : super(_value, _then);

  /// Create a copy of Spending
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipient = null,
    Object? amount = null,
  }) {
    return _then(_$SpendingImpl(
      recipient: null == recipient
          ? _value.recipient
          : recipient // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SpendingImpl implements _Spending {
  const _$SpendingImpl({required this.recipient, required this.amount});

  @override
  final String recipient;
  @override
  final int amount;

  @override
  String toString() {
    return 'Spending(recipient: $recipient, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpendingImpl &&
            (identical(other.recipient, recipient) ||
                other.recipient == recipient) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, recipient, amount);

  /// Create a copy of Spending
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpendingImplCopyWith<_$SpendingImpl> get copyWith =>
      __$$SpendingImplCopyWithImpl<_$SpendingImpl>(this, _$identity);
}

abstract class _Spending implements Spending {
  const factory _Spending(
      {required final String recipient,
      required final int amount}) = _$SpendingImpl;

  @override
  String get recipient;
  @override
  int get amount;

  /// Create a copy of Spending
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpendingImplCopyWith<_$SpendingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SwapAmount {
  String get amount => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;

  /// Create a copy of SwapAmount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SwapAmountCopyWith<SwapAmount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwapAmountCopyWith<$Res> {
  factory $SwapAmountCopyWith(
          SwapAmount value, $Res Function(SwapAmount) then) =
      _$SwapAmountCopyWithImpl<$Res, SwapAmount>;
  @useResult
  $Res call({String amount, String currency});
}

/// @nodoc
class _$SwapAmountCopyWithImpl<$Res, $Val extends SwapAmount>
    implements $SwapAmountCopyWith<$Res> {
  _$SwapAmountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SwapAmount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? currency = null,
  }) {
    return _then(_value.copyWith(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SwapAmountImplCopyWith<$Res>
    implements $SwapAmountCopyWith<$Res> {
  factory _$$SwapAmountImplCopyWith(
          _$SwapAmountImpl value, $Res Function(_$SwapAmountImpl) then) =
      __$$SwapAmountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String amount, String currency});
}

/// @nodoc
class __$$SwapAmountImplCopyWithImpl<$Res>
    extends _$SwapAmountCopyWithImpl<$Res, _$SwapAmountImpl>
    implements _$$SwapAmountImplCopyWith<$Res> {
  __$$SwapAmountImplCopyWithImpl(
      _$SwapAmountImpl _value, $Res Function(_$SwapAmountImpl) _then)
      : super(_value, _then);

  /// Create a copy of SwapAmount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? currency = null,
  }) {
    return _then(_$SwapAmountImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SwapAmountImpl implements _SwapAmount {
  const _$SwapAmountImpl({required this.amount, required this.currency});

  @override
  final String amount;
  @override
  final String currency;

  @override
  String toString() {
    return 'SwapAmount(amount: $amount, currency: $currency)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SwapAmountImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amount, currency);

  /// Create a copy of SwapAmount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SwapAmountImplCopyWith<_$SwapAmountImpl> get copyWith =>
      __$$SwapAmountImplCopyWithImpl<_$SwapAmountImpl>(this, _$identity);
}

abstract class _SwapAmount implements SwapAmount {
  const factory _SwapAmount(
      {required final String amount,
      required final String currency}) = _$SwapAmountImpl;

  @override
  String get amount;
  @override
  String get currency;

  /// Create a copy of SwapAmount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SwapAmountImplCopyWith<_$SwapAmountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SwapQuote {
  String get estimatedAmount => throw _privateConstructorUsedError;
  String get rateId => throw _privateConstructorUsedError;
  String get validUntil => throw _privateConstructorUsedError;

  /// Create a copy of SwapQuote
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SwapQuoteCopyWith<SwapQuote> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwapQuoteCopyWith<$Res> {
  factory $SwapQuoteCopyWith(SwapQuote value, $Res Function(SwapQuote) then) =
      _$SwapQuoteCopyWithImpl<$Res, SwapQuote>;
  @useResult
  $Res call({String estimatedAmount, String rateId, String validUntil});
}

/// @nodoc
class _$SwapQuoteCopyWithImpl<$Res, $Val extends SwapQuote>
    implements $SwapQuoteCopyWith<$Res> {
  _$SwapQuoteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SwapQuote
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? estimatedAmount = null,
    Object? rateId = null,
    Object? validUntil = null,
  }) {
    return _then(_value.copyWith(
      estimatedAmount: null == estimatedAmount
          ? _value.estimatedAmount
          : estimatedAmount // ignore: cast_nullable_to_non_nullable
              as String,
      rateId: null == rateId
          ? _value.rateId
          : rateId // ignore: cast_nullable_to_non_nullable
              as String,
      validUntil: null == validUntil
          ? _value.validUntil
          : validUntil // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SwapQuoteImplCopyWith<$Res>
    implements $SwapQuoteCopyWith<$Res> {
  factory _$$SwapQuoteImplCopyWith(
          _$SwapQuoteImpl value, $Res Function(_$SwapQuoteImpl) then) =
      __$$SwapQuoteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String estimatedAmount, String rateId, String validUntil});
}

/// @nodoc
class __$$SwapQuoteImplCopyWithImpl<$Res>
    extends _$SwapQuoteCopyWithImpl<$Res, _$SwapQuoteImpl>
    implements _$$SwapQuoteImplCopyWith<$Res> {
  __$$SwapQuoteImplCopyWithImpl(
      _$SwapQuoteImpl _value, $Res Function(_$SwapQuoteImpl) _then)
      : super(_value, _then);

  /// Create a copy of SwapQuote
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? estimatedAmount = null,
    Object? rateId = null,
    Object? validUntil = null,
  }) {
    return _then(_$SwapQuoteImpl(
      estimatedAmount: null == estimatedAmount
          ? _value.estimatedAmount
          : estimatedAmount // ignore: cast_nullable_to_non_nullable
              as String,
      rateId: null == rateId
          ? _value.rateId
          : rateId // ignore: cast_nullable_to_non_nullable
              as String,
      validUntil: null == validUntil
          ? _value.validUntil
          : validUntil // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SwapQuoteImpl implements _SwapQuote {
  const _$SwapQuoteImpl(
      {required this.estimatedAmount,
      required this.rateId,
      required this.validUntil});

  @override
  final String estimatedAmount;
  @override
  final String rateId;
  @override
  final String validUntil;

  @override
  String toString() {
    return 'SwapQuote(estimatedAmount: $estimatedAmount, rateId: $rateId, validUntil: $validUntil)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SwapQuoteImpl &&
            (identical(other.estimatedAmount, estimatedAmount) ||
                other.estimatedAmount == estimatedAmount) &&
            (identical(other.rateId, rateId) || other.rateId == rateId) &&
            (identical(other.validUntil, validUntil) ||
                other.validUntil == validUntil));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, estimatedAmount, rateId, validUntil);

  /// Create a copy of SwapQuote
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SwapQuoteImplCopyWith<_$SwapQuoteImpl> get copyWith =>
      __$$SwapQuoteImplCopyWithImpl<_$SwapQuoteImpl>(this, _$identity);
}

abstract class _SwapQuote implements SwapQuote {
  const factory _SwapQuote(
      {required final String estimatedAmount,
      required final String rateId,
      required final String validUntil}) = _$SwapQuoteImpl;

  @override
  String get estimatedAmount;
  @override
  String get rateId;
  @override
  String get validUntil;

  /// Create a copy of SwapQuote
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SwapQuoteImplCopyWith<_$SwapQuoteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SwapRequest {
  bool get fixed => throw _privateConstructorUsedError;
  String get rateId => throw _privateConstructorUsedError;
  String get currencyFrom => throw _privateConstructorUsedError;
  String get currencyTo => throw _privateConstructorUsedError;
  double get amountFrom => throw _privateConstructorUsedError;
  String get addressTo => throw _privateConstructorUsedError;

  /// Create a copy of SwapRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SwapRequestCopyWith<SwapRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwapRequestCopyWith<$Res> {
  factory $SwapRequestCopyWith(
          SwapRequest value, $Res Function(SwapRequest) then) =
      _$SwapRequestCopyWithImpl<$Res, SwapRequest>;
  @useResult
  $Res call(
      {bool fixed,
      String rateId,
      String currencyFrom,
      String currencyTo,
      double amountFrom,
      String addressTo});
}

/// @nodoc
class _$SwapRequestCopyWithImpl<$Res, $Val extends SwapRequest>
    implements $SwapRequestCopyWith<$Res> {
  _$SwapRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SwapRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fixed = null,
    Object? rateId = null,
    Object? currencyFrom = null,
    Object? currencyTo = null,
    Object? amountFrom = null,
    Object? addressTo = null,
  }) {
    return _then(_value.copyWith(
      fixed: null == fixed
          ? _value.fixed
          : fixed // ignore: cast_nullable_to_non_nullable
              as bool,
      rateId: null == rateId
          ? _value.rateId
          : rateId // ignore: cast_nullable_to_non_nullable
              as String,
      currencyFrom: null == currencyFrom
          ? _value.currencyFrom
          : currencyFrom // ignore: cast_nullable_to_non_nullable
              as String,
      currencyTo: null == currencyTo
          ? _value.currencyTo
          : currencyTo // ignore: cast_nullable_to_non_nullable
              as String,
      amountFrom: null == amountFrom
          ? _value.amountFrom
          : amountFrom // ignore: cast_nullable_to_non_nullable
              as double,
      addressTo: null == addressTo
          ? _value.addressTo
          : addressTo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SwapRequestImplCopyWith<$Res>
    implements $SwapRequestCopyWith<$Res> {
  factory _$$SwapRequestImplCopyWith(
          _$SwapRequestImpl value, $Res Function(_$SwapRequestImpl) then) =
      __$$SwapRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool fixed,
      String rateId,
      String currencyFrom,
      String currencyTo,
      double amountFrom,
      String addressTo});
}

/// @nodoc
class __$$SwapRequestImplCopyWithImpl<$Res>
    extends _$SwapRequestCopyWithImpl<$Res, _$SwapRequestImpl>
    implements _$$SwapRequestImplCopyWith<$Res> {
  __$$SwapRequestImplCopyWithImpl(
      _$SwapRequestImpl _value, $Res Function(_$SwapRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of SwapRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fixed = null,
    Object? rateId = null,
    Object? currencyFrom = null,
    Object? currencyTo = null,
    Object? amountFrom = null,
    Object? addressTo = null,
  }) {
    return _then(_$SwapRequestImpl(
      fixed: null == fixed
          ? _value.fixed
          : fixed // ignore: cast_nullable_to_non_nullable
              as bool,
      rateId: null == rateId
          ? _value.rateId
          : rateId // ignore: cast_nullable_to_non_nullable
              as String,
      currencyFrom: null == currencyFrom
          ? _value.currencyFrom
          : currencyFrom // ignore: cast_nullable_to_non_nullable
              as String,
      currencyTo: null == currencyTo
          ? _value.currencyTo
          : currencyTo // ignore: cast_nullable_to_non_nullable
              as String,
      amountFrom: null == amountFrom
          ? _value.amountFrom
          : amountFrom // ignore: cast_nullable_to_non_nullable
              as double,
      addressTo: null == addressTo
          ? _value.addressTo
          : addressTo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SwapRequestImpl implements _SwapRequest {
  const _$SwapRequestImpl(
      {required this.fixed,
      required this.rateId,
      required this.currencyFrom,
      required this.currencyTo,
      required this.amountFrom,
      required this.addressTo});

  @override
  final bool fixed;
  @override
  final String rateId;
  @override
  final String currencyFrom;
  @override
  final String currencyTo;
  @override
  final double amountFrom;
  @override
  final String addressTo;

  @override
  String toString() {
    return 'SwapRequest(fixed: $fixed, rateId: $rateId, currencyFrom: $currencyFrom, currencyTo: $currencyTo, amountFrom: $amountFrom, addressTo: $addressTo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SwapRequestImpl &&
            (identical(other.fixed, fixed) || other.fixed == fixed) &&
            (identical(other.rateId, rateId) || other.rateId == rateId) &&
            (identical(other.currencyFrom, currencyFrom) ||
                other.currencyFrom == currencyFrom) &&
            (identical(other.currencyTo, currencyTo) ||
                other.currencyTo == currencyTo) &&
            (identical(other.amountFrom, amountFrom) ||
                other.amountFrom == amountFrom) &&
            (identical(other.addressTo, addressTo) ||
                other.addressTo == addressTo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fixed, rateId, currencyFrom,
      currencyTo, amountFrom, addressTo);

  /// Create a copy of SwapRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SwapRequestImplCopyWith<_$SwapRequestImpl> get copyWith =>
      __$$SwapRequestImplCopyWithImpl<_$SwapRequestImpl>(this, _$identity);
}

abstract class _SwapRequest implements SwapRequest {
  const factory _SwapRequest(
      {required final bool fixed,
      required final String rateId,
      required final String currencyFrom,
      required final String currencyTo,
      required final double amountFrom,
      required final String addressTo}) = _$SwapRequestImpl;

  @override
  bool get fixed;
  @override
  String get rateId;
  @override
  String get currencyFrom;
  @override
  String get currencyTo;
  @override
  double get amountFrom;
  @override
  String get addressTo;

  /// Create a copy of SwapRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SwapRequestImplCopyWith<_$SwapRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TxMemo {
  int get direction => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get memo => throw _privateConstructorUsedError;

  /// Create a copy of TxMemo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TxMemoCopyWith<TxMemo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TxMemoCopyWith<$Res> {
  factory $TxMemoCopyWith(TxMemo value, $Res Function(TxMemo) then) =
      _$TxMemoCopyWithImpl<$Res, TxMemo>;
  @useResult
  $Res call({int direction, String address, String memo});
}

/// @nodoc
class _$TxMemoCopyWithImpl<$Res, $Val extends TxMemo>
    implements $TxMemoCopyWith<$Res> {
  _$TxMemoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TxMemo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? direction = null,
    Object? address = null,
    Object? memo = null,
  }) {
    return _then(_value.copyWith(
      direction: null == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as int,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      memo: null == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TxMemoImplCopyWith<$Res> implements $TxMemoCopyWith<$Res> {
  factory _$$TxMemoImplCopyWith(
          _$TxMemoImpl value, $Res Function(_$TxMemoImpl) then) =
      __$$TxMemoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int direction, String address, String memo});
}

/// @nodoc
class __$$TxMemoImplCopyWithImpl<$Res>
    extends _$TxMemoCopyWithImpl<$Res, _$TxMemoImpl>
    implements _$$TxMemoImplCopyWith<$Res> {
  __$$TxMemoImplCopyWithImpl(
      _$TxMemoImpl _value, $Res Function(_$TxMemoImpl) _then)
      : super(_value, _then);

  /// Create a copy of TxMemo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? direction = null,
    Object? address = null,
    Object? memo = null,
  }) {
    return _then(_$TxMemoImpl(
      direction: null == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as int,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      memo: null == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TxMemoImpl implements _TxMemo {
  const _$TxMemoImpl(
      {required this.direction, required this.address, required this.memo});

  @override
  final int direction;
  @override
  final String address;
  @override
  final String memo;

  @override
  String toString() {
    return 'TxMemo(direction: $direction, address: $address, memo: $memo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TxMemoImpl &&
            (identical(other.direction, direction) ||
                other.direction == direction) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.memo, memo) || other.memo == memo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, direction, address, memo);

  /// Create a copy of TxMemo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TxMemoImplCopyWith<_$TxMemoImpl> get copyWith =>
      __$$TxMemoImplCopyWithImpl<_$TxMemoImpl>(this, _$identity);
}

abstract class _TxMemo implements TxMemo {
  const factory _TxMemo(
      {required final int direction,
      required final String address,
      required final String memo}) = _$TxMemoImpl;

  @override
  int get direction;
  @override
  String get address;
  @override
  String get memo;

  /// Create a copy of TxMemo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TxMemoImplCopyWith<_$TxMemoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TxTimeValue {
  int get timestamp => throw _privateConstructorUsedError;
  int get value => throw _privateConstructorUsedError;

  /// Create a copy of TxTimeValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TxTimeValueCopyWith<TxTimeValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TxTimeValueCopyWith<$Res> {
  factory $TxTimeValueCopyWith(
          TxTimeValue value, $Res Function(TxTimeValue) then) =
      _$TxTimeValueCopyWithImpl<$Res, TxTimeValue>;
  @useResult
  $Res call({int timestamp, int value});
}

/// @nodoc
class _$TxTimeValueCopyWithImpl<$Res, $Val extends TxTimeValue>
    implements $TxTimeValueCopyWith<$Res> {
  _$TxTimeValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TxTimeValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TxTimeValueImplCopyWith<$Res>
    implements $TxTimeValueCopyWith<$Res> {
  factory _$$TxTimeValueImplCopyWith(
          _$TxTimeValueImpl value, $Res Function(_$TxTimeValueImpl) then) =
      __$$TxTimeValueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int timestamp, int value});
}

/// @nodoc
class __$$TxTimeValueImplCopyWithImpl<$Res>
    extends _$TxTimeValueCopyWithImpl<$Res, _$TxTimeValueImpl>
    implements _$$TxTimeValueImplCopyWith<$Res> {
  __$$TxTimeValueImplCopyWithImpl(
      _$TxTimeValueImpl _value, $Res Function(_$TxTimeValueImpl) _then)
      : super(_value, _then);

  /// Create a copy of TxTimeValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? value = null,
  }) {
    return _then(_$TxTimeValueImpl(
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TxTimeValueImpl implements _TxTimeValue {
  const _$TxTimeValueImpl({required this.timestamp, required this.value});

  @override
  final int timestamp;
  @override
  final int value;

  @override
  String toString() {
    return 'TxTimeValue(timestamp: $timestamp, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TxTimeValueImpl &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, timestamp, value);

  /// Create a copy of TxTimeValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TxTimeValueImplCopyWith<_$TxTimeValueImpl> get copyWith =>
      __$$TxTimeValueImplCopyWithImpl<_$TxTimeValueImpl>(this, _$identity);
}

abstract class _TxTimeValue implements TxTimeValue {
  const factory _TxTimeValue(
      {required final int timestamp,
      required final int value}) = _$TxTimeValueImpl;

  @override
  int get timestamp;
  @override
  int get value;

  /// Create a copy of TxTimeValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TxTimeValueImplCopyWith<_$TxTimeValueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
