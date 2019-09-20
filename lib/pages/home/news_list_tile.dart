import 'package:flutter/material.dart';
import 'package:news/models/article.dart';
import 'package:news/widgets/article_image.dart';

class NewsListTile extends StatefulWidget {
  final Article article;
  final Color color;

  NewsListTile({this.article, this.color = Colors.indigoAccent});

  @override
  _NewsListTileState createState() => _NewsListTileState();
}

class _NewsListTileState extends State<NewsListTile>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Stack(
          fit: StackFit.loose,
          alignment: Alignment.bottomLeft,
          children: <Widget>[
            AnimatedSize(
              vsync: this,
              duration: Duration(milliseconds: 300),
              child: ArticleImage(article: widget.article),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
                padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                decoration: BoxDecoration(
                  color: widget.color.withOpacity(.8),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Text(
                  widget.article.source ?? '',
                  maxLines: 1,
                  textAlign: TextAlign.end,
                  style: TextStyle(
                      fontFamily: 'Times New Roman',
                      color: Colors.white.withOpacity(.8),
                      fontSize: 14.0),
                ),
              ),
            ),
          ],
        ),
        Container(
          alignment: Alignment.bottomLeft,
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(.5),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                widget.article.title ?? '',
                style: TextStyle(color: Colors.white, fontSize: 16.0),
              ),
              Text(widget.article.author ?? '',
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.6), fontSize: 14.0)),
            ],
          ),
        )
      ],
    );
  }
}
