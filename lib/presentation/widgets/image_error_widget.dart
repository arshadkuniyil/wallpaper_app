import 'package:flutter/material.dart';
import 'package:wallpaper_app/core/constant.dart';

class ImageErrorWidget extends StatelessWidget {
  const ImageErrorWidget({Key? key, required this.height, required this.width})
      : super(key: key);
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: width / height,
      child: Container(
        decoration: kCardDecoration,
        child: const Center(
          child: Icon(
            Icons.error,
            color: Colors.red,
            size: 56,
          ),
        ),
      ),
    );
  }
}
