import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    Key? key,
    required this.imgUrl,
    required this.title,
    required this.category,
    required this.description,
    required this.images,
    required this.price,
  }) : super(key: key);
  final String imgUrl;
  final String title;
  final String category;
  final String description;
  final List images;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [Text(title)],
        ),
        SizedBox(
          height: 15,
        ),
        Image.network(
          imgUrl,
          width: 250,
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [Text("Fiyatı: $price \$")],
        )
      ],
    );
  }
}
