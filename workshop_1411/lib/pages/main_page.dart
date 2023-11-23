import 'package:flutter/material.dart';
import 'package:workshop_1411/data/data.dart';
import 'package:workshop_1411/models/expense.dart';
import 'package:workshop_1411/pages/expense_page.dart';
import 'package:workshop_1411/widgets/new_expense.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int refreshNumber = 0;
  late Expense removedExpense;
  late int indexNumber;
  List<Expense> expense = listExpenseItem();
  addExpense(Expense newExpense) {
    setState(() {
      expense.add(newExpense);
    });
  }

  removeExpense(int index, Expense newExpense) {
    setState(() {
      removedExpense = newExpense;
      indexNumber = index;
      expense.remove(newExpense);
    });
  }

  undoExpense() {
    setState(() {
      expense.insert(indexNumber, removedExpense);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expense App"),
        actions: [
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return NewExpense(addExpense);
                },
              );
            },
            icon: const Icon(Icons.add_box),
            iconSize: 40,
          )
        ],
      ),
      body: ExpensesPage(expenses, removeExpense, undoExpense),
    );
  }
}
