import 'package:flutter/material.dart';
import 'package:tennis_event/Widgets/bottomButton.dart';
import 'package:tennis_event/Widgets/playersCard.dart';
import 'package:tennis_event/screens/game/tennisCourt.dart';
import 'package:tennis_event/utilities/constants.dart';
import 'package:tennis_event/utilities/styles.dart';

class Players extends StatefulWidget {
  @override
  _PlayersState createState() => _PlayersState();
}

class _PlayersState extends State<Players> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: kMainThemeColor,
        centerTitle: true,
        title: Text(
          'Players',
          style: kAppbarStyle,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              PlayersCard(),
              PlayersCard(),
            ],
          ),
          BottomButton(
            buttonTitle: 'Go to Tennis Court',
            tapping: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TennisCourt(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
