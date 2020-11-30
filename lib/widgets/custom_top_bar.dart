import 'package:flutter/material.dart';
import 'package:ymusic/models/models.dart';

class CustomTopBar extends StatelessWidget {
  final User currentUser;
  final String name;

  const CustomTopBar({Key key, @required this.currentUser, @required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
