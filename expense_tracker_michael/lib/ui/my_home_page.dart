import 'package:expense_tracker_michael/data/repositories/expense_repository.dart';
import 'package:expense_tracker_michael/domain/models/expense.dart';
import 'package:expense_tracker_michael/ui/expense_list.dart';
import 'package:expense_tracker_michael/ui/new_expense.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Expense> expenses = ExpenseRepository().getExpenses();

  void addExpense(Expense expense) {
    setState(() {
      expenses.add(expense);
    });
  }

  void openBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) => Scaffold(body: NewExpense(addExpense)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        actions: [
          IconButton(icon: const Icon(Icons.add), onPressed: openBottomSheet),
        ],
      ),
      body: Center(child: ExpenseList(expenses)),
    );
  }
}
