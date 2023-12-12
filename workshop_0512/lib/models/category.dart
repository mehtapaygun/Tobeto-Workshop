import 'package:flutter/material.dart';

class Category {
  const Category(
      {required this.id, required this.name, this.color = Colors.deepPurple});

  final String id;
  final String name;
  final Color color;
}
