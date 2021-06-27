import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final double opacity;
  final double done;

  NewTransaction(this.opacity, this.done);

  @override
  Widget build(BuildContext context) {
    final Color primaryColor = Theme.of(context).primaryColor;
    return Expanded(
      child: AnimatedContainer(
        duration: Duration(seconds: 1),
        curve: Curves.fastLinearToSlowEaseIn,
        width: double.infinity,
        padding: EdgeInsets.all(40),
        color: Colors.white.withOpacity(opacity),
        child: Column(
          children: <Widget>[
            TextFormField(
              readOnly: true,
              initialValue: 'App Subscription',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
