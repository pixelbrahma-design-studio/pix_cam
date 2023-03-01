
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:pix_cam/application/weekly/weekly_watcher/weekly_watcher_bloc.dart';
import 'package:pix_cam/domain/weekly/weekly.dart';
import 'package:pix_cam/injection.dart';
import 'package:syncfusion_flutter_charts/charts.dart';


class WeeklyDataScreen extends StatelessWidget {
  const WeeklyDataScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    DateTimeRange? dateTimeRange;
    String timeStamp = DateTime.now().day.toString();
    TextEditingController dateInput = TextEditingController();

    return BlocProvider<WeeklyWatcherBloc>(
        create: (context) => getIt<WeeklyWatcherBloc>()
    ..add(WeeklyWatcherEvent.getWeeklyData(
        timeStamp)
        ),
      child: Column(
        children: [
          const SizedBox( height: 20,),

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
                      await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                          firstDate: DateTime(1900),
                          lastDate: DateTime(2100),
                        builder: (context, child) {
                          return Theme(
                              data: Theme.of(context).copyWith(
                                colorScheme: const ColorScheme.light(
                                    primary: Colors.blue,
                                    onSurface: Colors.black,
                              ),
                              ),
                              child: child!,
                          );
                        },
                      ).then((pickedDate) {
                        if(pickedDate == null) {
                          dateTimeRange = null;
                        }else{
                          String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);

                          print(pickedDate.day);

                          print(dateTimeRange);
                          dateInput.text = formattedDate;
                          String timeStamp = formattedDate;
                          BlocProvider.of<WeeklyWatcherBloc>(context).add(
                              WeeklyWatcherEvent.getWeeklyData(
                                  timeStamp ));
                        }
                      });
                    },),
                );
              }
             ),
          const SizedBox(
            height: 20,
          ),

          BlocBuilder<WeeklyWatcherBloc, WeeklyWatcherState>(
              builder: (context, state) {
                return state.maybeMap(
                  loading: (value) => const CircularProgressIndicator(),
                    success: (value) {
                    print ('inside load success');

                    print( 'Inside UI: ${value.weeklyData}');

                    List<Weekly> dataList = value.weeklyData.asList();
                    return SfCartesianChart(
                      primaryXAxis: CategoryAxis(),
                      title: ChartTitle(text: 'Weekly Count Data'),
                      legend: Legend(
                        isVisible: true,
                        position: LegendPosition.bottom,
                      ),
                      enableSideBySideSeriesPlacement: true,
                      tooltipBehavior: TooltipBehavior(enable: false),
                      series: <ChartSeries<Weekly, String>>[
                        ColumnSeries<Weekly, String>(
                          dataSource: dataList,
                          xValueMapper: (Weekly weekly, _) => weekly.day.toString(),
                          yValueMapper: (Weekly weekly, _) => weekly.inCount,
                          name: 'In Count',
                          yAxisName: 'HOUR',
                          xAxisName: 'COUNT',

                          // Enable data label
                          dataLabelSettings:
                          const DataLabelSettings(isVisible: true),
                        ),
                        ColumnSeries<Weekly, String>(
                          dataSource: dataList,
                          xValueMapper: (Weekly weekly, _) => weekly.day.toString(),
                          yValueMapper: (Weekly weekly, _) => weekly.outCount,
                          name: 'Out Count',
                          yAxisName: 'HOUR',
                          xAxisName: 'COUNT',

                          // Enable data label
                          dataLabelSettings: const DataLabelSettings(isVisible: true),
                        ),
                      ],

                    );
                    },
                    failures: (value) {
                    return const Text('load failed');
                    },
                    orElse: () => const Text('or else')
                );
              })
        ],
      ),
    );
  }
}
