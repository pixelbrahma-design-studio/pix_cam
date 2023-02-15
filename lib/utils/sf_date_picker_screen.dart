import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:intl/intl.dart';

class SfDatePickerScreen extends StatelessWidget {
  final DateRangePickerSelectionMode dateRangePickerSelectionMode;
  Function onSubmit;
  SfDatePickerScreen({
    Key? key,
    required this.dateRangePickerSelectionMode,
    required this.onSubmit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SfDateRangePicker(
          showTodayButton: true,
          selectionMode: dateRangePickerSelectionMode,
          // showActionButtons: true,
          onSelectionChanged: (value) => onSubmit(value),
          // onSubmit: (value) => onSubmit(value),
          onCancel: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
