import 'package:flutter/material.dart';

class CloudStorageInfoModel {
  final String svgSrc;
  final String title;
  final String totalStorage;
  final int numOfFiels;
  final int percentage;
  final Color color;

  CloudStorageInfoModel({
    required this.svgSrc,
    required this.title,
    required this.totalStorage,
    required this.numOfFiels,
    required this.percentage,
    required this.color,
  });
}
