import 'package:flutter/material.dart';
import 'package:wallpaper_app/core/colors.dart';
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.broken_image_rounded,
              color: Colors.red,
              size: 56,
            ),
            SizedBox(height: 20,),
            Text(
              "image failed to load",
              style: TextStyle(color: kBlackColor),
            )
          ],
        ),
      ),
    );
  }
}
