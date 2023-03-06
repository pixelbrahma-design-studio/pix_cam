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
    required TResult Function(int selectedMonth, int selectedYear)
        getMonthlyData,
    required TResult Function(
            Either<ServerFailure, KtList<Monthly>> failureOrMonthlyData)
        monthlyDataReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int selectedMonth, int selectedYear)? getMonthlyData,
    TResult? Function(
            Either<ServerFailure, KtList<Monthly>> failureOrMonthlyData)?
        monthlyDataReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int selectedMonth, int selectedYear)? getMonthlyData,
    TResult Function(
            Either<ServerFailure, KtList<Monthly>> failureOrMonthlyData)?
        monthlyDataReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMonthlyData value) getMonthlyData,
    required TResult Function(_MonthlyDataReceived value) monthlyDataReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetMonthlyData value)? getMonthlyData,
    TResult? Function(_MonthlyDataReceived value)? monthlyDataReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMonthlyData value)? getMonthlyData,
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
  $Res call({int selectedMonth, int selectedYear});
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
    Object? selectedMonth = null,
    Object? selectedYear = null,
  }) {
    return _then(_$_GetMonthlyData(
      null == selectedMonth
          ? _value.selectedMonth
          : selectedMonth // ignore: cast_nullable_to_non_nullable
              as int,
      null == selectedYear
          ? _value.selectedYear
          : selectedYear // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GetMonthlyData
    with DiagnosticableTreeMixin
    implements _GetMonthlyData {
  _$_GetMonthlyData(this.selectedMonth, this.selectedYear);

  @override
  final int selectedMonth;
  @override
  final int selectedYear;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MonthlyWatcherEvent.getMonthlyData(selectedMonth: $selectedMonth, selectedYear: $selectedYear)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MonthlyWatcherEvent.getMonthlyData'))
      ..add(DiagnosticsProperty('selectedMonth', selectedMonth))
      ..add(DiagnosticsProperty('selectedYear', selectedYear));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetMonthlyData &&
            (identical(other.selectedMonth, selectedMonth) ||
                other.selectedMonth == selectedMonth) &&
            (identical(other.selectedYear, selectedYear) ||
                other.selectedYear == selectedYear));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedMonth, selectedYear);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetMonthlyDataCopyWith<_$_GetMonthlyData> get copyWith =>
      __$$_GetMonthlyDataCopyWithImpl<_$_GetMonthlyData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int selectedMonth, int selectedYear)
        getMonthlyData,
    required TResult Function(
            Either<ServerFailure, KtList<Monthly>> failureOrMonthlyData)
        monthlyDataReceived,
  }) {
    return getMonthlyData(selectedMonth, selectedYear);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int selectedMonth, int selectedYear)? getMonthlyData,
    TResult? Function(
            Either<ServerFailure, KtList<Monthly>> failureOrMonthlyData)?
        monthlyDataReceived,
  }) {
    return getMonthlyData?.call(selectedMonth, selectedYear);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int selectedMonth, int selectedYear)? getMonthlyData,
    TResult Function(
            Either<ServerFailure, KtList<Monthly>> failureOrMonthlyData)?
        monthlyDataReceived,
    required TResult orElse(),
  }) {
    if (getMonthlyData != null) {
      return getMonthlyData(selectedMonth, selectedYear);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMonthlyData value) getMonthlyData,
    required TResult Function(_MonthlyDataReceived value) monthlyDataReceived,
  }) {
    return getMonthlyData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetMonthlyData value)? getMonthlyData,
    TResult? Function(_MonthlyDataReceived value)? monthlyDataReceived,
  }) {
    return getMonthlyData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMonthlyData value)? getMonthlyData,
    TResult Function(_MonthlyDataReceived value)? monthlyDataReceived,
    required TResult orElse(),
  }) {
    if (getMonthlyData != null) {
      return getMonthlyData(this);
    }
    return orElse();
  }
}

abstract class _GetMonthlyData implements MonthlyWatcherEvent {
  factory _GetMonthlyData(final int selectedMonth, final int selectedYear) =
      _$_GetMonthlyData;

  int get selectedMonth;
  int get selectedYear;
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
  $Res call({Either<ServerFailure, KtList<Monthly>> failureOrMonthlyData});
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
    Object? failureOrMonthlyData = null,
  }) {
    return _then(_$_MonthlyDataReceived(
      null == failureOrMonthlyData
          ? _value.failureOrMonthlyData
          : failureOrMonthlyData // ignore: cast_nullable_to_non_nullable
              as Either<ServerFailure, KtList<Monthly>>,
    ));
  }
}

/// @nodoc

