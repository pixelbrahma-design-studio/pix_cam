import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:pix_cam/domain/core/server_failure.dart';
import 'package:pix_cam/domain/hourly_comparison/i_hourly_comparison_repository.dart';

import '../../../domain/hourly_comparison/hourly_comparison.dart';

part 'houly_comparison_watcher_event.dart';
part 'houly_comparison_watcher_state.dart';
part 'houly_comparison_watcher_bloc.freezed.dart';

@injectable
class HoulyComparisonWatcherBloc
    extends Bloc<HoulyComparisonWatcherEvent, HoulyComparisonWatcherState> {
  final IHourlyComparisonRepository _iHourlyComparisonRepository;
  HoulyComparisonWatcherBloc(this._iHourlyComparisonRepository)
      : super(const HoulyComparisonWatcherState.initial()) {
    on<HoulyComparisonWatcherEvent>((event, emit) async {
      await emit.onEach(mapEventToSate(event),
          onData: (HoulyComparisonWatcherState state) {
        emit(state);
      });
    });
  }
  Stream<HoulyComparisonWatcherState> mapEventToSate(
      HoulyComparisonWatcherEvent event) async* {
    yield* event.map(getHourlyComparisonDataForDay: (e) async* {
      yield const HoulyComparisonWatcherState.loading();
      _iHourlyComparisonRepository.fetchHourlyComparisonData().then((value) {
        add(HoulyComparisonWatcherEvent.hourlyComparisonDataForDayReceived(
            value));
      });
    }, hourlyComparisonDataForDayReceived: (e) async* {
      yield e.failureOrhourlyComparisonData.fold(
          (failure) => HoulyComparisonWatcherState.failure(failure),
          (hourlyComparisonData) =>
              HoulyComparisonWatcherState.success(hourlyComparisonData));
    });
  }
}
