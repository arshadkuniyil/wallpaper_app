import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallpaper_app/application/bloc/search_bloc.dart';
import 'package:wallpaper_app/core/colors.dart';
import 'package:wallpaper_app/core/constant.dart';

class ResultErrorWidget extends StatelessWidget {
  const ResultErrorWidget({
    Key? key,
    required this.errorText,
  }) : super(key: key);

  final String errorText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 20),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              boxShadow: kBoxshadow,
              color: mainColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Text(
                errorText,
                style:  const TextStyle(color: kBlackColor),
              ),
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          Container(
            width: double.infinity,
            height: 42,
            decoration: BoxDecoration(boxShadow: kBoxshadow),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(mainColor),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                   RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7),
                  ),
                ),
              ),
              onPressed: () {
                BlocProvider.of<SearchBloc>(context).add(
                  const SearchEvent.onSearch(
                    imageQuery: 'wallpaper',
                    
                  ),
                );
              },
              child:  const Text(
                'Refresh',
                style: TextStyle(color: kBlackColor),
              ),
            ),
          )
        ],
      ),
    );
  }
}
