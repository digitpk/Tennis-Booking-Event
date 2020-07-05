import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tennis_event/Widgets/bottomButton.dart';
import 'package:tennis_event/Widgets/newGameField.dart';
import 'package:tennis_event/utilities/constants.dart';
import 'package:tennis_event/utilities/styles.dart';

import 'userProfile.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  var _countryList = [
    'Select Country',
    'Pakistan',
    'India',
    'USA',
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
          'Register Now',
          style: kAppbarStyle,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset(
                'assets/images/racket_image.png',
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
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
                          this._currentSelectedItem = newValueSelected;
                        });
                      },
                      value: _currentSelectedItem,
                    ),
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: NewGFields(
                          labelText: 'Phone No.',
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            side: BorderSide(color: kMainThemeColor),
                          ),
                          color: Colors.white,
                          child: Text(
                            'Verify',
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 50,
              ),
              child: NewGFields(
                labelText: 'Enter Code',
              ),
            ),
          ),
          Expanded(
            child: BottomButton(
              buttonTitle: 'Register',
              tapping: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UserProfile(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
