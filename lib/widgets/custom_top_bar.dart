import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ymusic/assets.dart';
import 'package:ymusic/models/models.dart';

class CustomTopBar extends StatelessWidget {
  final User currentUser;
  final String name;

  const CustomTopBar({Key key, this.currentUser, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SvgPicture.asset('assets/images/ymusic_logo1.svg'),
    );
  }
}
