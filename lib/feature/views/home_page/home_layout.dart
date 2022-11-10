import 'package:flutter/material.dart';
import 'package:srk_monitor/feature/views/live_stream/live_page.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../constants/colors.dart';
import '../../utils/settings/hero_rect_tween.dart';
import '../../utils/settings/hero_route.dart';
import '../setting_page/settings_layout.dart';

import 'widgets/add_streamer_card.dart';
import 'widgets/home_app_bar.dart';
import 'widgets/home_grid.dart';

class HomePageLayout extends StatelessWidget {
  const HomePageLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            HeroRoute(
              builder: (context) => const Center(
                child: AddStreamCard(),
              ),
            ),
          );
        },
        splashColor: surface4Color,
        backgroundColor: surface2Color,
        foregroundColor: textColor,
        heroTag: 'AddStreamer',
        child: const Icon(Icons.add),
      ),
      appBar: HomeAppBar(
        child: Container(
          alignment: Alignment.centerRight,
          child: Row(
            children: [
              const SizedBox(width: 64.0),
              Text(
                AppLocalizations.of(context)!.app_name,
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  color: textColor,
                  fontSize: 32.0,
                ),
              ),
              const Spacer(),

              // 臨時測試入口
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  foregroundColor: surface4Color,
                  backgroundColor: surface2Color,
                ).copyWith(elevation: ButtonStyleButton.allOrNull(0.0)),
                label: Text(
                  AppLocalizations.of(context)!.test_page,
                  style: TextStyle(
                    fontSize: 16.0,
                    color: textColor,
                    height: 1.5,
                  ),
                ),
                icon: Icon(
                  Icons.engineering,
                  color: textColor,
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LivePage()));
                },
              ),
              const SizedBox(width: 32.0),

              Hero(
                createRectTween: (begin, end) =>
                    HeroRectTween(begin: begin, end: end),
                tag: 'SettingsHero',
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: surface4Color,
                    backgroundColor: surface2Color,
                  ).copyWith(elevation: ButtonStyleButton.allOrNull(0.0)),
                  label: Text(
                    AppLocalizations.of(context)!.settings,
                    style: TextStyle(
                      fontSize: 16.0,
                      color: textColor,
                      height: 1.5,
                    ),
                  ),
                  icon: Icon(
                    Icons.settings,
                    color: textColor,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      HeroRoute(
                        builder: (context) => const Center(
                          child: SettingsPageLayout(),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(width: 64.0),
            ],
          ),
        ),
      ),
      body: const HomeGridView(),
    );
  }
}
