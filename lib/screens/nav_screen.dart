import 'package:flutter/material.dart';
import 'package:ymusic/config/palette.dart';
import 'package:ymusic/screens/screens.dart';
import 'package:ymusic/widgets/widgets.dart';

class NavScreen extends StatefulWidget {
  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  final List<Widget> _screens = [
    HomeScreen(),
    Scaffold(),
    Scaffold(),
  ];
  final Map<String, IconData> _icons = const {
    '홈': Icons.home,
    '둘러보기': Icons.explore,
    '보관함': Icons.library_music
  };
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      // 현재 선택된 화면을 나타냄.
      body: IndexedStack(
        index: _currentIndex,
        children: _screens,
      ),
      bottomNavigationBar: Container(
        child: CustomNavBar(
          icons: _icons,
          currentIndex: _currentIndex,
          onTap: (index) => setState(() => _currentIndex = index),
        ),
      )
    );
  }
}
