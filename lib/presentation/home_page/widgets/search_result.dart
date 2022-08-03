import 'dart:async';
import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:wallpaper_app/application/bloc/search_bloc.dart';
import 'package:wallpaper_app/domain/search/model/search_respons.dart';
import 'package:wallpaper_app/domain/search/search_service.dart';
import 'package:wallpaper_app/presentation/image_full_screen/image_full_screen.dart';

// final List<String> imageUrl = [
//   'https://cdn.pixabay.com/photo/2017/03/15/09/00/crocus-2145539_150.jpg',
//   'https://cdn.pixabay.com/photo/2017/05/08/13/15/spring-bird-2295434_150.jpg',

// ];

class SearchResult extends StatelessWidget {
  SearchResult({Key? key}) : super(key: key);
  final scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    scrollController.addListener(() {
      if (scrollController.position.atEdge &&
          scrollController.position.pixels != 0) {
        BlocProvider.of<SearchBloc>(context)
            .add(const SearchEvent.onScrollMax());
      }
    });

    return BlocBuilder<SearchBloc, SearchState>(
      builder: (context, state) {
        SearchRespons? searchRespons;

        if (state.isLoading) {
          return const _LoadIndicator();
        }
        if (state.searchRespons != null) {
          searchRespons = state.searchRespons;
        } else {
          return const SizedBox();
        }
        return Expanded(
          child: SingleChildScrollView(
            controller: scrollController,
            child: StaggeredGrid.count(
              axisDirection: AxisDirection.down,
              crossAxisCount: 2,
              children: List.generate(
                searchRespons!.hits!.length + (state.scrollMaxLoading ? 1 : 0),
                (index) {
                  if (index < state.searchRespons!.hits!.length) {
                    return SearchResultTile(
                      imageUrl: state.searchRespons!.hits![index].webformatUrl!,
                      imageUrlLarge:
                          state.searchRespons!.hits![index].webformatUrl!,
                    );
                  } else {
                    scrollController
                        .jumpTo(scrollController.position.maxScrollExtent);

                    return const _LoadIndicator();
                  }
                },
              ),
            ),
          ),
        );
      },
    );
  }
}

class _LoadIndicator extends StatelessWidget {
  const _LoadIndicator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}

class SearchResultTile extends StatelessWidget {
  final String imageUrl;
  final String imageUrlLarge;
  const SearchResultTile(
      {Key? key, required this.imageUrl, required this.imageUrlLarge})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ImageFullScreen(
                  imageUrl: imageUrlLarge,
                )),
      ),
      child: Container(
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
          child: Image.network(imageUrl, fit: BoxFit.cover,
              loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress != null) {
              return Container(
                height: MediaQuery.of(context).size.height*.33,
                decoration:  BoxDecoration(color: Colors.white.withOpacity(0.9)),
                child: const Center(child: CircularProgressIndicator()),
              );
            }
            return child;
          }),
        ),
      ),
    );
  }
}
