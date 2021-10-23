import 'package:admin_panel/constants.dart';
import 'package:admin_panel/core/app_colors.dart';
import 'package:admin_panel/screens/dashboard/widget/storage_details_chart.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widget/header.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            const Header(),
            const SizedBox(height: defaultPadding),
            Row(
              children: [
                Expanded(
                  flex: 5,
                  child: Container(
                    color: Colors.white,
                    height: 500,
                  ),
                ),
                const SizedBox(width: defaultPadding),
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 500,
                    padding: const EdgeInsets.all(defaultPadding),
                    decoration: const BoxDecoration(
                      color: AppColors.secondaryColor,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Column(
                      children: const [
                        Text(
                          "Storage Details",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        StorageDetailsChart(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
