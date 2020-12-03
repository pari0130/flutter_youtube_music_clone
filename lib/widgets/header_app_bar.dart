import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ymusic/assets.dart';
import 'package:ymusic/config/palette.dart';
import 'package:ymusic/models/models.dart';

class HeaderAppBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      brightness: Brightness.light,
      backgroundColor: Palette.customBar,
      title: Container(
        child: SvgPicture.asset(Assets.music_logo),
      ),
      centerTitle: false,
      // title 글자 가운데 정렬 여부
      floating: true,
      // 스크롤 시 상단 자동 숨김
      actions: [
        IconButton(
          padding: EdgeInsets.zero,
          icon: Icon(Icons.search),
          iconSize: 28.0,
          color: Colors.white,
          onPressed: () => print('Search'),
        ),
        IconButton(
          padding: EdgeInsets.zero,
          icon: Icon(Icons.search),
          iconSize: 28.0,
          color: Colors.white,
          onPressed: () => print('Search'),
        ),
      ],
    );
  }
}
