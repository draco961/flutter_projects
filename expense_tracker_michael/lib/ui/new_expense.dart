import 'package:expense_tracker_michael/domain/models/expense.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NewExpense extends StatefulWidget {
  final void Function(Expense expense) addExpense;

  const NewExpense(this.addExpense, {super.key});

  @override
  State<NewExpense> createState() => _NewExpenseState();
}

class _NewExpenseState extends State<NewExpense> {
  final amount = TextEditingController();

  void addExpense() {
    widget.addExpense(Expense(4, 'New expense',  double.tryParse(amount.text), DateTime.now()));
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Column(
        children: [
          TextField(controller: amount, keyboardType: TextInputType.number),
          TextButton(onPressed: addExpense, child: const Text('Click me')),
        ],
      ),
    );
  }
}
