import 'package:flutter/material.dart';
import 'package:news/models/categories.dart';
import 'package:news/pages/home/news_list.dart';
import 'package:news/widgets/logo.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final categories = Category.all();

    return DefaultTabController(
      length: categories.length,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            isScrollable: true,
            tabs: [...categories.map((category) => Tab(text: category.label))],
          ),
          title: Logo(),
        ),
        body: TabBarView(
          physics: BouncingScrollPhysics(),
          children: [
            ...categories.map((category) => NewsList(category: category))
          ],
        ),
      ),
    );
  }
}
