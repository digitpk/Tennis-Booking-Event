import 'package:flutter/material.dart';
import 'package:tennis_event/utilities/boxes.dart';
import 'package:tennis_event/utilities/constants.dart';
import 'package:tennis_event/utilities/styles.dart';
import 'package:tennis_event/widgets/userRanking.dart';

class UserRanking extends StatefulWidget {
  @override
  _RankingState createState() => _RankingState();
}

class _RankingState extends State<UserRanking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: kMainThemeColor,
        centerTitle: true,
        title: Text(
          'Ranking',
          style: kAppbarStyle,
        ),
      ),
      body: Column(
        children: [
          UserRankingWidget(),
          DividerLine(),
          UserRankingWidget(),
          DividerLine(),
          UserRankingWidget(),
          DividerLine(),
          UserRankingWidget(),
          DividerLine(),
          UserRankingWidget(),
          DividerLine(),
        ],
      ),
    );
  }
}
