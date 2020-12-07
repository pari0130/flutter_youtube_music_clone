import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ymusic/config/palette.dart';

class ProfileAvatar extends StatelessWidget {
  final String imageUrl;

  const ProfileAvatar({Key key, @required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          radius: 20.0,
          backgroundColor: Palette.customBar,
          child: CircleAvatar(
            radius: 17.0,
            backgroundColor: Colors.black,
            backgroundImage: CachedNetworkImageProvider(imageUrl),
          ),
        ),
      ],
    );
  }
}
