// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'monthly_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MonthlyWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String selectedDate, String selectedMonth, String selectedYear)
        getMontlyData,
    required TResult Function(
            Either<ServerFailure, KtList<Monthly>> failureOrHourlydata)
        monthlyDataReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String selectedDate, String selectedMonth, String selectedYear)?
        getMontlyData,
    TResult? Function(
            Either<ServerFailure, KtList<Monthly>> failureOrHourlydata)?
        monthlyDataReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String selectedDate, String selectedMonth, String selectedYear)?
        getMontlyData,
    TResult Function(
            Either<ServerFailure, KtList<Monthly>> failureOrHourlydata)?
        monthlyDataReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMonthlyData value) getMontlyData,
    required TResult Function(_MonthlyDataReceived value) monthlyDataReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetMonthlyData value)? getMontlyData,
    TResult? Function(_MonthlyDataReceived value)? monthlyDataReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMonthlyData value)? getMontlyData,
    TResult Function(_MonthlyDataReceived value)? monthlyDataReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MonthlyWatcherEventCopyWith<$Res> {
  factory $MonthlyWatcherEventCopyWith(
          MonthlyWatcherEvent value, $Res Function(MonthlyWatcherEvent) then) =
      _$MonthlyWatcherEventCopyWithImpl<$Res, MonthlyWatcherEvent>;
}

/// @nodoc
class _$MonthlyWatcherEventCopyWithImpl<$Res, $Val extends MonthlyWatcherEvent>
    implements $MonthlyWatcherEventCopyWith<$Res> {
  _$MonthlyWatcherEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetMonthlyDataCopyWith<$Res> {
  factory _$$_GetMonthlyDataCopyWith(
          _$_GetMonthlyData value, $Res Function(_$_GetMonthlyData) then) =
      __$$_GetMonthlyDataCopyWithImpl<$Res>;
  @useResult
  $Res call({String selectedDate, String selectedMonth, String selectedYear});
}

/// @nodoc
class __$$_GetMonthlyDataCopyWithImpl<$Res>
    extends _$MonthlyWatcherEventCopyWithImpl<$Res, _$_GetMonthlyData>
    implements _$$_GetMonthlyDataCopyWith<$Res> {
  __$$_GetMonthlyDataCopyWithImpl(
      _$_GetMonthlyData _value, $Res Function(_$_GetMonthlyData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedDate = null,
    Object? selectedMonth = null,
    Object? selectedYear = null,
  }) {
    return _then(_$_GetMonthlyData(
      null == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as String,
      null == selectedMonth
          ? _value.selectedMonth
          : selectedMonth // ignore: cast_nullable_to_non_nullable
              as String,
      null == selectedYear
          ? _value.selectedYear
          : selectedYear // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetMonthlyData implements _GetMonthlyData {
  const _$_GetMonthlyData(
      this.selectedDate, this.selectedMonth, this.selectedYear);

  @override
  final String selectedDate;
  @override
  final String selectedMonth;
  @override
  final String selectedYear;

  @override
  String toString() {
    return 'MonthlyWatcherEvent.getMontlyData(selectedDate: $selectedDate, selectedMonth: $selectedMonth, selectedYear: $selectedYear)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetMonthlyData &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate) &&
            (identical(other.selectedMonth, selectedMonth) ||
                other.selectedMonth == selectedMonth) &&
            (identical(other.selectedYear, selectedYear) ||
                other.selectedYear == selectedYear));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, selectedDate, selectedMonth, selectedYear);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetMonthlyDataCopyWith<_$_GetMonthlyData> get copyWith =>
      __$$_GetMonthlyDataCopyWithImpl<_$_GetMonthlyData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String selectedDate, String selectedMonth, String selectedYear)
        getMontlyData,
    required TResult Function(
            Either<ServerFailure, KtList<Monthly>> failureOrHourlydata)
        monthlyDataReceived,
  }) {
    return getMontlyData(selectedDate, selectedMonth, selectedYear);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String selectedDate, String selectedMonth, String selectedYear)?
        getMontlyData,
    TResult? Function(
            Either<ServerFailure, KtList<Monthly>> failureOrHourlydata)?
        monthlyDataReceived,
  }) {
    return getMontlyData?.call(selectedDate, selectedMonth, selectedYear);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String selectedDate, String selectedMonth, String selectedYear)?
        getMontlyData,
    TResult Function(
            Either<ServerFailure, KtList<Monthly>> failureOrHourlydata)?
        monthlyDataReceived,
    required TResult orElse(),
  }) {
    if (getMontlyData != null) {
      return getMontlyData(selectedDate, selectedMonth, selectedYear);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMonthlyData value) getMontlyData,
    required TResult Function(_MonthlyDataReceived value) monthlyDataReceived,
  }) {
    return getMontlyData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetMonthlyData value)? getMontlyData,
    TResult? Function(_MonthlyDataReceived value)? monthlyDataReceived,
  }) {
    return getMontlyData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMonthlyData value)? getMontlyData,
    TResult Function(_MonthlyDataReceived value)? monthlyDataReceived,
    required TResult orElse(),
  }) {
    if (getMontlyData != null) {
      return getMontlyData(this);
    }
    return orElse();
  }
}

