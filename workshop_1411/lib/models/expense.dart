import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

const uuid = Uuid();

enum Category { work, travel, food, dress, activity }

const categoryIcons = {
  Category.work: Icons.work_outline_outlined,
  Category.travel: Icons.travel_explore,
  Category.food: Icons.food_bank_rounded,
  Category.dress: Icons.abc,
  Category.activity: Icons.local_activity
};

class Expense {
  Expense(
      {required this.name,
      required this.price,
      required this.date,
      required this.category})
      : id = uuid.v4();
  final String id;
  final String name;
  final double price;
  final DateTime date;
  final Category category;
}
