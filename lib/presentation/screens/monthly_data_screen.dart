import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:pix_cam/application/hourly/hourly_watcher/hourly_watcher_bloc.dart';
import 'package:pix_cam/application/monthly/monthly_watcher/monthly_watcher_bloc.dart';
import 'package:pix_cam/domain/hourly/hourly.dart';
import 'package:pix_cam/domain/monthly/monthly.dart';
import 'package:pix_cam/infrastructure/hourly/hourly_repository.dart';
import 'package:pix_cam/injection.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter_month_picker/flutter_month_picker.dart';

class MonthlyDataScreen extends StatelessWidget {
  const MonthlyDataScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String selectedMonth = DateTime.now().month.toString();
    String selectedYear = DateTime.now().year.toString();

    TextEditingController dateInput = TextEditingController();

    return BlocProvider<MonthlyWatcherBloc>(
      create: (context) => getIt<MonthlyWatcherBloc>()
        ..add(
          MonthlyWatcherEvent.getMonthlyData(selectedMonth, selectedYear),
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
                        if (pickedDate == null) {
                        } else {
                          String formattedDate =
                              DateFormat('MM-yyyy').format(pickedDate);
                          print(pickedDate.day);

                          dateInput.text = formattedDate;

                          selectedMonth = pickedDate.month.toString();
                          selectedYear = pickedDate.year.toString();
                          BlocProvider.of<MonthlyWatcherBloc>(context).add(
                              MonthlyWatcherEvent.getMonthlyData(
                                  selectedMonth, selectedYear));
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

                  print('Inside UI: ${value.monthlyData}');

                  List<Monthly> dataList = value.monthlyData.asList();

                  return SfCartesianChart(
                    primaryXAxis: CategoryAxis(),
                    // Chart title
                    title: ChartTitle(text: 'Daily Count Data'),
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
                            monthly.month.toString(),
                        yValueMapper: (Monthly hourly, _) => hourly.inCount,
                        name: 'In Count',
                        yAxisName: 'MONTH',
                        xAxisName: 'COUNT',

                        // Enable data label
                        dataLabelSettings:
                            const DataLabelSettings(isVisible: true),
                      ),
                      ColumnSeries<Monthly, String>(
                        dataSource: dataList,
                        xValueMapper: (Monthly monthly, _) =>
                            monthly.month.toString(),
                        yValueMapper: (Monthly monthly, _) => monthly.outCount,
                        name: 'Out Count',
                        yAxisName: 'MONTH',
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
