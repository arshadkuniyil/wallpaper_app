import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallpaper_app/application/bloc/search_bloc.dart';
import 'package:wallpaper_app/core/colors.dart';
import 'package:wallpaper_app/core/constant.dart';

class SearchBarWidget extends StatelessWidget {
  SearchBarWidget({Key? key}) : super(key: key);
  final TextEditingController searchTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
       width: MediaQuery.of(context).size.width,
       height: 32,
      decoration: BoxDecoration(
        color: mainColor,
        borderRadius: BorderRadius.circular(15),
        boxShadow: kBoxshadow,
      ),
     
      margin: const EdgeInsets.symmetric(horizontal: 12,vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 25) ,
      child: Center(
        child: TextFormField(
          
          
          cursorColor: kIndigoColor,
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
            hintText: "Search images ",
          ),
        ),
      ),
    );
  }
}
