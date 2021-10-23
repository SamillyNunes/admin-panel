import 'package:admin_panel/constants.dart';
import 'package:admin_panel/core/app_settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widget/dashboard_head.dart';
import 'widget/file_info_card.dart';
import 'widget/header.dart';
import 'widget/storage_details.dart';

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      const DashboardHead(),
                      const SizedBox(height: defaultPadding),
                      GridView.builder(
                        itemCount: demoMyFiels.length,
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          crossAxisSpacing: defaultPadding,
                          childAspectRatio: 1.4,
                        ),
                        itemBuilder: (context, index) => FileInfoCard(
                          info: demoMyFiels[index],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: defaultPadding),
                const Expanded(
                  flex: 2,
                  child: StorageDetails(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
