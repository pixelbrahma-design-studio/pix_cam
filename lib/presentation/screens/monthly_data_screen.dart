import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:pix_cam/application/monthly/monthly_watcher/monthly_watcher_bloc.dart';
import 'package:pix_cam/domain/monthly/monthly.dart';
import 'package:pix_cam/injection.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter_month_picker/flutter_month_picker.dart';

class MonthlyDataScreen extends StatelessWidget {
  MonthlyDataScreen({Key? key}) : super(key: key);
  int month = DateTime.now().month;
  int year = DateTime.now().year;

  TextEditingController dateInput = TextEditingController();

  @override
  Widget build(BuildContext context) {
    dateInput.text = "  $month - $year";
    print("inside ui");
    return BlocProvider<MonthlyWatcherBloc>(
      create: (context) => getIt<MonthlyWatcherBloc>()
        ..add(
          MonthlyWatcherEvent.getMonthlyData(month, year),
        ),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          BlocBuilder<MonthlyWatcherBloc, MonthlyWatcherState>(
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
                      showMonthPicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(1900),
                        lastDate: DateTime(2100),
                      ).then((pickedDate) {
                        if (pickedDate != null) {
                          print(pickedDate);
                          String formattedDate =
                              DateFormat('MM-yyyy').format(pickedDate);
                          print(pickedDate.day);

                          dateInput.text = formattedDate;

                          month = pickedDate.month;
                          year = pickedDate.year;
                          BlocProvider.of<MonthlyWatcherBloc>(context).add(
                              MonthlyWatcherEvent.getMonthlyData(month, year));
                        }
                      });
                    }),
              );
            },
          ),
          const SizedBox(
            height: 20,
          ),
          BlocBuilder<MonthlyWatcherBloc, MonthlyWatcherState>(
            builder: (context, state) {
              return state.maybeMap(
                loading: (value) => const CircularProgressIndicator(),
                success: (value) {
                  print('inside sload success');

                  print('Inside month UI: ${value.monthlyData}');

                  List<Monthly> dataList = value.monthlyData.asList();

                  return SfCartesianChart(
                    primaryXAxis: CategoryAxis(),
                    // Chart title
                    title: ChartTitle(text: 'Monthly Count Data'),
                    // Enable legend
                    legend: Legend(
                      isVisible: true,
                      position: LegendPosition.bottom,
                    ),
                    enableSideBySideSeriesPlacement: true,
                    // Enable tooltip
                    tooltipBehavior: TooltipBehavior(enable: false),
                    series: <ChartSeries<Monthly, String>>[
                      ColumnSeries<Monthly, String>(
                        dataSource: dataList,
                        xValueMapper: (Monthly monthly, _) =>
                            monthly.day.toString(),
                        yValueMapper: (Monthly hourly, _) => hourly.inCount,
                        name: 'In Count',
                        yAxisName: 'DAY',
                        xAxisName: 'COUNT',

                        // Enable data label
                        dataLabelSettings:
                            const DataLabelSettings(isVisible: true),
                      ),
                      ColumnSeries<Monthly, String>(
                        dataSource: dataList,
                        xValueMapper: (Monthly monthly, _) =>
                            monthly.day.toString(),
                        yValueMapper: (Monthly monthly, _) => monthly.outCount,
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
                failure: (value) {
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
