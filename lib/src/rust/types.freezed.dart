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
mixin _$Backup {
  String get name => throw _privateConstructorUsedError;
  String? get seed => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  String? get sk => throw _privateConstructorUsedError;
  String get fvk => throw _privateConstructorUsedError;
  String get uvk => throw _privateConstructorUsedError;
  String? get tsk => throw _privateConstructorUsedError;
  bool get saved => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
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

  @JsonKey(ignore: true)
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
  @override
  @JsonKey(ignore: true)
  _$$BackupImplCopyWith<_$BackupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BlockHeight {
  int get height => throw _privateConstructorUsedError;
  int get timestamp => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
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

  @JsonKey(ignore: true)
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
  @override
  @JsonKey(ignore: true)
  _$$BlockHeightImplCopyWith<_$BlockHeightImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Contact {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
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

  @JsonKey(ignore: true)
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
  @override
  @JsonKey(ignore: true)
  _$$ContactImplCopyWith<_$ContactImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Fee {
  int get scheme => throw _privateConstructorUsedError;
  BigInt get fee => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
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

  @JsonKey(ignore: true)
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
  @override
  @JsonKey(ignore: true)
  _$$FeeImplCopyWith<_$FeeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PoolBalance {
  BigInt get transparent => throw _privateConstructorUsedError;
  BigInt get sapling => throw _privateConstructorUsedError;
  BigInt get orchard => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
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

  @JsonKey(ignore: true)
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
  @override
  @JsonKey(ignore: true)
  _$$PoolBalanceImplCopyWith<_$PoolBalanceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Progress {
  int get timestamp => throw _privateConstructorUsedError;
  int get trialDecryptions => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  int get downloaded => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
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

  @JsonKey(ignore: true)
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
  @override
  @JsonKey(ignore: true)
  _$$ProgressImplCopyWith<_$ProgressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Quote {
  int get timestamp => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
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

  @JsonKey(ignore: true)
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
  @override
  @JsonKey(ignore: true)
  _$$QuoteImplCopyWith<_$QuoteImpl> get copyWith =>
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

  @JsonKey(ignore: true)
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

  @JsonKey(ignore: true)
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
  @override
  @JsonKey(ignore: true)
  _$$ShieldedNoteImplCopyWith<_$ShieldedNoteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Spending {
  String get recipient => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
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

  @JsonKey(ignore: true)
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
  @override
  @JsonKey(ignore: true)
  _$$SpendingImplCopyWith<_$SpendingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TxMemo {
  int get direction => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get memo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
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

  @JsonKey(ignore: true)
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
  @override
  @JsonKey(ignore: true)
  _$$TxMemoImplCopyWith<_$TxMemoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TxTimeValue {
  int get timestamp => throw _privateConstructorUsedError;
  int get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
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

  @JsonKey(ignore: true)
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
  @override
  @JsonKey(ignore: true)
  _$$TxTimeValueImplCopyWith<_$TxTimeValueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
