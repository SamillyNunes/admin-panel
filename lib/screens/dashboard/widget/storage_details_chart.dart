import 'package:admin_panel/core/app_colors.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class StorageDetailsChart extends StatelessWidget {
  const StorageDetailsChart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          PieChart(
            PieChartData(
              sections: pieChartSelectionData,
              startDegreeOffset: -90,
              sectionsSpace: 0,
              centerSpaceRadius: 70,
            ),
          ),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: defaultPadding),
                Text(
                  '29.1',
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        height: 0.5,
                      ),
                ),
                const Text(
                  'of 128GB',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

List<PieChartSectionData> pieChartSelectionData = [
  PieChartSectionData(
    value: 25,
    color: AppColors.primaryColor,
    showTitle: false,
    radius: 25,
  ),
  PieChartSectionData(
    value: 20,
    color: AppColors.aliveBlue,
    showTitle: false,
    radius: 22,
  ),
  PieChartSectionData(
    value: 10,
    color: AppColors.orange,
    showTitle: false,
    radius: 19,
  ),
  PieChartSectionData(
    value: 15,
    color: AppColors.red,
    showTitle: false,
    radius: 16,
  ),
  PieChartSectionData(
    value: 25,
    color: AppColors.primaryColor.withOpacity(.1),
    showTitle: false,
    radius: 13,
  ),
];
