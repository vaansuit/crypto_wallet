import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../riverpod/providers.dart';

class ChartDetailsPage extends ConsumerWidget {
  const ChartDetailsPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var cryptoInfo = ref.watch(cryptoInfoProvider.notifier).state;
    int chartIndexSelected = ref.watch(chartIndexSelectedProvider);
    List points =
        cryptoInfo.cryptoMarketDataChart.values.toList()[chartIndexSelected];

    return Container(
      padding: const EdgeInsets.all(10),
      width: double.infinity,
      height: 200,
      child: LineChart(
        LineChartData(
          gridData: FlGridData(show: false),
          borderData: FlBorderData(show: false),
          lineBarsData: [
            LineChartBarData(
              dotData: FlDotData(
                show: false,
              ),
              spots: points
                  .map(
                    (point) => FlSpot(point[0], point[1]),
                  )
                  .toList(),
              color: Colors.red,
            )
          ],
          titlesData: FlTitlesData(
            topTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            rightTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            leftTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
          ),
        ),
      ),
    );
  }
}
