import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:pix_cam/application/weekly/weekly_watcher/weekly_watcher_bloc.dart';
import 'package:pix_cam/domain/weekly/weekly.dart';
import 'package:pix_cam/presentation/screens/weekly_date_picker.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../../injection.dart';

class WeeklyDataScreen extends StatefulWidget {
  WeeklyDataScreen({Key? key}) : super(key: key);

  @override
  State<WeeklyDataScreen> createState() => _WeeklyDataScreenState();
}

class _WeeklyDataScreenState extends State<WeeklyDataScreen> {
  TextEditingController dateInput = TextEditingController();


  // initial endDate
  String endDate = DateFormat("yyyy-MM-ddTHH:mm:ss+00:00").format(DateTime(
      DateTime.now().year,
      DateTime.now().month,
      DateTime.now().day + 1,
      23,
      59,
      59));

  // initial DateRange

  DateTimeRange initialDateRange = DateTimeRange(
      start: DateTime.now().subtract(const Duration(days: 6)),
      end: DateTime.now());


  @override
  Widget build(BuildContext context) {
    dateInput.text =
        "${DateFormat("dd-MM-yyyy").format(initialDateRange.start)}  to  ${DateFormat("dd-MM-yyyy").format(initialDateRange.end)}";
    return BlocProvider<WeeklyWatcherBloc>(
      create: (context) => getIt<WeeklyWatcherBloc>()
        ..add(
          WeeklyWatcherEvent.getWeeklyData(endDate),
        ),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          BlocBuilder<WeeklyWatcherBloc, WeeklyWatcherState>(
            builder: (context, state) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: TextField(
                    controller: dateInput,
                    readOnly: true,
                    style: const TextStyle(fontSize: 16),
                    decoration: const InputDecoration(
                      suffixIcon: Icon(
                        Icons.date_range,
                        size: 26,
                        color: Colors.blue,
                      ),
                    ),
                    onTap: () async {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  WeekSelectionInPicker()),
                      );
                      // await showDateRangePicker(
                      //   initialDateRange: initialDateRange,
                      //   context: context,
                      //   firstDate: DateTime(1900),
                      //   lastDate: DateTime(2100),
                      // ).then((value) {
                      //   if (value != null) {
                      //     final selectedDate = value.end;
                      //     endDate = DateFormat("yyyy-MM-ddTHH:mm:ss+00:00")
                      //         .format(DateTime(
                      //             selectedDate.year,
                      //             selectedDate.month,
                      //             selectedDate.day + 1,
                      //             23,
                      //             59,
                      //             59));
                      //     initialDateRange = value;
                      //     dateInput.text =
                      //         "${DateFormat("dd-MM-yyyy").format(value.end.add(Duration(days: 6)))}  to  ${DateFormat("dd-MM-yyyy").format(value.end)}";
                      //     BlocProvider.of<WeeklyWatcherBloc>(context)
                      //         .add(WeeklyWatcherEvent.getWeeklyData(endDate));
                      //   }
                      // });
                    }),
              );
            },
          ),
          const SizedBox(
            height: 20,
          ),
          BlocBuilder<WeeklyWatcherBloc, WeeklyWatcherState>(
            builder: (context, state) {
              return state.maybeMap(
                loading: (value) => const CircularProgressIndicator(),
                success: (value) {
                  print('inside sload success');

                  print('Inside UI: ${value.weeklyData}');

                  List<Weekly> dataList = value.weeklyData.asList();

                  return SfCartesianChart(
                    primaryXAxis: CategoryAxis(),
                    // Chart title
                    title: ChartTitle(text: 'Weekly Count Data'),
                    // Enable legend
                    legend: Legend(
                      isVisible: true,
                      position: LegendPosition.bottom,
                    ),
                    enableSideBySideSeriesPlacement: true,
                    // Enable tooltip
                    tooltipBehavior: TooltipBehavior(enable: false),
                    series: <ChartSeries<Weekly, String>>[
                      ColumnSeries<Weekly, String>(
                        dataSource: dataList,
                        xValueMapper: (Weekly weekly, _) =>
                            weekly.day.toString(),
                        yValueMapper: (Weekly weekly, _) => weekly.inCount,
                        name: 'In Count',
                        yAxisName: 'DAY',
                        xAxisName: 'COUNT',

                        // Enable data label
                        dataLabelSettings:
                            const DataLabelSettings(isVisible: true),
                      ),
                      ColumnSeries<Weekly, String>(
                        dataSource: dataList,
                        xValueMapper: (Weekly weekly, _) =>
                            weekly.day.toString(),
                        yValueMapper: (Weekly weekly, _) => weekly.outCount,
                        name: 'Out Count',
                        yAxisName: 'DAY',
                        xAxisName: 'COUNT',

                        // Enable data label
                        dataLabelSettings:
                            const DataLabelSettings(isVisible: true),
                      ),
                    ],
                  );

                  // return const Text('inside load success');
                },
                failures: (value) {
                  return const Text('load failed');
                },
                orElse: () => const Text('Or Else'),
              );
            },
          )
        ],
      ),
    );
  }
}
