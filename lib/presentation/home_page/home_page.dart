import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallpaper_app/application/bloc/search_bloc.dart';
import 'package:wallpaper_app/presentation/home_page/widgets/search_result.dart';

import 'widgets/search_bar_widget.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

   bool firstFetch = false;
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      if (!firstFetch) {
        firstFetch = true;
        BlocProvider.of<SearchBloc>(context)
            .add(const SearchEvent.onSearch(imageQuery: 'wallpaper'));
      }
    });

    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          SearchBarWidget(),
          SearchResult(),
        ],
      )),
    );
  }
}
