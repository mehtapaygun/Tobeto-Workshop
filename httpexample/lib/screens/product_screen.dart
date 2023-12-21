import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:httpexample/models/product.dart';
import 'package:httpexample/widgets/product_item.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  List<Product> myProductList = [];

  @override
  void initState() {
    super.initState();
    getProducts();
  }

  void getProducts() async {
    //http isteği ile ürünleri elde etmek
    Uri url = Uri.https("dummyjson.com", "products");
    final response = await http.get(url);
    final dataAsJson = json.decode(response.body);

    final products = dataAsJson["products"];

    List<Product> productsWeb = [];
    for (var element in products) {
      myProductList.add(Product(
        id: element["id"],
        title: element["title"],
        description: element["description"],
        category: element["category"],
        thumbnail: element["thumbnail"],
        images: element["images"],
        price: element["price"],
      ));
    }
    setState(() {
      productsWeb = myProductList;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
            itemCount: myProductList.length,
            itemBuilder: (ctx, index) => ProductItem(
                category: myProductList[index].category,
                description: myProductList[index].description,
                images: myProductList[index].images,
                price: myProductList[index].price,
                imgUrl: myProductList[index].thumbnail,
                title: myProductList[index].title)));
  }
}
