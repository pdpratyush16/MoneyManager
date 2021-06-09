import 'package:flutter/material.dart';
import 'package:money_manager/models/transactions.dart';

class TransactionItem extends StatelessWidget {
  final Transaction transaction;
  TransactionItem(this.transaction);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListTile(
        leading: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: transaction.color.withOpacity(0.8),
            borderRadius: BorderRadius.circular(12),
          ),
          alignment: Alignment.center,
          child: Icon(
            transaction.iconData,
            size: 20,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
