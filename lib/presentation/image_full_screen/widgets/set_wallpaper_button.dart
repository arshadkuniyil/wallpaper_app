import 'dart:io';

import 'package:async_wallpaper/async_wallpaper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_cache_manager/file.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:wallpaper_app/core/colors.dart';
import 'package:wallpaper_app/core/constant.dart';
import 'package:wallpaper_app/presentation/widgets/loading_indicator.dart';

class SetWallpaperButton extends StatelessWidget {
  SetWallpaperButton({Key? key, required this.imageUrl}) : super(key: key);
  final String imageUrl;
  ValueNotifier buttonLoading = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: buttonLoading,
      builder: (context, value, child) {
        if (buttonLoading.value) {
          return const Padding(
            padding: EdgeInsets.all(8.0),
            child: LoadingIndicator(),
          );
        }

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 12),
          child: Container(
            height: 36,
            width: double.infinity,
            decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
              BoxShadow(
                color: Colors.grey.shade800,
                blurRadius: 1,
                spreadRadius: 1,
                offset: const Offset(
                  1,
                  1,
                ),
              )
            ]),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.grey.shade700),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    
                  ),
                ),
              ),
              onPressed: () async {
                buttonLoading.value = true;
                String result = '';
                

                try {
                  final File file =
                      await DefaultCacheManager().getSingleFile(imageUrl);
                  await AsyncWallpaper.setWallpaperFromFile(
                      file.path, AsyncWallpaper.BOTH_SCREENS);
                  result = 'Set wallpaper successful';
                } on PlatformException {
                  result = 'Failed to get wallpaper.';
                } on SocketException{
                  result = 'check internet connection';
                }
                catch (e) {
                  result = '$e';
                } finally {
                  var snackBar = SnackBar(
                    content: Text(result),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  buttonLoading.value = false;
                }
              },
              child:  const Text(
                'Set Wallpaper',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        );
      },
    );
  }
}
