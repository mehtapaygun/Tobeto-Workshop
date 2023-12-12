import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:workshop_0512/models/meal.dart';
import 'package:workshop_0512/providers/favorites_provider.dart';

class Favorites extends ConsumerStatefulWidget {
  const Favorites({Key? key}) : super(key: key);

  @override
  ConsumerState<Favorites> createState() => _FavoritesState();
}

class _FavoritesState extends ConsumerState<Favorites> {
  @override
  Widget build(BuildContext context) {
    List<Meal> favorites = ref.watch(favoriteMealsProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text("Favoriler"),
      ),
      body: ListView.builder(
        itemCount: favorites.length,
        itemBuilder: (ctx, index) => InkWell(
          onTap: () {},
          child: Card(
              child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(favorites[index].name),
          )),
        ),
      ),
    );
  }
}
