import 'package:flutter/material.dart';
import 'package:workshop_0512/models/category.dart';
import 'package:workshop_0512/models/meal.dart';

const categoryList = [
  Category(
      id: "1", name: "Başlangıçlar", color: Color.fromARGB(255, 71, 18, 163)),
  Category(
      id: "2", name: "Ara Sıcaklar", color: Color.fromARGB(255, 153, 95, 255)),
  Category(
      id: "3", name: "Ana Yemekler", color: Color.fromARGB(255, 71, 18, 163)),
  Category(id: "4", name: "Tatlılar", color: Color.fromARGB(255, 153, 95, 255)),
  Category(
      id: "5",
      name: "Sıcak İçecekler",
      color: Color.fromARGB(255, 71, 18, 163)),
  Category(
      id: "6",
      name: "Soğuk İçecekler",
      color: Color.fromARGB(255, 153, 95, 255)),
];

const mealList = [
  Meal(
      id: "1",
      categoryId: "2",
      name: "Paçanga Böreği",
      imageUrl:
          "https://i.lezzet.com.tr/images-xxlarge-recipe/pacanga_boregi-69450364-faae-4863-be1d-34dc5cd7c1ed.jpg",
      ingredients: [
        "Pastırma",
        "Yupka",
        "Kaşar",
        "Yağ",
      ]),
  Meal(
      id: "2",
      categoryId: "1",
      name: "Mercimek Çorbası",
      imageUrl:
          "https://cdn.yemek.com/mnresize/940/940/uploads/2014/06/mercimek-corbasi-yemekcom.jpg",
      ingredients: ["Mercimek", "Soğan", "Tuz", "Patates", "Baharat"]),
  Meal(
      id: "1",
      categoryId: "3",
      name: "Kebap",
      imageUrl:
          "https://th.bing.com/th/id/R.70155da699de465833524cc34760c8c5?rik=9gbGt7BOjl3pHg&pid=ImgRaw&r=0",
      ingredients: ["Kıyma", "Baharat", "Tereyağı", "Biber", "Tuz"]),
  Meal(
      id: "1",
      categoryId: "4",
      name: "Künefe",
      imageUrl:
          "https://lezzet.blob.core.windows.net/images-xxlarge-recipe/kaymakli_kunefe-1fda980f-6b06-464f-8cbc-101155f01e3d.jpg",
      ingredients: ["Kadayıf", "Kaşar", "Tereyağı", "Antep Fıstığı"]),
  Meal(
      id: "2",
      categoryId: "2",
      name: "Patates Kroket",
      imageUrl:
          "https://th.bing.com/th/id/OIP.C87-ogZjqbViPmpb4OARZwHaE8?rs=1&pid=ImgDetMain",
      ingredients: ["Patates", "Nişasta", "Yumurta", "Tuz", "Baharat"]),
  Meal(
      id: "1",
      categoryId: "1",
      name: "Humus",
      imageUrl:
          "https://th.bing.com/th/id/OIP.YGACAaVzYr-PmNplRs0RgQHaHA?rs=1&pid=ImgDetMain",
      ingredients: ["Nohut", "Tahin"]),
  Meal(
      id: "1",
      categoryId: "5",
      name: "Americano",
      imageUrl:
          "https://img.allw.mn/content/yq/lv/op5s26zv57913cedc4374067688080_500x500.jpg",
      ingredients: []),
  Meal(
      id: "1",
      categoryId: "6",
      name: "Milkshake",
      imageUrl:
          "https://zurb.com/blog/system/images/51/original/iStock_000016454329Large.jpg?1317077653",
      ingredients: []),
];
