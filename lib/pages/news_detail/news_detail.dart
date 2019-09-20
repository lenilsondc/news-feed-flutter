import 'package:flutter/material.dart';
import 'package:news/models/article.dart';
import 'package:news/widgets/article_image.dart';
import 'package:news/widgets/logo.dart';

class NewsDetailPage extends StatelessWidget {
  final Article article;
  NewsDetailPage({this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Logo(),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ArticleImage(article: article),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    article.source ?? '',
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.indigoAccent,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Times New Roman'),
                  ),
                  SizedBox(height: 10),
                  Text(
                    article.title ?? '',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    article.author ?? '',
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.6), fontSize: 14.0),
                  ),
                  SizedBox(height: 15),
                  Text(
                    article.content ?? '',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: RaisedButton(
                      elevation: 0,
                      child: Text(
                        'Full article',
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Colors.indigoAccent,
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
