import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:wallpaper_app/application/bloc/search_bloc.dart';
import 'package:wallpaper_app/domain/search/search_service.dart';

// final List<String> imageUrl = [
//   'https://cdn.pixabay.com/photo/2017/03/15/09/00/crocus-2145539_150.jpg',
//   'https://cdn.pixabay.com/photo/2017/05/08/13/15/spring-bird-2295434_150.jpg',

// ];

class SearchResult extends StatelessWidget {
  const SearchResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return Expanded(
          child: SingleChildScrollView(
            child: StaggeredGrid.count(
              axisDirection: AxisDirection.down,
              crossAxisCount: 2,
              children: List.generate(
                  state.searchRespons!.hits!.length,
                  (index) => SearchResultTile(
                        imageUrl: state.searchRespons!.hits![index].webformatUrl!,
                      )),
            ),
          ),
        );
      },
    );
  }
}

class SearchResultTile extends StatelessWidget {
  final String imageUrl;
  SearchResultTile({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
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
        borderRadius: BorderRadius.circular(8),
        child: Image(
          fit: BoxFit.cover,
          image: NetworkImage(imageUrl),
        ),
      ),
    );
  }
}
