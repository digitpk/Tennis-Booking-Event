import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tennis_event/Widgets/bottomButton.dart';
import 'package:tennis_event/Widgets/newGameField.dart';
import 'package:tennis_event/utilities/constants.dart';
import 'package:tennis_event/utilities/countryList.dart';
import 'package:tennis_event/utilities/styles.dart';

import 'userProfile.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  String selectCountry = 'Select Country';

  List<DropdownMenuItem> getCountryList() {
    List<DropdownMenuItem<String>> newCountryList = [];

    for (String country in countryList) {
      var newCountry = DropdownMenuItem(
        child: Text(country),
        value: country,
      );
      newCountryList.add(newCountry);
    }
    return newCountryList;
  }

  @override
  Widget build(BuildContext context) {
    getCountryList();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white10,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Register Now',
          style: kAppbarStyleRegister,
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
                      value: selectCountry,
                      isExpanded: true,
                      items: getCountryList(),
                      onChanged: (value) {
                        setState(() {
                          selectCountry = value;
                        });
                      },
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
