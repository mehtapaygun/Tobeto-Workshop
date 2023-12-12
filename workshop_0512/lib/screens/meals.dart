import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:workshop_0512/data/dummy_data.dart';
import 'package:workshop_0512/models/category.dart';
import 'package:workshop_0512/models/meal.dart';
import 'package:workshop_0512/widgets/meal_card.dart';

class Meals extends ConsumerWidget {
  const Meals({Key? key, required this.category}) : super(key: key);
  final Category category;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<Meal> meals =
        mealList.where((element) => element.categoryId == category.id).toList();

    Widget widget = ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: meals.length,
        itemBuilder: (ctx, index) => MealCard(meal: meals[index]));

    if (meals.isEmpty) {
      widget = const Center(
        child: Text("Bu kategoride yemek bulunmamaktadır."),
      );
    }

    return Scaffold(
      appBar: AppBar(title: Text(category.name)),
      body: widget,
    );
  }
}
