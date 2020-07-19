import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tennis_event/Widgets/gamesCard.dart';
import 'package:tennis_event/utilities/constants.dart';
import 'package:tennis_event/utilities/styles.dart';

class MyGames extends StatefulWidget {
  static const String id = 'mygames_screen';
  @override
  _MyGamesState createState() => _MyGamesState();
}

class _MyGamesState extends State<MyGames> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: kMainThemeColor,
        centerTitle: true,
        title: Text(
          'My Games',
          style: kAppbarStyle,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              UserGamesCard(),
              UserGamesCard(),
              UserGamesCard(),
            ],
          ),
        ],
      ),
    );
  }
}
