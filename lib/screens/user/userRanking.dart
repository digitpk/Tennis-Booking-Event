import 'package:flutter/material.dart';
import 'package:tennis_event/Widgets/bottomButton.dart';
import 'package:tennis_event/Widgets/userRanking.dart';
import 'package:tennis_event/screens/game/newGame.dart';
import 'package:tennis_event/utilities/boxes.dart';
import 'package:tennis_event/utilities/constants.dart';
import 'package:tennis_event/utilities/styles.dart';

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
          userRankingWidget(),
          DividerLine(),
          userRankingWidget(),
          DividerLine(),
          userRankingWidget(),
          DividerLine(),
          userRankingWidget(),
          DividerLine(),
          userRankingWidget(),
          DividerLine(),
          BottomButton(
            buttonTitle: 'Go to Create New Game',
            tapping: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NewGames(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
