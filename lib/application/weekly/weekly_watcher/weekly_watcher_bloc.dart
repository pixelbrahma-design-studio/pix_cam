import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:pix_cam/domain/core/server_failure.dart';
import 'package:pix_cam/domain/weekly/i_weekly_repository.dart';

import '../../../domain/hourly/hourly.dart';
import '../../../domain/weekly/weekly.dart';

part 'weekly_watcher_event.dart';
part 'weekly_watcher_state.dart';
part 'weekly_watcher_bloc.freezed.dart';

@injectable
class WeeklyWatcherBloc extends Bloc<WeeklyWatcherEvent, WeeklyWatcherState> {
  IWeeklyRepository _iWeeklyRepository;
  WeeklyWatcherBloc(this._iWeeklyRepository)
      : super(const WeeklyWatcherState.initial()) {
    on<WeeklyWatcherEvent>((event, emit) async {
      await emit.onEach(mapEventToState(event),
          onData: (WeeklyWatcherState state) {
        emit(state);
      });
    });
  }

  Stream<WeeklyWatcherState> mapEventToState(WeeklyWatcherEvent event) async* {
    yield* event.map(
      getWeeklyData: (e) async* {
        yield const WeeklyWatcherState.loading();
        _iWeeklyRepository
            .getWeeklyData(e.selectedDate, e.selectedMonth, e.selectedYear)
            .then((value) {
          add(WeeklyWatcherEvent.weeklyDataReceived(value));
        });
      },
      weeklyDataReceived: (e) async* {
        yield e.failureOrWeeklyData.fold(
            (failure) => WeeklyWatcherState.failures(failure),
            (weeklyData) => WeeklyWatcherState.success(weeklyData));
      },
    );
  }
}
