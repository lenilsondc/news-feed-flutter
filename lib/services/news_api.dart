import 'dart:convert';
//import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

import 'package:news/models/article.dart';
import 'package:news/models/categories.dart';

Future<List<Article>> fetchNews(BuildContext context, Category category) async {
  String url = 'assets/data/${category.id}.json';
  String jsonString = await DefaultAssetBundle.of(context).loadString(url);

  List<dynamic> articlesData = json.decode(jsonString)['articles'];

  return articlesData.map((item) => Article.fromJson(item)).toList();
  // newsapi.org request
  //
  //String base = 'https://newsapi.org/v2';
  //String url = '$base/top-headlines?country=us&apiKey=$apiKey${category != null ? '&category=' + category.id : ''}';
  //final response = await http.get(url);
  //
  //if (response.statusCode == 200) {
  //  List<dynamic> articlesData = json.decode(response.body)['articles'];
  //  return articlesData.map((item) => Article.fromJson(item)).toList();
  //} else {
  //  throw Exception('Failed to load post');
  //}
}
