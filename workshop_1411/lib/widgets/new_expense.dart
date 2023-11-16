import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({Key? key}) : super(key: key);

  @override
  _NewExpenseState createState() => _NewExpenseState();
}

class _NewExpenseState extends State<NewExpense> {
  var _expenseNameController = TextEditingController();
  var _expensePriceController = TextEditingController();
  var _selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime.now().subtract(const Duration(days: 365)),
      lastDate: DateTime.now(),
    );

    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          children: [
            TextField(
              controller: _expenseNameController,
              maxLength: 50,
              decoration: InputDecoration(labelText: "Harcama Adı"),
            ),
            TextField(
              controller: _expensePriceController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Harcama Miktarı"),
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () => _selectDate(context),
                  icon: const Icon(Icons.calendar_today),
                ),
                Text("Tarih Seçiniz"),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                print(
                    "Kaydedilen değer: ${_expenseNameController.text} ${_expensePriceController.text}");
              },
              child: Text("Ekle"),
            )
          ],
        ),
      ),
    );
  }
}
