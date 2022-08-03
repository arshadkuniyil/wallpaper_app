import 'package:flutter/material.dart';

class ImageContainerWidget extends StatelessWidget {
  const ImageContainerWidget(
      {Key? key, required this.imageUrl, required this.size})
      : super(key: key);

  final String imageUrl;
  final Size? size;

  @override
  Widget build(BuildContext context) {
    final Size deviceSize = MediaQuery.of(context).size;
    return Center(
      child: Container(
        width: size != null ? size!.width : deviceSize.width,
        margin: const EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade600,
              blurRadius: 2,
              spreadRadius: 2.0,
              offset: const Offset(
                3,
                3,
              ),
            )
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
