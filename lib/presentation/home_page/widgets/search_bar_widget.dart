import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallpaper_app/application/bloc/search_bloc.dart';
import 'package:wallpaper_app/core/colors.dart';
import 'package:wallpaper_app/core/constant.dart';
import 'package:url_launcher/url_launcher.dart';

class SearchBarWidget extends StatelessWidget {
  SearchBarWidget({Key? key}) : super(key: key);
  final TextEditingController searchTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () async {
              Uri url = Uri.parse('https://pixabay.com/');
              try {
                if (!await launchUrl(url,
                    mode: LaunchMode.externalApplication)) {
                  throw 'Could not launch $url';
                }
              } catch (e) {}
            },
            icon: Image.asset(
              "assets/images/pixabay_logo_square.png",
              width: 36,
              height: 36,
            )),
        Container(
          width: MediaQuery.of(context).size.width - 104,
          height: 32,
          decoration: BoxDecoration(
            color: Colors.grey.shade700,
            borderRadius: BorderRadius.circular(6),
            boxShadow: kBoxshadow,
          ),
          margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Center(
            child: TextFormField(
              style: const TextStyle(color: Colors.white),
              cursorColor: kBlackColor,
              controller: searchTextController,
              onFieldSubmitted: (value) {
                BlocProvider.of<SearchBloc>(context).add(
                  SearchEvent.onSearch(
                    imageQuery: value,
                  ),
                );
                searchTextController.clear();
              },
              decoration: const InputDecoration.collapsed(
                hintStyle: TextStyle(color: Colors.white54),
                hintText: "Search images ",
              ),
            ),
          ),
        ),
      ],
    );
  }
}
