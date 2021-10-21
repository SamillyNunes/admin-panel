import 'package:flutter/material.dart';

import 'drawer_list_tile.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(
              child: Image.asset('assets/images/logo.png'),
            ),
            DrawerListTile(
              title: "Dashboard",
              svgSrc: 'assets/icons/menu_dashbord.svg',
              action: () {},
            ),
            DrawerListTile(
              title: "Transactions",
              svgSrc: 'assets/icons/menu_tran.svg',
              action: () {},
            ),
            DrawerListTile(
              title: "Tasks",
              svgSrc: 'assets/icons/menu_task.svg',
              action: () {},
            ),
            DrawerListTile(
              title: "Documents",
              svgSrc: 'assets/icons/menu_doc.svg',
              action: () {},
            ),
            DrawerListTile(
              title: "Store",
              svgSrc: 'assets/icons/menu_store.svg',
              action: () {},
            ),
            DrawerListTile(
              title: "Notifications",
              svgSrc: 'assets/icons/menu_notification.svg',
              action: () {},
            ),
            DrawerListTile(
              title: "Profile",
              svgSrc: 'assets/icons/menu_profile.svg',
              action: () {},
            ),
            DrawerListTile(
              title: "Settings",
              svgSrc: 'assets/icons/menu_setting.svg',
              action: () {},
            ),
          ],
        ),
      ),
    );
  }
}
