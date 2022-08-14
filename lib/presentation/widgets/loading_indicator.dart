import 'package:flutter/material.dart';
import 'package:wallpaper_app/core/colors.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return    const Center(
        child: CircularProgressIndicator(
      
      color: kBlackColor,
      strokeWidth: 6.0,
    ));
  }
}
