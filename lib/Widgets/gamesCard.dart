import 'package:flutter/material.dart';
import 'package:tennis_event/utilities/styles.dart';

class UserGamesCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            leading: CircleAvatar(
              radius: 15,
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage(
                'assets/images/racket_icon.png',
              ),
            ),
            title: Text(
              'Participants:',
              style: kCardSubtitle,
            ),
            dense: true,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 25.0,
              top: 8.0,
              bottom: 8.0,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.timer,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 25.0,
                      ),
                      child: Text(
                        'Date/Time',
                        style: kCardSubtitle,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.blur_circular,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 25.0,
                      ),
                      child: Text(
                        'Location',
                        style: kCardSubtitle,
                      ),
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
