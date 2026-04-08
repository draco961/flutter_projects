import 'package:expense_tracker_michael/domain/models/expense.dart';
import 'package:flutter/material.dart';

class ExpenseList extends StatelessWidget {
  final List<Expense>? expenses;

  const ExpenseList(this.expenses, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses?.length ?? 0,
      itemBuilder: (context, index) => Card(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(expenses?[index].title ?? 'No title', style: TextStyle(
                    color: Colors.pink,
                  ) ),
                  Text(expenses?[index].amount.toString() ?? '0'),
                ],
              ),
              Column(
                children: [
                  Text(expenses?[index].date?.toIso8601String() ?? 'No Date'),
                ],
              ),
            ],
          ),
        ),
      ),
      //itemBuilder: (context, index) => Text(expenses?[index].title ?? 'No title'),
    );
  }
}
