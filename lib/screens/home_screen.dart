import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ymusic/assets.dart';
import 'package:ymusic/config/palette.dart';
import 'package:ymusic/data/data.dart';
import 'package:ymusic/models/models.dart';
import 'package:ymusic/widgets/widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:ymusic/config/palette.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TrackingScrollController _trackingScrollController =
      TrackingScrollController();

  @override
  void dispose() {
    _trackingScrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {FocusScope.of(context).unfocus()},
      child: Scaffold(
          body: _HomeScreenMobile(scrollController: _trackingScrollController)),
    );
  }
}

class _HomeScreenMobile extends StatelessWidget {
  final TrackingScrollController scrollController;

  const _HomeScreenMobile({Key key, @required this.scrollController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: scrollController,
        slivers: [
          HeaderAppBar(),
          SliverToBoxAdapter(
            child: ContentList(
              key: PageStorageKey('favList'),
              title: '즐겨 듣는 음악',
              contentList: favList,
            ),
          ),
          SliverPadding(
            // 최 상단 즐겨듣는음악 이외에는 top padding 을 추가
            padding: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 2.0),
            sliver: SliverToBoxAdapter(
              child: ContentList(
                key: PageStorageKey('reMusicList'),
                title: '다시듣기',
                contentList: reMusicList,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
