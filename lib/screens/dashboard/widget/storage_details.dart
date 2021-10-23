import 'package:admin_panel/core/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'storage_details_chart.dart';
import 'storage_tile_card.dart';

/// Widget de detalhes de armazenamento
class StorageDetails extends StatelessWidget {
  const StorageDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 500,
      padding: const EdgeInsets.all(defaultPadding),
      decoration: const BoxDecoration(
        color: AppColors.secondaryColor,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Storage Details",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: defaultPadding),
          StorageDetailsChart(),
          StorageTileCard(
            svgSrc: "assets/icons/Documents.svg",
            title: "Document Files",
            amountOfFiles: "1.3Gb",
            numberOfFiles: 1328,
          ),
          StorageTileCard(
            svgSrc: "assets/icons/media.svg",
            title: "Media Files",
            amountOfFiles: "1.3Gb",
            numberOfFiles: 1328,
          ),
          StorageTileCard(
            svgSrc: "assets/icons/Documents.svg",
            title: "Document Files",
            amountOfFiles: "15.3Gb",
            numberOfFiles: 500,
          ),
          StorageTileCard(
            svgSrc: "assets/icons/folder.svg",
            title: "Other Files",
            amountOfFiles: "1.3Gb",
            numberOfFiles: 13,
          ),
          StorageTileCard(
            svgSrc: "assets/icons/unknown.svg",
            title: "Unknown Files",
            amountOfFiles: "1.3Gb",
            numberOfFiles: 140,
          ),
        ],
      ),
    );
  }
}
