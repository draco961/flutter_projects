import 'package:expense_tracker_michael/domain/models/expense.dart';

class ExpenseRepository {
  List<Expense> getExpenses() {
    return [
      Expense(1, 'Groceries', 50.0, DateTime.now()),
      Expense(2, 'Gas', 45.0, DateTime.now()),
      Expense(3, 'Dining', 35.50, DateTime.now()),
    ];
  }
}
