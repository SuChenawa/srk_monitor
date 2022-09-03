import 'package:flutter/material.dart';
import 'package:srk_monitor/views/settingpage/settings_items/about.dart';
import 'package:srk_monitor/views/settingpage/settings_items/general.dart';
import 'package:srk_monitor/views/settingpage/settings_items/opensource.dart';

class SettignsItems extends StatelessWidget {
  const SettignsItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 64.0,
      ),
      child: ListView(
        padding: const EdgeInsets.all(10),
        children: <Widget>[
          ListTile(
              title: const Text('通用'),
              subtitle: const Text('通用设置'),
              leading: const Icon(Icons.home),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const GeneralPage()));
              }),
          ListTile(
              title: const Text('开放源代码许可'),
              subtitle: const Text(''),
              leading: const Icon(Icons.rule_rounded),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const OpenSourceLicensePage()));
              }),
          ListTile(
              title: const Text('关于'),
              subtitle: const Text('关于 srk-monitor'),
              leading: const Icon(Icons.settings),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const AboutPage()));
              }),
        ],
      ),
    );
  }
}
