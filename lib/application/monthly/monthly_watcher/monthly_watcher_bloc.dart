import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:pix_cam/domain/core/server_failure.dart';
import 'package:pix_cam/domain/monthly/i_monthly_repositiory.dart';

import '../../../domain/monthly/monthly.dart';

part 'monthly_watcher_event.dart';
part 'monthly_watcher_state.dart';
part 'monthly_watcher_bloc.freezed.dart';

@injectable
class MonthlyWatcherBloc
    extends Bloc<MonthlyWatcherEvent, MonthlyWatcherState> {
  IMonthlyRepository iMonthlyRepository;
  MonthlyWatcherBloc(this.iMonthlyRepository)
      : super(const MonthlyWatcherState.initial()) {
    on<MonthlyWatcherEvent>((event, emit) async {
      await emit.onEach(mapEventToState(event), onData: (State) {
        emit(state);
      });
    });
  }

  Stream<Object?> mapEventToState(MonthlyWatcherEvent event) async* {
    yield* event.map(
      getMonthlyData: (e) async* {
        yield const MonthlyWatcherState.loading();
        await iMonthlyRepository
            .fetchMonthlyData(e.selectedMonth, e.selectedYear)
            .then((value) {
          add(MonthlyWatcherEvent.monthlyDataReceived(value));
        });
      },
      monthlyDataReceived: (e) async* {
        yield e.failureOrMonthlyData.fold(
            (failure) => MonthlyWatcherState.failure(failure),
            (monthlyData) => MonthlyWatcherState.success(monthlyData));
      },
    );
  }
}
