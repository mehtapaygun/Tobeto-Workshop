import 'package:flutter/material.dart';
import 'package:workshop_0911/pages/expenses_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'ExpenseApp',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w900,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add_box),
              iconSize: 40,
            ),
          ],
        ),
        body: const ExpensesPage(),
      ),
    ),
  );
}
