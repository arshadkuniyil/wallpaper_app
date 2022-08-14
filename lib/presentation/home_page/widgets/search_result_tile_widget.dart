import 'package:flutter/material.dart';
import 'package:wallpaper_app/core/constant.dart';
import 'package:wallpaper_app/presentation/image_full_screen/image_full_screen.dart';
import 'package:wallpaper_app/presentation/widgets/image_error_widget.dart';
import 'package:wallpaper_app/presentation/widgets/loading_builder_widget.dart';

class SearchResultTileWidget extends StatelessWidget {
  final String imageUrl;
  final String imageUrlLarge;
  final double height;
  final double width;
  const SearchResultTileWidget({
    Key? key,
    required this.imageUrl,
    required this.imageUrlLarge,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ImageFullScreen(
              imageUrl: imageUrlLarge, height: height, width: width),
        ),
      ),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 14),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          boxShadow: kBoxshadow
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(imageUrl, fit: BoxFit.cover,
              frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
            return AspectRatio(
              aspectRatio: width / height,
              child: Container(decoration: kCardDecoration, child: child),
            );
          }, loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress != null) {
              return LoadingBuilderWidget(width: width, height: height);
            }
            return child;
          }, errorBuilder: (context, error, stackTrace) {
            return ImageErrorWidget(height: height, width: width);
          }),
        ),
      ),
    );
  }
}
