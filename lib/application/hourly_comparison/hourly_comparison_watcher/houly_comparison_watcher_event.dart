part of 'houly_comparison_watcher_bloc.dart';

@freezed
class HoulyComparisonWatcherEvent with _$HoulyComparisonWatcherEvent {
  factory HoulyComparisonWatcherEvent.getHourlyComparisonDataForDay() =
      _GetHourlyComparisonDataForDay;
  factory HoulyComparisonWatcherEvent.hourlyComparisonDataForDayReceived(
      Either<ServerFailure, KtList<HourlyComparison>>
          failureOrhourlyComparisonData) = _HourlyComparisonDataForDayReceived;
}
