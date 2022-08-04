import 'package:flutter/material.dart';
import 'package:wallpaper_app/core/colors.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Center(
        child: CircularProgressIndicator(
      backgroundColor: kIndigoColor,
      color: mainColor,
      strokeWidth: 6.0,
    ));
  }
}
