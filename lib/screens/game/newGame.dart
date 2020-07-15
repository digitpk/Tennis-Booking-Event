import 'package:flutter/material.dart';
import 'package:tennis_event/Widgets/newGameField.dart';
import 'package:tennis_event/utilities/constants.dart';
import 'package:tennis_event/utilities/styles.dart';
import 'package:tennis_event/widgets/bottomMenuBar.dart';

class NewGames extends StatefulWidget {
  @override
  _NewGameState createState() => _NewGameState();
}

class _NewGameState extends State<NewGames> {
  int _selectedIndex = 2;

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
          'Create New Game',
          style: kAppbarStyle,
        ),
      ),
      bottomNavigationBar: BottomMenuBar(
        selectedIndex: _selectedIndex = _selectedIndex,
      ),
      body: Column(
        children: [
          NewGFields(
            labelText: 'Game Name',
          ),
          NewGFields(
            labelText: 'Select Date',
          ),
          NewGFields(
            labelText: 'Select Time',
          ),
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
                hint: new Text("Choose Game Type"),
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
                hint: new Text("Choose Court"),
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
