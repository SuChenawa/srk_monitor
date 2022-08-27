import 'package:flutter/material.dart';
import 'package:srk_monitor/constants/colors.dart';
import 'package:srk_monitor/views/settingpage/widgets/settings_view.dart';

import '../homePage/widgets/home_appbar.dart';

class SettingsPageLayout extends StatelessWidget {
  const SettingsPageLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: surface1Color,
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 800.0, maxHeight: 800.0),
          child: Hero(
            tag: 'SettingsHero',
            child: Scaffold(
              backgroundColor: surface2Color,
              appBar: HomeAppBar(
                  child: Container(
                color: surface2Color,
                alignment: Alignment.centerRight,
                child: Row(
                  children: [
                    const SizedBox(width: 60.0),
                    Text(
                      'Settings',
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        color: textColor,
                        fontSize: 56.0,
                      ),
                    ),
                    const Spacer(),
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        onPrimary: surface4Color,
                        primary: surface2Color,
                      ).copyWith(elevation: ButtonStyleButton.allOrNull(0.0)),
                      label: Text(
                        'Back',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: textColor,
                          height: 1.5,
                        ),
                      ),
                      icon: Icon(
                        Icons.arrow_back,
                        color: textColor,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    const SizedBox(width: 64.0),
                  ],
                ),
              )),
              body: const SettingsView(),
            ),
          ),
        ),
      ),
    );
  }
}
