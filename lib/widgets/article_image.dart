import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news/models/article.dart';
import 'package:transparent_image/transparent_image.dart';

class ArticleImage extends StatelessWidget {
  final Article article;

  ArticleImage({this.article});

  @override
  Widget build(BuildContext context) {
    if (article.urlToImage != null) {
      return Hero(
        tag: article.title,
        child: Container(
          constraints: BoxConstraints(minHeight: 180),
          child: FadeInImage.memoryNetwork(
            fadeInDuration: Duration(milliseconds: 100),
            placeholder: kTransparentImage,
            image: article.urlToImage,
          ),
        ),
      );
    }

    return Container(
      height: 250,
      decoration: BoxDecoration(color: Colors.black.withOpacity(.8)),
    );
  }
}
