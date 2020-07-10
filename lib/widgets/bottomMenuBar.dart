import 'package:flutter/material.dart';
import 'package:tennis_event/utilities/constants.dart';

class BottomMenuBar extends StatelessWidget {
  const BottomMenuBar({
    Key key,
    @required int selectedIndex,
  })  : _selectedIndex = selectedIndex,
        super(key: key);

  final int _selectedIndex;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Join Game'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.videogame_asset),
          title: Text('Games'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.group_add),
          title: Text('Invite'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.star),
          title: Text('Ranking'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat),
          title: Text('Chat'),
        ),
      ],
      currentIndex: _selectedIndex,
      elevation: 25,
      selectedItemColor: kMainThemeColor,
      unselectedItemColor: Colors.black,
      showUnselectedLabels: true,
      onTap: (_selectedIndex) => _selectedIndex,
    );
  }
}
