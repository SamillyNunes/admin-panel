import 'package:flutter/material.dart';

import '../../../constants.dart';

/// Header que tem o titulo "meus arquivos" e botao de adicionar
class DashboardHead extends StatelessWidget {
  const DashboardHead({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Meus Arquivos",
          style: Theme.of(context).textTheme.subtitle1,
        ),
        ElevatedButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.add),
          label: const Text("Add New"),
          style: TextButton.styleFrom(
            padding: const EdgeInsets.symmetric(
              horizontal: defaultPadding * 1.5,
              vertical: defaultPadding,
            ),
          ),
        ),
      ],
    );
  }
}
