import 'package:flutter/material.dart';

import 'expenses_list/expenses_list.dart';
import '../model/expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: 'Flutter Course',
      amount: 69.99,
      date: DateTime.now(),
      category: Category.work,
    ),
    Expense(
      title: 'Cinema',
      amount: 16.53,
      date: DateTime.now(),
      category: Category.leisure,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My expenses'),
      actions: [
        IconButton(
          icon: const Icon(Icons.add),
          onPressed: () {},
        ),
],
      ),

        body: Column(
      children: [
        const Text('Chart'),
        Expanded(
          child: ExpensesList(expenses: _registeredExpenses),
        ),
      ],
    ));
  }
}
