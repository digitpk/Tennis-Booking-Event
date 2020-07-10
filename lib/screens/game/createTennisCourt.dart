import 'package:flutter/material.dart';
import 'package:tennis_event/Widgets/newGameField.dart';
import 'package:tennis_event/utilities/constants.dart';
import 'package:tennis_event/utilities/styles.dart';

class NewTennisCourt extends StatefulWidget {
  @override
  _NewTennisCourtState createState() => _NewTennisCourtState();
}

class _NewTennisCourtState extends State<NewTennisCourt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: kMainThemeColor,
        centerTitle: true,
        title: Text(
          'Add New Tennis Court',
          style: kAppbarStyle,
        ),
      ),
      body: Column(
        children: [
          NewGFields(
            labelText: 'Court Name',
          ),
          NewGFields(
            labelText: 'Country',
          ),
          NewGFields(
            labelText: 'Street',
          ),
          NewGFields(
            labelText: 'Postal',
          ),
          NewGFields(
            labelText: 'City',
          ),
          NewGFields(
            labelText: 'Phone No.',
          ),
          NewGFields(
            labelText: 'Email',
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                child: Center(
                    child: Text(
                  'Submit',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                )),
                width: 971.0,
                height: 134.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(67.0),
                  color: const Color(0xff66af03),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
