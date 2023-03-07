part of 'houly_comparison_watcher_bloc.dart';

@freezed
class HoulyComparisonWatcherState with _$HoulyComparisonWatcherState {
  const factory HoulyComparisonWatcherState.initial() = _Initial;
  const factory HoulyComparisonWatcherState.loading() = _Loading;
  factory HoulyComparisonWatcherState.success(
      KtList<HourlyComparison> hourlyComparisonData) = _Success;
  factory HoulyComparisonWatcherState.failure(ServerFailure serverFailure) =
      _Failure;
}
