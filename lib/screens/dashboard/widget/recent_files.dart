import 'package:admin_panel/core/app_colors.dart';
import 'package:admin_panel/core/app_settings.dart';
import 'package:admin_panel/models/recent_file_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class RecentFiles extends StatelessWidget {
  const RecentFiles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: const BoxDecoration(
        color: AppColors.secondaryColor,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Arquivos Recentes",
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable(
              columnSpacing: defaultPadding,
              horizontalMargin: 0,
              columns: const [
                DataColumn(
                  label: Text("Nome do arquivo"),
                ),
                DataColumn(
                  label: Text("Data"),
                ),
                DataColumn(
                  label: Text("Tamanho"),
                ),
              ],
              rows: List.generate(
                demoRecentFiles.length,
                (index) => recentFileDataRow(
                  demoRecentFiles[index],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  DataRow recentFileDataRow(RecentFileModel recentFileModel) {
    return DataRow(
      cells: [
        DataCell(
          Row(
            children: [
              SvgPicture.asset(
                recentFileModel.icon,
                height: 30,
                width: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: defaultPadding,
                ),
                child: Text(recentFileModel.title),
              ),
            ],
          ),
        ),
        DataCell(
          Text(recentFileModel.date),
        ),
        DataCell(
          Text(recentFileModel.size),
        ),
      ],
    );
  }
}
