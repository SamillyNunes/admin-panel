import 'package:admin_panel/screens/main/widgets/drawer_list_tile.dart';
import 'package:flutter/material.dart';

import 'widgets/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            const Expanded(
              // leva 1/6 partes da tela
              child: SideMenu(),
            ),
            Expanded(
              // leva 5/6 partes da tela
              flex: 5,
              child: Container(
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
