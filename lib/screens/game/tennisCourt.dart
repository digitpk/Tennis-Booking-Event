import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tennis_event/Widgets/bottomButton.dart';
import 'package:tennis_event/Widgets/newGameField.dart';
import 'package:tennis_event/utilities/constants.dart';
import 'package:tennis_event/utilities/styles.dart';

import 'courtSchedule.dart';
import 'createTennisCourt.dart';

class TennisCourt extends StatefulWidget {
  @override
  _TennisCourtState createState() => _TennisCourtState();
}

class _TennisCourtState extends State<TennisCourt> {
  var _countryList = [
    'Select Country',
    'Pakistan',
    'India',
  ];
  var _currentSelectedItem = 'Select Country';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: kMainThemeColor,
        centerTitle: true,
        title: Text(
          'Tennis Court',
          style: kAppbarStyle,
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              decoration: BoxDecoration(
                border: Border.all(
                    width: 2.0,
                    color: kMainThemeColor,
                    style: BorderStyle.solid),
              ),
              child: DropdownButton<String>(
                isExpanded: true,
                hint: new Text("Select Country"),
                items: _countryList
                    .map(
                      (String dropDownStringItem) => DropdownMenuItem<String>(
                        value: dropDownStringItem,
                        child: Text(
                          dropDownStringItem,
                        ),
                      ),
                    )
                    .toList(),
                onChanged: (String newValueSelected) {
                  setState(() {
                    this._currentSelectedItem = newValueSelected;
                  });
                },
                value: _currentSelectedItem,
              ),
            ),
          ),
          Expanded(
            child: Column(
//              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                NewGFields(
                  labelText: 'Search Court Here',
                ),
                SizedBox(
                  height: 25.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FlatButton(
                      color: kMainThemeColor,
                      shape: StadiumBorder(),
                      child: Row(
                        children: [
                          Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text(
                              'Add New Court',
                              style: kMainTextStyle,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NewTennisCourt(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          BottomButton(
            buttonTitle: 'Go to Court Schedule',
            tapping: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CourtSchedule(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
