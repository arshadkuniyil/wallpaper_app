import 'package:async_wallpaper/async_wallpaper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/file.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter/services.dart';
import 'package:simple_animations/stateless_animation/play_animation.dart';
import 'package:wallpaper_app/core/colors.dart';

import 'widgets/image_container.dart';
import 'widgets/set_wallpaper_button.dart';

class ImageFullScreen extends StatelessWidget {
  const ImageFullScreen({Key? key, required this.imageUrl}) : super(key: key);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: PlayAnimation<Size?>(
          duration: const Duration(milliseconds: 500),
          tween: SizeTween(begin: size * 0.5, end: size),
          builder: (context, child, value) => Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ImageContainerWidget(imageUrl: imageUrl, size: value),
              const SetWallpaperButton()
            ],
          ),
        ),
      ),
    );
  }
}



