import 'package:flutter/material.dart';
import 'package:tennis_event/utilities/constants.dart';
import 'package:tennis_event/utilities/styles.dart';

class CourtSchedule extends StatefulWidget {
  @override
  _CourtScheduleState createState() => _CourtScheduleState();
}

class _CourtScheduleState extends State<CourtSchedule> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: kMainThemeColor,
        centerTitle: true,
        flexibleSpace: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          verticalDirection: VerticalDirection.up,
          children: [
            Text(
              'Date & Time',
              style: kAppbarStyle,
            ),
            Text(
              'Court Schedule',
              style: kAppbarCourtStyle,
            ),
          ],
        ),
//        title: Text(
//          'Court Schedule',
//          style: kAppbarStyle,
//        ),
      ),
    );
  }
}
