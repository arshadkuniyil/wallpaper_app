import 'package:flutter/material.dart';
import 'package:wallpaper_app/core/constant.dart';

import 'loading_indicator.dart';

class LoadingBuilderWidget extends StatelessWidget {
  const LoadingBuilderWidget({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: width / height,
      child: Container(
        decoration: kCardDecoration,
        child: const LoadingIndicator(),
      ),
    );
  }
}
