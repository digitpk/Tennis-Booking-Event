import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tennis_event/utilities/constants.dart';

import 'allScreens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _selectedIndex = 1;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Roboto',
        accentColor: kMainThemeColor,
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 27.0, fontWeight: FontWeight.bold),
          headline2: TextStyle(fontSize: 20.0, fontStyle: FontStyle.normal),
        ),
      ),
//      home: MainScreen(),
      home: AllScreens(),
      // Start the app with the "/" named route. In this case, the app starts
      // on the FirstScreen widget.
//      initialRoute: '/',
//      routes: {
//        // When navigating to the "/" route, build the FirstScreen widget.
//        '/': (context) => MainScreen(),
//        // When navigating to the "/second" route, build the SecondScreen widget.
//        '/second': (context) => Settings(),
//        '/third': (context) => Settings(),
//      },
    );
  }
}
