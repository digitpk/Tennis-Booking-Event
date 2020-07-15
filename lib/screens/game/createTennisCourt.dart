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
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        'Submit',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100.0),
                color: const Color(0xff66af03),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
