import 'package:flutter/material.dart';
import 'package:news/models/article.dart';
import 'package:news/models/categories.dart';
import 'package:news/pages/home/news_list_tile.dart';
import 'package:news/pages/news_detail/news_detail.dart';
import 'package:news/services/news_api.dart';

class NewsList extends StatelessWidget {
  final Category category;

  NewsList({this.category});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Article>>(
      future: fetchNews(context, category),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final articles = snapshot.data;

          return ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: articles.length,
            itemBuilder: (context, index) {
              final Article article = articles[index];

              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NewsDetailPage(article: article)),
                  );
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.3), blurRadius: 1)
                    ]),
                    child: NewsListTile(
                        article: articles[index], color: category.color),
                  ),
                ),
              );
            },
          );
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }

        // By default, show a loading spinner.
        return Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.indigoAccent),
              )
            ],
          ),
        );
      },
    );
  }
}
