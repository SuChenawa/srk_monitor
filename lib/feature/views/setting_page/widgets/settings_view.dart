import 'package:flutter/material.dart';
import 'package:srk_monitor/feature/views/setting_page/widgets/settings_items.dart';

class SettingsView extends StatelessWidget {
  final double padding = 448;
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    int crossAxisCount = (width - padding) ~/ 160;

    return const SettingsItems();
  }
}
