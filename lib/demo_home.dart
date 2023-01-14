import 'package:cloud_functions/cloud_functions.dart';
import 'package:flutter/material.dart';
import 'package:pix_cam/models/event.dart';
import 'package:pix_cam/models/result.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class DemoHome extends StatefulWidget {
  String title;
  DemoHome({Key? key, required this.title}) : super(key: key);

  @override
  State<DemoHome> createState() => _DemoHomeState();
}

class _DemoHomeState extends State<DemoHome> {
  List<Result> rowData = [];

  String selectedDate = '1';
  String selectedMonth = '1';

  List<String> days = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12',
    '13',
    '14',
    '15',
    '16',
    '17',
    '18',
    '19',
    '20',
    '21',
    '22',
    '23',
    '24',
    '25',
    '26',
    '27',
    '28',
    '29',
    '30',
    '31'
  ];

  List<String> months = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Row(
            children: [
              const Text('Select Day'),
              const SizedBox(width: 20),
              DropdownButton(
                value: selectedDate,
                icon: const Icon(Icons.keyboard_arrow_down),
                items: days.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    selectedDate = newValue!;
                  });
                },
              ),
              const SizedBox(
                width: 50,
              ),
              const Text('Select Month'),
              const SizedBox(width: 20),
              DropdownButton(
                value: selectedMonth,
                icon: const Icon(Icons.keyboard_arrow_down),
                items: months.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    selectedMonth = newValue!;
                  });
                },
              ),
            ],
          ),

          // rowData != null ? Text(rowData.toString()) : const Text('no data'),
          SfCartesianChart(
            primaryXAxis: CategoryAxis(),
            // Chart title
            title: ChartTitle(text: 'One day count'),
            // Enable legend
            legend: Legend(isVisible: true),
            enableSideBySideSeriesPlacement: true,
            // Enable tooltip
            tooltipBehavior: TooltipBehavior(enable: true),
            series: <ChartSeries<Result, String>>[
              ColumnSeries<Result, String>(
                dataSource: rowData,
                xValueMapper: (Result result, _) => result.hour.toString(),
                yValueMapper: (Result result, _) => result.inCount,
                name: 'In Count',
                yAxisName: 'HOUR',
                xAxisName: 'COUNT',

                // Enable data label
                dataLabelSettings: DataLabelSettings(isVisible: true),
              ),
              ColumnSeries<Result, String>(
                dataSource: rowData,
                xValueMapper: (Result result, _) => result.hour.toString(),
                yValueMapper: (Result result, _) => result.outCount,
                name: 'Out Count',
                yAxisName: 'HOUR',
                xAxisName: 'COUNT',

                // Enable data label
                dataLabelSettings: DataLabelSettings(isVisible: true),
              ),
            ],
          ),
          // Expanded(
          //   child: Padding(
          //     padding: const EdgeInsets.all(8.0),
          //     //Initialize the spark charts widget
          //     child: SfSparkLineChart.custom(
          //       //Enable the trackball
          //       trackball: SparkChartTrackball(
          //           activationMode: SparkChartActivationMode.tap),
          //       //Enable marker
          //       marker: SparkChartMarker(
          //           displayMode: SparkChartMarkerDisplayMode.all),
          //       //Enable data label
          //       labelDisplayMode: SparkChartLabelDisplayMode.all,
          //       xValueMapper: (int index) => data[index].year,
          //       yValueMapper: (int index) => data[index].sales,
          //       dataCount: 5,
          //     ),
          //   ),
          // )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'PixCam Header',
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              title: const Text('Det Data'),
              onTap: () async {
                var rowDataJson = await getTableData();
                print('data before ${rowDataJson}');
                rowDataJson[0].forEach((data) {
                  print('inside map $data');
                  rowData.add(Result.fromJson(data));
                });

                print('data ${rowData}');

                setState(() {});

                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  Future<dynamic> getTableData() async {
    HttpsCallable callable =
        FirebaseFunctions.instance.httpsCallable('fetchDataQuery');
    final results = await callable.call({
      'query': 'some query',
      'selectedDay': selectedDate,
      'selectedMonth': selectedMonth
    });
    var itemsList = results.data;

    return itemsList;
  }
}
