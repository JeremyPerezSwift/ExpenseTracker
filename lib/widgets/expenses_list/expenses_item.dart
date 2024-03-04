import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';

class ExpensesItem extends StatelessWidget {
  const ExpensesItem(this.expense, {super.key});

  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        // Padding
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),

        // Column
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title
            Text(
              expense.title,
              style: Theme.of(context).textTheme.titleLarge,
            ),

            // SizedBox
            const SizedBox(height: 4),

            // Row Details Group
            Row(
              children: [
                // Amount
                Text('\$${expense.amount.toStringAsFixed(2)}'),

                // Spacer
                const Spacer(),

                // Row Other Details
                Row(
                  children: [
                    // Icon
                    Icon(categoryIcons[expense.category]),

                    // SizedBox
                    const SizedBox(width: 8),

                    // Date
                    Text(expense.formattedDate),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
