import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:srk_monitor/feature/providers/live_stream/player_presets/big1_small7_notifier.dart';
import 'package:srk_monitor/feature/views/live_stream/widget/fab_expand.dart';

import '../../../../../constants/colors.dart';
import '../../../../providers/live_stream/live_notifier.dart';
import 'base_players.dart';

class Big1Small7 extends ConsumerStatefulWidget {
  const Big1Small7({Key? key}) : super(key: key);

  @override
  Big1Small7State createState() => Big1Small7State();
}

class Big1Small7State extends ConsumerState<Big1Small7> {
  bool isFabExpanded = false;

  void onMouseEnter(PointerEnterEvent event) {
    setState(() {
      isFabExpanded = true;
    });
  }

  void onMouseExit(PointerExitEvent event) {
    setState(() {
      isFabExpanded = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final roomPreset = ref.watch(big1Small7NotifierProvider);
    final liveStreamEntityList = ref.watch(liveNotifierProvider);
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        BasePlayers(
          liveStreamEntitiesList: liveStreamEntityList,
          storageModel: roomPreset,
        ),
        //  layer 2: FAO + Stream List
        Positioned(
          top: 36.0,
          left: 52.0,
          child: MouseRegion(
            onEnter: (event) => onMouseEnter(event),
            onExit: (event) => onMouseExit(event),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              curve: Curves.elasticOut,
              width: isFabExpanded ? height * 0.1157 : height * 0.06,
              height: isFabExpanded ? height * 0.1157 : height * 0.06,
              decoration: BoxDecoration(
                color: surface2Color,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: isFabExpanded
                  ? FabExpand(
                      onSettingClick: () {
                        final presetNotifier =
                            ref.read(big1Small7NotifierProvider.notifier);
                        presetNotifier.dummyFakeData();
                      },
                    )
                  : const Icon(Icons.menu),
            ),
          ),
        ),
      ],
    );
  }
}
