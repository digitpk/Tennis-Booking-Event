import 'package:flutter/material.dart';
import 'package:tennis_event/utilities/constants.dart';

class userRankingWidget extends StatelessWidget {
  const userRankingWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              CircleAvatar(
                radius: 25.0,
                backgroundImage: AssetImage('images/bg_image.jpg'),
              ),
              Text(
                'Ranks',
              ),
            ],
          ),
          SizedBox(
            width: 25.0,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Column(
              children: [
                Text(
                  'Player\'s Name',
                  style: TextStyle(
                    fontSize: 15,
                    color: kMainThemeColor,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.blur_circular,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '250 Points',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
