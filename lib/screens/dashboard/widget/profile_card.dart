import 'package:admin_panel/core/app_colors.dart';
import 'package:admin_panel/responsive.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

/// Widget de botao de perfil de usuario
class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: defaultPadding,
      ),
      decoration: BoxDecoration(
        color: AppColors.secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        border: Border.all(color: Colors.white10),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: defaultPadding,
        vertical: defaultPadding / 2,
      ),
      child: Row(
        children: [
          Image.asset(
            'assets/images/profile_pic.png',
            height: 38,
          ),
          if (!Responsive.isMobile(context))
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: defaultPadding / 2),
              child: Text(
                "Samilly Nunes",
              ),
            ),
          const Icon(
            Icons.keyboard_arrow_down,
          ),
        ],
      ),
    );
  }
}
