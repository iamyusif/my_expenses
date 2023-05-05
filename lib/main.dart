import 'package:flutter/material.dart';
import 'package:spend_app/widgets/expenses.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(useMaterial3: true),
    debugShowCheckedModeBanner: false,
    home: const Expenses(),
  ));
}
