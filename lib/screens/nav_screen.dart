import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
    TourScreen(),
    StoreScreen(),
  ];
  final Map<String, IconData> _icons = const {
    '홈': Icons.home,
    '둘러보기': Icons.explore,
    '보관함': Icons.library_music
  };
  int _currentIndex = 0;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 현재 선택된 화면을 나타냄.
      body: IndexedStack(
        index: _currentIndex,
        children: _screens,
      ),
      bottomNavigationBar: Container(
        child: FooterNavBar(
          icons: _icons,
          currentIndex: _currentIndex,
          onTap: (index) => {
            print('test => $index'),
            setState(() => _currentIndex = index),
          },
        ),
      ),
    );
  }
}