abstract class _GetMonthlyData implements MonthlyWatcherEvent {
  const factory _GetMonthlyData(
      final String selectedDate,
      final String selectedMonth,
      final String selectedYear) = _$_GetMonthlyData;

  String get selectedDate;
  String get selectedMonth;
  String get selectedYear;
  @JsonKey(ignore: true)
  _$$_GetMonthlyDataCopyWith<_$_GetMonthlyData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_MonthlyDataReceivedCopyWith<$Res> {
  factory _$$_MonthlyDataReceivedCopyWith(_$_MonthlyDataReceived value,
          $Res Function(_$_MonthlyDataReceived) then) =
      __$$_MonthlyDataReceivedCopyWithImpl<$Res>;
  @useResult
  $Res call({Either<ServerFailure, KtList<Monthly>> failureOrHourlydata});
}

/// @nodoc
class __$$_MonthlyDataReceivedCopyWithImpl<$Res>
    extends _$MonthlyWatcherEventCopyWithImpl<$Res, _$_MonthlyDataReceived>
    implements _$$_MonthlyDataReceivedCopyWith<$Res> {
  __$$_MonthlyDataReceivedCopyWithImpl(_$_MonthlyDataReceived _value,
      $Res Function(_$_MonthlyDataReceived) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureOrHourlydata = null,
  }) {
    return _then(_$_MonthlyDataReceived(
      null == failureOrHourlydata
          ? _value.failureOrHourlydata
          : failureOrHourlydata // ignore: cast_nullable_to_non_nullable
              as Either<ServerFailure, KtList<Monthly>>,
    ));
  }
}

/// @nodoc

class _$_MonthlyDataReceived implements _MonthlyDataReceived {
  _$_MonthlyDataReceived(this.failureOrHourlydata);

  @override
  final Either<ServerFailure, KtList<Monthly>> failureOrHourlydata;

  @override
  String toString() {
    return 'MonthlyWatcherEvent.monthlyDataReceived(failureOrHourlydata: $failureOrHourlydata)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MonthlyDataReceived &&
            (identical(other.failureOrHourlydata, failureOrHourlydata) ||
                other.failureOrHourlydata == failureOrHourlydata));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureOrHourlydata);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MonthlyDataReceivedCopyWith<_$_MonthlyDataReceived> get copyWith =>
      __$$_MonthlyDataReceivedCopyWithImpl<_$_MonthlyDataReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String selectedDate, String selectedMonth, String selectedYear)
        getMontlyData,
    required TResult Function(
            Either<ServerFailure, KtList<Monthly>> failureOrHourlydata)
        monthlyDataReceived,
  }) {
    return monthlyDataReceived(failureOrHourlydata);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String selectedDate, String selectedMonth, String selectedYear)?
        getMontlyData,
    TResult? Function(
            Either<ServerFailure, KtList<Monthly>> failureOrHourlydata)?
        monthlyDataReceived,
  }) {
    return monthlyDataReceived?.call(failureOrHourlydata);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String selectedDate, String selectedMonth, String selectedYear)?
        getMontlyData,
    TResult Function(
            Either<ServerFailure, KtList<Monthly>> failureOrHourlydata)?
        monthlyDataReceived,
    required TResult orElse(),
  }) {
    if (monthlyDataReceived != null) {
      return monthlyDataReceived(failureOrHourlydata);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMonthlyData value) getMontlyData,
    required TResult Function(_MonthlyDataReceived value) monthlyDataReceived,
  }) {
    return monthlyDataReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetMonthlyData value)? getMontlyData,
    TResult? Function(_MonthlyDataReceived value)? monthlyDataReceived,
  }) {
    return monthlyDataReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMonthlyData value)? getMontlyData,
    TResult Function(_MonthlyDataReceived value)? monthlyDataReceived,
    required TResult orElse(),
  }) {
    if (monthlyDataReceived != null) {
      return monthlyDataReceived(this);
    }
    return orElse();
  }
}

abstract class _MonthlyDataReceived implements MonthlyWatcherEvent {
  factory _MonthlyDataReceived(
          final Either<ServerFailure, KtList<Monthly>> failureOrHourlydata) =
      _$_MonthlyDataReceived;

  Either<ServerFailure, KtList<Monthly>> get failureOrHourlydata;
  @JsonKey(ignore: true)
  _$$_MonthlyDataReceivedCopyWith<_$_MonthlyDataReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MonthlyWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(KtList<Monthly> monthlyData) success,
    required TResult Function(ServerFailure failure) failures,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(KtList<Monthly> monthlyData)? success,
    TResult? Function(ServerFailure failure)? failures,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(KtList<Monthly> monthlyData)? success,
    TResult Function(ServerFailure failure)? failures,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failures value) failures,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failures value)? failures,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failures value)? failures,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MonthlyWatcherStateCopyWith<$Res> {
  factory $MonthlyWatcherStateCopyWith(
          MonthlyWatcherState value, $Res Function(MonthlyWatcherState) then) =
      _$MonthlyWatcherStateCopyWithImpl<$Res, MonthlyWatcherState>;
}

