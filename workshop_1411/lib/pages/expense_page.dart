import 'package:flutter/material.dart';
import 'package:workshop_1411/models/expense.dart';
import 'package:workshop_1411/widgets/expense_item.dart';

class ExpensesPage extends StatefulWidget {
  const ExpensesPage(this.expenses, this.onRemove, this.onUndo, {Key? key})
      : super(key: key);
  final List<Expense> expenses;
  final void Function(int index, Expense expense) onRemove;
  final void Function() onUndo;

  @override
  _ExpensesPageState createState() => _ExpensesPageState();
}

class _ExpensesPageState extends State<ExpensesPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Grafik Bölümü"),
          const Spacer(),
          SizedBox(
            height: 400,
            child: ListView.builder(
              itemCount: widget.expenses.length,
              itemBuilder: (context, index) {
                return Dismissible(
                  key: ValueKey(widget.expenses[index]),
                  child: ExpenseItem(widget.expenses[index]),
                  onDismissed: (direction) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: const Text(
                          'Harcama Silindi!',
                          style: TextStyle(fontSize: 17),
                        ),
                        action: SnackBarAction(
                          label: 'Geri Al',
                          onPressed: () {
                            setState(() {
                              widget.onUndo();
                            });
                          },
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
