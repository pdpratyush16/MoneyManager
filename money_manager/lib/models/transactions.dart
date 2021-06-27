import 'package:flutter/material.dart';

class Transaction {
  final int id;
  final String title;
  final double value;
  final String category;
  final IconData iconData;
  final Color color;

  Transaction({
    required this.id,
    required this.title,
    required this.value,
    required this.category,
    required this.iconData,
    required this.color,
  });
}

class Transactions with ChangeNotifier {
  List<Transaction> _transactions = [
    Transaction(
      id: 1,
      title: 'Dinner',
      value: 123.5,
      category: 'Meals',
      iconData: Icons.fastfood,
      color: Colors.teal,
    ),
    Transaction(
      id: 2,
      title: 'Birthday',
      value: 139.2,
      category: 'Gifts',
      iconData: Icons.card_giftcard,
      color: Color(0xffe8505b),
    ),
    Transaction(
      id: 3,
      title: 'Gaming',
      value: 27.9,
      category: 'Fun',
      iconData: Icons.gamepad_outlined,
      color: Color(0xfff6d743),
    ),
    Transaction(
      id: 4,
      title: 'Softwares',
      value: 125.72,
      category: 'Business',
      iconData: Icons.work,
      color: Color(0xff40bad5),
    ),
    Transaction(
      id: 5,
      title: 'Books',
      value: 38.94,
      category: 'Entertainment',
      iconData: Icons.casino,
      color: Color(0xfff57b51),
    ),
    Transaction(
      id: 6,
      title: 'Breakfast',
      value: 15.0,
      category: 'Meals',
      iconData: Icons.fastfood,
      color: Color(0xffe8505b),
    ),
  ];

  List<Transaction> get transactions {
    return _transactions;
  }
}
