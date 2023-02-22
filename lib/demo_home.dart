import 'package:flutter/material.dart';
import 'package:pix_cam/presentation/screens/daily_data_screen.dart';
import 'package:pix_cam/presentation/screens/monthly_data_screen.dart';
import 'package:pix_cam/presentation/screens/weekly_data_screen.dart';
import 'package:pix_cam/utils/utils.dart';
import 'package:pix_cam/widgets/drawer.dart';

class DemoHome extends StatefulWidget {
  String title;
  int pageNumber;
  DemoHome({
    Key? key,
    required this.title,
    required this.pageNumber,
  }) : super(key: key);

  @override
  State<DemoHome> createState() => _DemoHomeState();
}

class _DemoHomeState extends State<DemoHome> {
  late PageController _controller;

  @override
  void initState() {
    // TODO: implement initState
    _controller = PageController(
      initialPage: widget.pageNumber,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        automaticallyImplyLeading: false,
      ),
      drawer: const Utils().isMobile(context) ? const DrawerWidget() : null,
      body: Row(
        children: [
          if (!const Utils().isMobile(context)) const DrawerWidget(),
          Flexible(
            child: PageView(
              controller: _controller,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                const DailyDataScreen(),
                WeeklyDataScreen(),
                const MonthlyDataScreen()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
