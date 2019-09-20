import 'package:flutter/material.dart';

class Category {
  final String id;
  final String label;
  final Color color;

  Category({this.id, this.label, this.color});

  static List<Category> all() => <Category>[
        Category(id: 'general', label: 'General', color: Colors.indigoAccent),
        Category(
            id: 'entertainment', label: 'Entertainment', color: Colors.purple),
        Category(id: 'sports', label: 'Sports', color: Colors.teal),
        Category(id: 'health', label: 'Health', color: Colors.redAccent),
        Category(id: 'science', label: 'Science', color: Colors.green),
        Category(id: 'technology', label: 'Technology', color: Colors.blue),
        Category(id: 'business', label: 'Business', color: Colors.blueGrey),
      ];
}
