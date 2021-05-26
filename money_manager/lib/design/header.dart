import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:money_manager/models/expense.dart';
import './chart.dart';

class Header extends StatelessWidget {
  static List<charts.Series<Expense, String>> _series = [
    charts.Series<Expense, String>(
      id: 'Expense',
      domainFn: (Expense expense, _) => expense.category,
      measureFn: (Expense expense, _) => expense.value,
      labelAccessorFn: (Expense expense, _) => '\$${expense.value}',
      colorFn: (Expense expense, _) =>
          charts.ColorUtil.fromDartColor(expense.color),
      data: [
        Expense('Business1', 149.99, Color(0xff40abd5)),
        Expense('Business2', 149.99, Color(0xff40abd5)),
        Expense('Business3', 149.99, Color(0xff40abd5)),
        Expense('Business4', 149.99, Color(0xff40abd5)),
        Expense('Business5', 149.99, Color(0xff40abd5)),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;
    final mediaQuery = MediaQuery.of(context);
    return Container(
      width: double.infinity,
      height: mediaQuery.size.height * 4,
      color: primaryColor,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 150,
              child: ExpenseChart(_series, true),
            ),
            SizedBox(height: 14),
            Row(
              children: <Widget>[
                OutlinedButton(
                  onPressed: () {},
                  style: ButtonStyle(),
                  child: Container(),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