class _$_MonthlyDataReceived
    with DiagnosticableTreeMixin
    implements _MonthlyDataReceived {
  _$_MonthlyDataReceived(this.failureOrMonthlyData);

  @override
  final Either<ServerFailure, KtList<Monthly>> failureOrMonthlyData;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MonthlyWatcherEvent.monthlyDataReceived(failureOrMonthlyData: $failureOrMonthlyData)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'MonthlyWatcherEvent.monthlyDataReceived'))
      ..add(DiagnosticsProperty('failureOrMonthlyData', failureOrMonthlyData));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MonthlyDataReceived &&
            (identical(other.failureOrMonthlyData, failureOrMonthlyData) ||
                other.failureOrMonthlyData == failureOrMonthlyData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureOrMonthlyData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MonthlyDataReceivedCopyWith<_$_MonthlyDataReceived> get copyWith =>
      __$$_MonthlyDataReceivedCopyWithImpl<_$_MonthlyDataReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int selectedMonth, int selectedYear)
        getMonthlyData,
    required TResult Function(
            Either<ServerFailure, KtList<Monthly>> failureOrMonthlyData)
        monthlyDataReceived,
  }) {
    return monthlyDataReceived(failureOrMonthlyData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int selectedMonth, int selectedYear)? getMonthlyData,
    TResult? Function(
            Either<ServerFailure, KtList<Monthly>> failureOrMonthlyData)?
        monthlyDataReceived,
  }) {
    return monthlyDataReceived?.call(failureOrMonthlyData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int selectedMonth, int selectedYear)? getMonthlyData,
    TResult Function(
            Either<ServerFailure, KtList<Monthly>> failureOrMonthlyData)?
        monthlyDataReceived,
    required TResult orElse(),
  }) {
    if (monthlyDataReceived != null) {
      return monthlyDataReceived(failureOrMonthlyData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMonthlyData value) getMonthlyData,
    required TResult Function(_MonthlyDataReceived value) monthlyDataReceived,
  }) {
    return monthlyDataReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetMonthlyData value)? getMonthlyData,
    TResult? Function(_MonthlyDataReceived value)? monthlyDataReceived,
  }) {
    return monthlyDataReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMonthlyData value)? getMonthlyData,
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
          final Either<ServerFailure, KtList<Monthly>> failureOrMonthlyData) =
      _$_MonthlyDataReceived;

  Either<ServerFailure, KtList<Monthly>> get failureOrMonthlyData;
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
    required TResult Function(ServerFailure serverFailure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(KtList<Monthly> monthlyData)? success,
    TResult? Function(ServerFailure serverFailure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(KtList<Monthly> monthlyData)? success,
    TResult Function(ServerFailure serverFailure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
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

class _$_Initial with DiagnosticableTreeMixin implements _Initial {
  const _$_Initial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MonthlyWatcherState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'MonthlyWatcherState.initial'));
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
    required TResult Function(ServerFailure serverFailure) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(KtList<Monthly> monthlyData)? success,
    TResult? Function(ServerFailure serverFailure)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(KtList<Monthly> monthlyData)? success,
    TResult Function(ServerFailure serverFailure)? failure,
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
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
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

class _$_Loading with DiagnosticableTreeMixin implements _Loading {
  const _$_Loading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MonthlyWatcherState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'MonthlyWatcherState.loading'));
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
    required TResult Function(ServerFailure serverFailure) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(KtList<Monthly> monthlyData)? success,
    TResult? Function(ServerFailure serverFailure)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(KtList<Monthly> monthlyData)? success,
    TResult Function(ServerFailure serverFailure)? failure,
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
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
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

class _$_Success with DiagnosticableTreeMixin implements _Success {
  _$_Success(this.monthlyData);

  @override
  final KtList<Monthly> monthlyData;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MonthlyWatcherState.success(monthlyData: $monthlyData)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MonthlyWatcherState.success'))
      ..add(DiagnosticsProperty('monthlyData', monthlyData));
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
    required TResult Function(ServerFailure serverFailure) failure,
  }) {
    return success(monthlyData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(KtList<Monthly> monthlyData)? success,
    TResult? Function(ServerFailure serverFailure)? failure,
  }) {
    return success?.call(monthlyData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(KtList<Monthly> monthlyData)? success,
    TResult Function(ServerFailure serverFailure)? failure,
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
    required TResult Function(_Failure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
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
abstract class _$$_FailureCopyWith<$Res> {
  factory _$$_FailureCopyWith(
          _$_Failure value, $Res Function(_$_Failure) then) =
      __$$_FailureCopyWithImpl<$Res>;
  @useResult
  $Res call({ServerFailure serverFailure});

  $ServerFailureCopyWith<$Res> get serverFailure;
}

/// @nodoc
class __$$_FailureCopyWithImpl<$Res>
    extends _$MonthlyWatcherStateCopyWithImpl<$Res, _$_Failure>
    implements _$$_FailureCopyWith<$Res> {
  __$$_FailureCopyWithImpl(_$_Failure _value, $Res Function(_$_Failure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serverFailure = null,
  }) {
    return _then(_$_Failure(
      null == serverFailure
          ? _value.serverFailure
          : serverFailure // ignore: cast_nullable_to_non_nullable
              as ServerFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ServerFailureCopyWith<$Res> get serverFailure {
    return $ServerFailureCopyWith<$Res>(_value.serverFailure, (value) {
      return _then(_value.copyWith(serverFailure: value));
    });
  }
}

/// @nodoc

class _$_Failure with DiagnosticableTreeMixin implements _Failure {
  _$_Failure(this.serverFailure);

  @override
  final ServerFailure serverFailure;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MonthlyWatcherState.failure(serverFailure: $serverFailure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MonthlyWatcherState.failure'))
      ..add(DiagnosticsProperty('serverFailure', serverFailure));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Failure &&
            (identical(other.serverFailure, serverFailure) ||
                other.serverFailure == serverFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, serverFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      __$$_FailureCopyWithImpl<_$_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(KtList<Monthly> monthlyData) success,
    required TResult Function(ServerFailure serverFailure) failure,
  }) {
    return failure(serverFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(KtList<Monthly> monthlyData)? success,
    TResult? Function(ServerFailure serverFailure)? failure,
  }) {
    return failure?.call(serverFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(KtList<Monthly> monthlyData)? success,
    TResult Function(ServerFailure serverFailure)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(serverFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements MonthlyWatcherState {
  factory _Failure(final ServerFailure serverFailure) = _$_Failure;

  ServerFailure get serverFailure;
  @JsonKey(ignore: true)
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}
