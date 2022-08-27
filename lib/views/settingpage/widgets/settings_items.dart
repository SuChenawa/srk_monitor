import 'package:flutter/material.dart';
import 'package:srk_monitor/views/settingpage/general.dart';
import 'package:srk_monitor/views/settingpage/settings_layout.dart';

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
                title: const Text('Home'),
                subtitle: const Text('subtitle'),
                leading: const Icon(Icons.home),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const General()));
                }),
            const ListTile(
              title: Text('data'),
              subtitle: Text('subtitle'),
              leading: Icon(Icons.rule_rounded),
            ),
            const ListTile(
              title: Text('Settings'),
              subtitle: Text('subtitle'),
              leading: Icon(Icons.settings),
            ),
          ],
        ));
  }
}
