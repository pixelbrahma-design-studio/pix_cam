part of 'monthly_watcher_bloc.dart';

@freezed
class MonthlyWatcherState with _$MonthlyWatcherState{

  const factory MonthlyWatcherState.initial() = _Initial;
  const factory MonthlyWatcherState.loading() = _Loading;
  factory MonthlyWatcherState.success(KtList<Monthly> monthlyData) = _Success;
  factory MonthlyWatcherState.failures(ServerFailure failure) = _Failures;
}

