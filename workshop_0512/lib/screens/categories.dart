import 'package:flutter/material.dart';
import 'package:workshop_0512/data/dummy_data.dart';
import 'package:workshop_0512/models/category.dart';
import 'package:workshop_0512/screens/favorites.dart';
import 'package:workshop_0512/screens/meals.dart';
import 'package:workshop_0512/widgets/category_card.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  void _changeScreen(Category category, BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (ctx) => Meals(
              category: category,
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bir kategori seçin.."),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (ctx) => Favorites()));
              },
              icon: const Icon(Icons.favorite))
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.indigoAccent),
              child: Text("Menü"),
            ),
            ListTile(
              title: const Text("Ana Sayfa"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            childAspectRatio: 2),
        children: [
          for (final c in categoryList)
            CategoryCard(
              category: c,
              onCategoryClick: () => _changeScreen(c, context),
            )
        ],
      ),
    );
  }
}
