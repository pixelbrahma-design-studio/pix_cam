// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weekly.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Weekly {
//required Timestamp timeStamp,
  int get day => throw _privateConstructorUsedError;
  int get outCount => throw _privateConstructorUsedError;
  int get inCount => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeeklyCopyWith<Weekly> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeeklyCopyWith<$Res> {
  factory $WeeklyCopyWith(Weekly value, $Res Function(Weekly) then) =
      _$WeeklyCopyWithImpl<$Res, Weekly>;
  @useResult
  $Res call({int day, int outCount, int inCount, int total});
}

/// @nodoc
class _$WeeklyCopyWithImpl<$Res, $Val extends Weekly>
    implements $WeeklyCopyWith<$Res> {
  _$WeeklyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? outCount = null,
    Object? inCount = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int,
      outCount: null == outCount
          ? _value.outCount
          : outCount // ignore: cast_nullable_to_non_nullable
              as int,
      inCount: null == inCount
          ? _value.inCount
          : inCount // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WeeklyCopyWith<$Res> implements $WeeklyCopyWith<$Res> {
  factory _$$_WeeklyCopyWith(_$_Weekly value, $Res Function(_$_Weekly) then) =
      __$$_WeeklyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int day, int outCount, int inCount, int total});
}

/// @nodoc
class __$$_WeeklyCopyWithImpl<$Res>
    extends _$WeeklyCopyWithImpl<$Res, _$_Weekly>
    implements _$$_WeeklyCopyWith<$Res> {
  __$$_WeeklyCopyWithImpl(_$_Weekly _value, $Res Function(_$_Weekly) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? outCount = null,
    Object? inCount = null,
    Object? total = null,
  }) {
    return _then(_$_Weekly(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int,
      outCount: null == outCount
          ? _value.outCount
          : outCount // ignore: cast_nullable_to_non_nullable
              as int,
      inCount: null == inCount
          ? _value.inCount
          : inCount // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Weekly extends _Weekly {
  const _$_Weekly(
      {required this.day,
      required this.outCount,
      required this.inCount,
      required this.total})
      : super._();

//required Timestamp timeStamp,
  @override
  final int day;
  @override
  final int outCount;
  @override
  final int inCount;
  @override
  final int total;

  @override
  String toString() {
    return 'Weekly(day: $day, outCount: $outCount, inCount: $inCount, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Weekly &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.outCount, outCount) ||
                other.outCount == outCount) &&
            (identical(other.inCount, inCount) || other.inCount == inCount) &&
            (identical(other.total, total) || other.total == total));
  }

  @override
  int get hashCode => Object.hash(runtimeType, day, outCount, inCount, total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeeklyCopyWith<_$_Weekly> get copyWith =>
      __$$_WeeklyCopyWithImpl<_$_Weekly>(this, _$identity);
}

abstract class _Weekly extends Weekly {
  const factory _Weekly(
      {required final int day,
      required final int outCount,
      required final int inCount,
      required final int total}) = _$_Weekly;
  const _Weekly._() : super._();

  @override //required Timestamp timeStamp,
  int get day;
  @override
  int get outCount;
  @override
  int get inCount;
  @override
  int get total;
  @override
  @JsonKey(ignore: true)
  _$$_WeeklyCopyWith<_$_Weekly> get copyWith =>
      throw _privateConstructorUsedError;
}
