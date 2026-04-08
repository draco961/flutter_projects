enum Category {
   food,
   travel
}

class Expense{
  int? id;
  double? amount;
  DateTime? date;
  String? title;
  Category? category;

  Expense(this.id, this.title, this.amount, this.date);
}