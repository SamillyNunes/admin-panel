import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DrawerListTile extends StatelessWidget {
  final String title;
  final String svgSrc;
  final VoidCallback action;

  const DrawerListTile({
    Key? key,
    required this.title,
    required this.svgSrc,
    required this.action,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(
        svgSrc,
        color: Colors.white54,
        height: 16,
      ),
      onTap: action,
      horizontalTitleGap: 0,
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white54,
        ),
      ),
    );
  }
}
