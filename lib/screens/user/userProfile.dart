import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/material.dart';
import 'package:tennis_event/Widgets/bottomButton.dart';
import 'package:tennis_event/Widgets/newGameField.dart';
import 'package:tennis_event/screens/game/joinGame.dart';
import 'package:tennis_event/utilities/constants.dart';
import 'package:tennis_event/utilities/enumLists.dart';
import 'package:tennis_event/utilities/styles.dart';

class UserProfile extends StatefulWidget {
  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  Gender myGender;
  Gender myLevel;

  var _countryList = [
    'Select Country',
    'Pakistan',
    'India',
  ];
//  var _sides = [
//    'Select Side',
//    'Right Handed',
//    'Left Handed',
//  ];
  var _currentSelectedCountry = 'Select Country';
  var _selectedSide = 'Right-left Handed';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: kMainThemeColor,
        centerTitle: true,
        title: Text(
          'Profile',
          style: kAppbarStyle,
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/bg_image.jpg'),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      NewGFields(
                        labelText: 'Username',
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
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              CountryListPick(
                                isShowFlag: false,
                                isShowTitle: true,
                                isShowCode: false,
                                isDownIcon: true,
                                showEnglishName: true,
                                onChanged: (CountryCode code) {
                                  setState(() {
                                    code.name;
                                  });
                                },
                              ),
                            ],
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
                            hint: new Text("Choose Side"),
                            items: _countryList
                                .map(
                                  (String dropDownStringItem) =>
                                      DropdownMenuItem<String>(
                                    value: dropDownStringItem,
                                    child: Text(
                                      dropDownStringItem,
                                    ),
                                  ),
                                )
                                .toList(),
                            onChanged: (String newValueSelected) {
                              setState(() {
                                this._currentSelectedCountry = newValueSelected;
                              });
                            },
                            value: _currentSelectedCountry,
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
                            hint: new Text("Choose Side"),
                            items: _countryList
                                .map(
                                  (String dropDownStringItem) =>
                                      DropdownMenuItem<String>(
                                    value: dropDownStringItem,
                                    child: Text(
                                      dropDownStringItem,
                                    ),
                                  ),
                                )
                                .toList(),
                            onChanged: (String newValueSelected) {
                              setState(() {
                                this._currentSelectedCountry = newValueSelected;
                              });
                            },
                            value: _currentSelectedCountry,
                          ),
                        ),
                      ),
                      NewGFields(
                        labelText: 'Phone No.',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            buttonTitle: 'Save',
            tapping: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => JoinGame(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
