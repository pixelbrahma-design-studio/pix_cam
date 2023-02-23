// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'monthly.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Monthly {
  int get hour => throw _privateConstructorUsedError;
  int get outCount => throw _privateConstructorUsedError;
  int get inCount => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MonthlyCopyWith<Monthly> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MonthlyCopyWith<$Res> {
  factory $MonthlyCopyWith(Monthly value, $Res Function(Monthly) then) =
      _$MonthlyCopyWithImpl<$Res, Monthly>;
  @useResult
  $Res call({int hour, int outCount, int inCount, int total});
}

/// @nodoc
class _$MonthlyCopyWithImpl<$Res, $Val extends Monthly>
    implements $MonthlyCopyWith<$Res> {
  _$MonthlyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hour = null,
    Object? outCount = null,
    Object? inCount = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      hour: null == hour
          ? _value.hour
          : hour // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_MonthlyCopyWith<$Res> implements $MonthlyCopyWith<$Res> {
  factory _$$_MonthlyCopyWith(
          _$_Monthly value, $Res Function(_$_Monthly) then) =
      __$$_MonthlyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int hour, int outCount, int inCount, int total});
}

/// @nodoc
class __$$_MonthlyCopyWithImpl<$Res>
    extends _$MonthlyCopyWithImpl<$Res, _$_Monthly>
    implements _$$_MonthlyCopyWith<$Res> {
  __$$_MonthlyCopyWithImpl(_$_Monthly _value, $Res Function(_$_Monthly) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hour = null,
    Object? outCount = null,
    Object? inCount = null,
    Object? total = null,
  }) {
    return _then(_$_Monthly(
      hour: null == hour
          ? _value.hour
          : hour // ignore: cast_nullable_to_non_nullable
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

class _$_Monthly extends _Monthly {
  _$_Monthly(
      {required this.hour,
      required this.outCount,
      required this.inCount,
      required this.total})
      : super._();

  @override
  final int hour;
  @override
  final int outCount;
  @override
  final int inCount;
  @override
  final int total;

  @override
  String toString() {
    return 'Monthly(hour: $hour, outCount: $outCount, inCount: $inCount, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Monthly &&
            (identical(other.hour, hour) || other.hour == hour) &&
            (identical(other.outCount, outCount) ||
                other.outCount == outCount) &&
            (identical(other.inCount, inCount) || other.inCount == inCount) &&
            (identical(other.total, total) || other.total == total));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hour, outCount, inCount, total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MonthlyCopyWith<_$_Monthly> get copyWith =>
      __$$_MonthlyCopyWithImpl<_$_Monthly>(this, _$identity);
}

abstract class _Monthly extends Monthly {
  factory _Monthly(
      {required final int hour,
      required final int outCount,
      required final int inCount,
      required final int total}) = _$_Monthly;
  _Monthly._() : super._();

  @override
  int get hour;
  @override
  int get outCount;
  @override
  int get inCount;
  @override
  int get total;
  @override
  @JsonKey(ignore: true)
  _$$_MonthlyCopyWith<_$_Monthly> get copyWith =>
      throw _privateConstructorUsedError;
}
