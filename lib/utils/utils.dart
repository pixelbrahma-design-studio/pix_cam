
import 'package:flutter/material.dart';

class Utils extends StatelessWidget {
  const Utils({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  bool isMobile(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    return deviceWidth < 600;
  }

}

