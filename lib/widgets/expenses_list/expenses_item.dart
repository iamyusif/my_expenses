import 'package:flutter/material.dart';

import '../../model/expense.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem(this.expense, {super.key});

  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 16.0,
            horizontal: 20.0,
          ),
          child: Column(
            children: [
              Text(expense.title),
              const SizedBox(height: 4.0),
              Row(
                children: [
                  Text(
                    "\$${expense.amount.toStringAsFixed(2)}",
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Icon(
                        categoryIcons[expense.category],
                        ),
                      const SizedBox(width: 8.0),
                      Text(expense.formattedDate),
                    ],
                  ),
                ],
              ),

            ],
          )),
    );
  }
}
