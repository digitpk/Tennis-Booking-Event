import 'package:flutter/material.dart';
import 'package:tennis_event/utilities/styles.dart';

import 'chatHome.dart';

class MyChatapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Messages',
          style: kAppbarStyle,
        ),
      ),
      body: ChatHome(),
    );
  }
}
