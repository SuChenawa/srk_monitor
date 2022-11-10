import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:srk_monitor/feature/views/setting_page/settings_items/about.dart';
import 'package:srk_monitor/feature/views/setting_page/settings_items/general.dart';
import 'package:srk_monitor/feature/views/setting_page/settings_items/opensource.dart';

class SettingsItems extends StatelessWidget {
  const SettingsItems({Key? key}) : super(key: key);

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
              title: Text(AppLocalizations.of(context)!.general),
              subtitle: Text(AppLocalizations.of(context)!.general_settings),
              leading: const Icon(Icons.home),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const GeneralPage()));
              }),
          ListTile(
              title: Text(AppLocalizations.of(context)!.open_source_license),
              subtitle: const Text(''),
              leading: const Icon(Icons.rule_rounded),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const OpenSourceLicensePage()));
              }),
          ListTile(
              title: Text(AppLocalizations.of(context)!.about),
              subtitle: Text(AppLocalizations.of(context)!.about_app),
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