/// @nodoc
class _$MonthlyWatcherStateCopyWithImpl<$Res, $Val extends MonthlyWatcherState>
    implements $MonthlyWatcherStateCopyWith<$Res> {
  _$MonthlyWatcherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$MonthlyWatcherStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'MonthlyWatcherState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(KtList<Monthly> monthlyData) success,
    required TResult Function(ServerFailure failure) failures,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(KtList<Monthly> monthlyData)? success,
    TResult? Function(ServerFailure failure)? failures,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(KtList<Monthly> monthlyData)? success,
    TResult Function(ServerFailure failure)? failures,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failures value) failures,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failures value)? failures,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failures value)? failures,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements MonthlyWatcherState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$MonthlyWatcherStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'MonthlyWatcherState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(KtList<Monthly> monthlyData) success,
    required TResult Function(ServerFailure failure) failures,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(KtList<Monthly> monthlyData)? success,
    TResult? Function(ServerFailure failure)? failures,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(KtList<Monthly> monthlyData)? success,
    TResult Function(ServerFailure failure)? failures,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failures value) failures,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failures value)? failures,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failures value)? failures,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements MonthlyWatcherState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({KtList<Monthly> monthlyData});
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res>
    extends _$MonthlyWatcherStateCopyWithImpl<$Res, _$_Success>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? monthlyData = null,
  }) {
    return _then(_$_Success(
      null == monthlyData
          ? _value.monthlyData
          : monthlyData // ignore: cast_nullable_to_non_nullable
              as KtList<Monthly>,
    ));
  }
}

/// @nodoc

class _$_Success implements _Success {
  _$_Success(this.monthlyData);

  @override
  final KtList<Monthly> monthlyData;

  @override
  String toString() {
    return 'MonthlyWatcherState.success(monthlyData: $monthlyData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Success &&
            (identical(other.monthlyData, monthlyData) ||
                other.monthlyData == monthlyData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, monthlyData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      __$$_SuccessCopyWithImpl<_$_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(KtList<Monthly> monthlyData) success,
    required TResult Function(ServerFailure failure) failures,
  }) {
    return success(monthlyData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(KtList<Monthly> monthlyData)? success,
    TResult? Function(ServerFailure failure)? failures,
  }) {
    return success?.call(monthlyData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(KtList<Monthly> monthlyData)? success,
    TResult Function(ServerFailure failure)? failures,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(monthlyData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failures value) failures,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failures value)? failures,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failures value)? failures,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements MonthlyWatcherState {
  factory _Success(final KtList<Monthly> monthlyData) = _$_Success;

  KtList<Monthly> get monthlyData;
  @JsonKey(ignore: true)
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailuresCopyWith<$Res> {
  factory _$$_FailuresCopyWith(
          _$_Failures value, $Res Function(_$_Failures) then) =
      __$$_FailuresCopyWithImpl<$Res>;
  @useResult
  $Res call({ServerFailure failure});

  $ServerFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_FailuresCopyWithImpl<$Res>
    extends _$MonthlyWatcherStateCopyWithImpl<$Res, _$_Failures>
    implements _$$_FailuresCopyWith<$Res> {
  __$$_FailuresCopyWithImpl(
      _$_Failures _value, $Res Function(_$_Failures) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$_Failures(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as ServerFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ServerFailureCopyWith<$Res> get failure {
    return $ServerFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_Failures implements _Failures {
  _$_Failures(this.failure);

  @override
  final ServerFailure failure;

  @override
  String toString() {
    return 'MonthlyWatcherState.failures(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Failures &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailuresCopyWith<_$_Failures> get copyWith =>
      __$$_FailuresCopyWithImpl<_$_Failures>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(KtList<Monthly> monthlyData) success,
    required TResult Function(ServerFailure failure) failures,
  }) {
    return failures(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(KtList<Monthly> monthlyData)? success,
    TResult? Function(ServerFailure failure)? failures,
  }) {
    return failures?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(KtList<Monthly> monthlyData)? success,
    TResult Function(ServerFailure failure)? failures,
    required TResult orElse(),
  }) {
    if (failures != null) {
      return failures(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failures value) failures,
  }) {
    return failures(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failures value)? failures,
  }) {
    return failures?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failures value)? failures,
    required TResult orElse(),
  }) {
    if (failures != null) {
      return failures(this);
    }
    return orElse();
  }
}

abstract class _Failures implements MonthlyWatcherState {
  factory _Failures(final ServerFailure failure) = _$_Failures;

  ServerFailure get failure;
  @JsonKey(ignore: true)
  _$$_FailuresCopyWith<_$_Failures> get copyWith =>
      throw _privateConstructorUsedError;
}
