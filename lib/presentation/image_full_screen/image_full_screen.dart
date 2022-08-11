import 'package:flutter/material.dart';
import 'package:simple_animations/stateless_animation/play_animation.dart';
import 'package:wallpaper_app/core/constant.dart';

import 'widgets/image_container_widget.dart';
import 'widgets/set_wallpaper_button.dart';

class ImageFullScreen extends StatelessWidget {
  const ImageFullScreen(
      {Key? key,
      required this.imageUrl,
      required this.height,
      required this.width})
      : super(key: key);

  final String imageUrl;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: kMainGradient,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: PlayAnimation<Size?>(
                  duration: const Duration(milliseconds: 500),
                  tween: SizeTween(
                    begin: Size(width, height) * 0.1,
                    end: Size(width, height),
                  ),
                  builder: (context, child, value) {
                    return ImageContainerWidget(
                      imageUrl: imageUrl,
                      size: value,
                      height: height,
                      width: width,
                    );
                  },
                ),
              ),
              SetWallpaperButton(
                imageUrl: imageUrl,
              )
            ],
          ),
        ),
      ),
    );
  }
}
