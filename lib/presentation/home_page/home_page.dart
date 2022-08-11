import 'package:flutter/material.dart';
import 'package:wallpaper_app/core/colors.dart';
import 'package:wallpaper_app/core/constant.dart';
import 'package:wallpaper_app/core/string.dart';
import 'package:wallpaper_app/presentation/home_page/widgets/search_result_widget.dart';
import 'widgets/search_bar_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int _imgCategoryLength = imgCategoryList.length;
    return DefaultTabController(
      length: _imgCategoryLength,
      child: Scaffold(
        appBar: AppBar(
          title: SearchBarWidget(),
          flexibleSpace: Container(decoration: kMainGradient),
          bottom: TabBar(
            labelColor: kBlackColor,
            indicatorColor: kBlackColor,
            isScrollable: true,
            tabs: List.generate(
              _imgCategoryLength,
              (index) => Tab(
                text: imgCategoryList[index].isEmpty
                    ? "Home"
                    : imgCategoryList[index],
              ),
            ),
          ),
        ),
        body: SafeArea(
            child: Container(
          decoration: kMainGradient,
          child: TabBarView(
            children: List.generate(
              _imgCategoryLength,
              (index) => SearchResultWidget(imgQuery: imgCategoryList[index]),
            ),
          ),
        )),
      ),
    );
  }
}
