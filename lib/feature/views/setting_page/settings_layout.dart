import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../constants/colors.dart';
import '../../utils/settings/hero_rect_tween.dart';
import '../home_page/widgets/home_app_bar.dart';
import 'widgets/animating_view.dart';
import 'widgets/settings_view.dart';

class SettingsPageLayout extends StatelessWidget {
  const SettingsPageLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(36.0),
      constraints: const BoxConstraints(maxWidth: 800.0, maxHeight: 800.0),
      child: Hero(
        createRectTween: (begin, end) => HeroRectTween(begin: begin, end: end),
        tag: 'SettingsHero',
        child: ClipRRect(
          borderRadius: BorderRadius.circular(32.0),
          child: Scaffold(
            appBar: HomeAppBar(
              child: Align(
                alignment: Alignment.centerLeft,
                child: AnimatingView(
                  width: 500.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 64.0),
                        child: Text(
                          AppLocalizations.of(context)!.settings,
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            color: textColor,
                            fontSize: 56.0,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 64.0),
                        child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            foregroundColor: surface4Color,
                            backgroundColor: surface2Color,
                          ).copyWith(
                              elevation: ButtonStyleButton.allOrNull(0.0)),
                          label: Text(
                            AppLocalizations.of(context)!.back_to_previous,
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
                      ),
                    ],
                  ),
                ),
              ),
            ),
            body: const AnimatingView(
              width: 500.0,
              child: SettingsView(),
            ),
          ),
        ),
      ),
    );
  }
}
