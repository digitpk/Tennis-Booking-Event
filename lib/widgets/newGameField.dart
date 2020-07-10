import 'package:flutter/material.dart';
import 'package:tennis_event/utilities/constants.dart';

class NewGFields extends StatelessWidget {
  NewGFields({@required this.labelText, this.hintText});

  final String hintText;
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: kDividerLineGray,
              width: 2.0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: kDividerLineGray,
            ),
          ),
          hintText: hintText,
          labelText: labelText,
        ),
      ),
    );
  }
}
