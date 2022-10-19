import 'package:flutter/material.dart';
import 'package:srk_monitor/views/live_stream/live_page.dart';

import '../../constants/colors.dart';
import '../setting_page/settings_layout.dart';
import '../setting_page/utils/hero_rect_tween.dart';
import '../setting_page/utils/hero_route.dart';
import 'widgets/add_streamer_card.dart';
import 'widgets/home_appbar.dart';
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
                'Srk Monitor',
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
                  '临时测试入口',
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
                    onPrimary: surface4Color,
                    primary: surface2Color,
                  ).copyWith(elevation: ButtonStyleButton.allOrNull(0.0)),
                  label: Text(
                    '设置',
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
