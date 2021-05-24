import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class ExpenseChart extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  const ExpenseChart(this.seriesList, this.animate);
  @override
  Widget build(BuildContext context) {
    return charts.PieChart(
      seriesList,
      animate: animate,
      animationDuration: Duration(seconds: 1),
      defaultRenderer: charts.ArcRendererConfig(
        arcWidth: 12,
        strokeWidthPx: 0,
        arcRendererDecorators: [
          charts.ArcLabelDecorator(
            labelPadding: 0,
            showLeaderLines: false,
            outsideLabelStyleSpec: charts.TextStyleSpec(
              fontSize: 12,
              fontFamily: 'Quicksand',
              color: charts.MaterialPalette.white,
            ),
          ),
        ],
      ),
    );
  }
}
