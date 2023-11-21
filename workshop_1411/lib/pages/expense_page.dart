import 'package:flutter/material.dart';
import 'package:workshop_1411/data/data.dart';
import 'package:workshop_1411/widgets/expense_item.dart';

class ExpensesPage extends StatefulWidget {
  const ExpensesPage({Key? key}) : super(key: key);

  @override
  _ExpensesPageState createState() => _ExpensesPageState();
}

class _ExpensesPageState extends State<ExpensesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: expenseData.length,
        itemBuilder: (context, index) {
          return ExpenseItem(expense: expenseData[index]);
        },
      ),
    );
  }
}
