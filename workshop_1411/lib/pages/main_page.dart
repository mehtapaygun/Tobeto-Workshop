import 'package:flutter/material.dart';
import 'package:workshop_1411/pages/expense_page.dart';
import 'package:workshop_1411/widgets/new_expense.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: const Text("Expense App"),
        backgroundColor: Colors.deepPurpleAccent,
        actions: [
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (ctx) {
                  return NewExpense();
                },
              );
            },
            icon: const Icon(Icons.add_box),
            iconSize: 40,
          )
        ],
      ),
      body: const ExpensesPage(),
    );
  }
}
