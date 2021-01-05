import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class Content {
  final String title;
  final String imageUrl;
  final String titleImageUrl;
  final String description;
  final Color color;

  const Content({
    @required this.title,
    @required this.imageUrl,
    this.description,
    this.titleImageUrl,
    this.color,
  });
}
