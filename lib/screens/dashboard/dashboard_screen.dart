import 'package:admin_panel/constants.dart';
import 'package:admin_panel/core/app_settings.dart';
import 'package:admin_panel/responsive.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widget/dashboard_head.dart';
import 'widget/file_info_card.dart';
import 'widget/file_info_card_gridview.dart';
import 'widget/header.dart';
import 'widget/recent_files.dart';
import 'widget/storage_details.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;

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
                      Responsive(
                        mobile: FileInfoCardGridView(
                          crossAxisCount: _size.width < 650 ? 2 : 4,
                          childAspectRatio: _size.width < 650 ? 1.3 : 1,
                        ),
                        tablet: const FileInfoCardGridView(),
                        desktop: FileInfoCardGridView(
                          childAspectRatio: _size.width < 1400 ? 1.1 : 1.4,
                        ),
                      ),
                      const SizedBox(height: defaultPadding),
                      const RecentFiles(),
                      if (Responsive.isMobile(context))
                        const SizedBox(height: defaultPadding),
                      if (Responsive.isMobile(context)) const StorageDetails(),
                    ],
                  ),
                ),
                if (!Responsive.isMobile(context))
                  const SizedBox(width: defaultPadding),
                if (!Responsive.isMobile(context))
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
