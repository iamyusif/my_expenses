import 'package:flutter/material.dart';
import 'package:spend_app/model/expense.dart';
import 'package:spend_app/widgets/expenses_list/expenses_item.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({super.key, required this.expenses});

  final List<Expense> expenses;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: expenses.length,
        itemBuilder: (ctx, index) => ExpenseItem(expenses[index]));

  }
}
