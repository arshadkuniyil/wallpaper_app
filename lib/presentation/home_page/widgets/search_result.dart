import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:wallpaper_app/application/bloc/search_bloc.dart';
import 'package:wallpaper_app/core/colors.dart';
import 'package:wallpaper_app/domain/search/model/api_call_status.dart';
import 'package:wallpaper_app/domain/search/model/hit.dart';
import 'package:wallpaper_app/presentation/widgets/loading_indicator.dart';

import 'result_error_widget.dart';
import 'search_result_tile.dart';

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
        final List<Hit> hits;

        if (state.isLoading) {
          return const Padding(
            padding: EdgeInsets.all(30.0),
            child: LoadingIndicator(),
          );
        }

        if (state.searchRespons.status == ApiCallStatus.clientFailure) {
          return const ResultErrorWidget(
              errorText: "Check network connection\n");
        } else if (state.searchRespons.status == ApiCallStatus.serverFailure) {
          return const ResultErrorWidget(
              errorText:
                  "Server failed to load images \n   swipe down to refresh");
        } else if (state.searchRespons.hits!.isEmpty) {
          return const ResultErrorWidget(
            errorText:
                "Sorry, we couldn't find any matches.\n\nThings you can try:\n   • Check the spelling.\n   • Use synonyms or generic terms.",
          );
        }

        hits = state.searchRespons.hits!;
        return Expanded(
          child: RefreshIndicator(
            onRefresh: () async => _refresh(context),
            child: SingleChildScrollView(
              controller: scrollController,
              child: StaggeredGrid.count(
                axisDirection: AxisDirection.down,
                crossAxisCount: 2,
                children: List.generate(
                  hits.length + (state.scrollMaxLoading ? 1 : 0),
                  (index) {
                    if (index < hits.length) {
                      return SearchResultTile(
                        imageUrl: hits[index].webformatUrl!,
                        imageUrlLarge: hits[index].largeImageUrl!,
                        height: hits[index].webformatHeight!.toDouble(),
                        width: hits[index].webformatWidth!.toDouble(),
                      );
                    } else {
                      scrollController
                          .jumpTo(scrollController.position.maxScrollExtent);

                      return const LoadingIndicator();
                    }
                  },
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

_refresh(BuildContext context) {
  BlocProvider.of<SearchBloc>(context).add(
    const SearchEvent.onSearch(
      imageQuery: 'wallpaper',
    ),
  );
}
