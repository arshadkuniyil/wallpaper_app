import 'package:flutter/material.dart';
import 'package:wallpaper_app/core/constant.dart';
import 'package:wallpaper_app/presentation/widgets/image_error_widget.dart';
import 'package:wallpaper_app/presentation/widgets/loading_builder_widget.dart';


class ImageContainerWidget extends StatelessWidget {
  const ImageContainerWidget(
      {Key? key,
      required this.imageUrl,
      required this.size,
      required this.width,
      required this.height})
      : super(key: key);

  final String imageUrl;
  final Size? size;
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    final Size deviceSize = MediaQuery.of(context).size;
    return Center(
      child: Container(
        width: size != null ? size!.width : deviceSize.width,
        margin: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          boxShadow: kBoxshadow,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Image.network(
            imageUrl,
            frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
              return AspectRatio(
                aspectRatio: width / height,
                child: Container(
                  decoration: kCardDecoration,
                  child: child,
                ),
              );
            },
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress != null) {
                return LoadingBuilderWidget(width: width, height: height);
              }
              return child;
            },
            errorBuilder: (context, error, stackTrace) =>
                ImageErrorWidget(height: height, width: width),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
