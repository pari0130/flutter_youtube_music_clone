import 'package:flutter/material.dart';
import 'package:ymusic/config/palette.dart';

class CustomNavBar extends StatelessWidget {
  final Map<String, IconData> icons;
  final int currentIndex;
  final Function(int) onTap;

  const CustomNavBar(
      {Key key,
      @required this.icons,
      @required this.currentIndex,
      @required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Palette.botNavBar,
      type: BottomNavigationBarType.fixed,
      items: icons
          .map(
            (title, icon) => MapEntry(
              title,
              BottomNavigationBarItem(
                  icon: Icon(icon, size: 25.0), label: title),
            ),
          )
          .values
          .toList(),
      currentIndex: currentIndex,
      selectedItemColor: Palette.NavSelected,
      selectedFontSize: 11.0,
      unselectedItemColor: Colors.grey,
      unselectedFontSize: 11.0,
      onTap: onTap,
    );
  }
}
