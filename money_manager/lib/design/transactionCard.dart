import 'package:flutter/material.dart';
import 'package:money_manager/design/newItem.dart';
import 'package:money_manager/models/transactions.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class TransactionCard extends StatefulWidget {
  final double height;
  TransactionCard(this.height);
  @override
  _TransactionCardState createState() => _TransactionCardState();
}

class _TransactionCardState extends State<TransactionCard> {
  int _date = 16;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final providedTransaction = Provider.of<Transactions>(context);
    return Positioned(
      bottom: 0,
      left: mediaQuery.size.width * 0.06,
      child: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 1),
          curve: Curves.fastOutSlowIn,
          width: mediaQuery.size.width * 0.87,
          height: mediaQuery.size.height * widget.height,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
          ),
          child: Column(
            children: <Widget>[
              Container(
                height: 60,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                        top: 8,
                        right: 12,
                      ),
                      child: Text(
                        'Details',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(6),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          InkWell(
                            onTap: () {
                              setState(() {
                                _date--;
                              });
                            },
                            child: Icon(Icons.arrow_left),
                          ),
                          Text(
                            '$_date ${DateFormat('MMMM YYYY').format(DateTime.now())}',
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                _date++;
                              });
                            },
                            child: Icon(Icons.arrow_right),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: providedTransaction.transactions.length,
                    itemBuilder: (context, i) {
                      return TransactionItem(
                          providedTransaction.transactions[i]);
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
