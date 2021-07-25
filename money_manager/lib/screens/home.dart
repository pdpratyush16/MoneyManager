import 'package:flutter/material.dart';
import 'package:money_manager/design/header.dart';
import 'package:money_manager/design/transactionCard.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _ht = 0.55;

  void _addTransaction() {
    // setState(() {
    //   _ht = 0.08;
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.8),
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.short_text),
          onPressed: () {},
        ),
        centerTitle: true,
        title: Text(
          'Money Man',
          style: TextStyle(
            fontSize: 16.0,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.person_add_alt_1_outlined,
            ),
          ),
        ],
      ),
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Header(_addTransaction),
            ],
          ),
          TransactionCard(_ht),
          // SizedBox(
          //   height: 2,
          // ),
        ],
      ),
    );
  }
}
