import 'package:admin_panel/models/cloud_storage_info_model.dart';
import 'package:admin_panel/models/recent_file_model.dart';

import 'app_colors.dart';

List demoRecentFiles = [
  RecentFileModel(
    icon: "assets/icons/xd_file.svg",
    title: "XD File",
    date: "01-03-2021",
    size: "3.5mb",
  ),
  RecentFileModel(
    icon: "assets/icons/Figma_file.svg",
    title: "Figma File",
    date: "27-02-2021",
    size: "19.0mb",
  ),
  RecentFileModel(
    icon: "assets/icons/doc_file.svg",
    title: "Documetns",
    date: "23-02-2021",
    size: "32.5mb",
  ),
  RecentFileModel(
    icon: "assets/icons/sound_file.svg",
    title: "Sound File",
    date: "21-02-2021",
    size: "3.5mb",
  ),
  RecentFileModel(
    icon: "assets/icons/media_file.svg",
    title: "Media File",
    date: "23-02-2021",
    size: "2.5gb",
  ),
  RecentFileModel(
    icon: "assets/icons/pdf_file.svg",
    title: "Sals PDF",
    date: "25-02-2021",
    size: "3.5mb",
  ),
  RecentFileModel(
    icon: "assets/icons/excle_file.svg",
    title: "Excel File",
    date: "25-02-2021",
    size: "34.5mb",
  ),
];

List demoMyFiels = [
  CloudStorageInfoModel(
    title: "Documents",
    numOfFiels: 1328,
    svgSrc: "assets/icons/Documents.svg",
    totalStorage: "1.9GB",
    color: AppColors.primaryColor,
    percentage: 35,
  ),
  CloudStorageInfoModel(
    title: "Google Drive",
    numOfFiels: 1328,
    svgSrc: "assets/icons/google_drive.svg",
    totalStorage: "2.9GB",
    color: AppColors.orange,
    percentage: 35,
  ),
  CloudStorageInfoModel(
    title: "One Drive",
    numOfFiels: 1328,
    svgSrc: "assets/icons/one_drive.svg",
    totalStorage: "1GB",
    color: AppColors.lightBlue,
    percentage: 10,
  ),
  CloudStorageInfoModel(
    title: "Documents",
    numOfFiels: 5328,
    svgSrc: "assets/icons/drop_box.svg",
    totalStorage: "7.3GB",
    color: AppColors.hardBlue,
    percentage: 78,
  ),
];
