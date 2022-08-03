import 'package:flutter/material.dart';
import 'package:wallpaper_app/core/colors.dart';

class SetWallpaperButton extends StatelessWidget {
  const SetWallpaperButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(mainColor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
              side: const BorderSide(color: kBlackColor),
            ),
          ),
        ),
        onPressed: () {

          
        },
        child: const Text(
          'Set Wallpaper',
          style: TextStyle(color: kBlackColor),
        ),
      ),
    );
  }
}
