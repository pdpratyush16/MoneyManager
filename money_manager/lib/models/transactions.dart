import 'package:flutter/material.dart';

class Transaction {
  final int id;
  final String title;
  final double value;
  final String category;
  final IconData iconData;
  final Color color;

  Transaction(
      {required this.id,
      required this.title,
      required this.value,
      required this.category,
      required this.iconData,
      required this.color});
}

class Transactions with ChangeNotifier {
  List<Transaction> _transactions = [
    Transaction(
        id: 1,
        title: 'Breakfast',
        value: 15.0,
        category: 'Meals',
        iconData: Icons.fastfood,
        color: Colors.teal),
  ];

  List<Transaction> get transactions {
    return _transactions;
  }
}
