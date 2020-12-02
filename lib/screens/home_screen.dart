import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ymusic/config/palette.dart';
import 'package:ymusic/data/data.dart';
import 'package:ymusic/models/models.dart';
import 'package:ymusic/widgets/widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:ymusic/config/palette.dart';

class HomeScreen extends StatefulWidget {
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
      onTap: () => FocusScope.of(context).unfocus(),
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
    return CustomScrollView(
      controller: scrollController,
      slivers: [
        SliverAppBar(
          brightness: Brightness.light,
          backgroundColor: Palette.customBar,
          title: Container(
            child: SvgPicture.asset('assets/images/ymusic_logo1.svg'),
          ),
          centerTitle: false,
          // title 글자 가운데 정렬 여부
          floating: true,
          // 스크롤 시 상단 자동 숨김
          actions: [
//            CircleButton(
//              icon: Icons.search,
//              iconSize: 30.0,
//              onPressed: () => print('Search'),
//            ),
//            CircleButton(
//              icon: MdiIcons.facebookMessenger,
//              iconSize: 30.0,
//              onPressed: () => print('Search'),
//            ),
          ],
        ),
        SliverPadding(
          padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 5.0),
          sliver: SliverToBoxAdapter(
//            child: Stories(
//              currentUser: currentUser,
//              stories: stories,
//            ),
              ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return ListTile(title: Text("Item $index"));
            },
            childCount: 20,
          ),
        ),
      ],
    );
  }
}
