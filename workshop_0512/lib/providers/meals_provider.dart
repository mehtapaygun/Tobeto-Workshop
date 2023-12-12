import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:workshop_0512/models/meal.dart';

final mealsProvider = Provider((ProviderRef ref) {
  return const [
    Meal(
        id: "2",
        categoryId: "2",
        name: "Patates Kroket",
        imageUrl:
            "https://th.bing.com/th/id/OIP.C87-ogZjqbViPmpb4OARZwHaE8?rs=1&pid=ImgDetMain",
        ingredients: ["Patates", "Nişasta", "Yumurta", "Tuz", "Baharat"]),
  ];
});
