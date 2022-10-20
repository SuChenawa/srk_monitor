import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:srk_monitor/feature/providers/home_page/streamer_notifier.dart';

import '../../../../core/domain/entity/home_page/home_grid_entity.dart';
import 'live_card_view.dart';

class HomeGridView extends ConsumerWidget {
  final double padding = 448;
  const HomeGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double width = MediaQuery.of(context).size.width;
    int crossAxisCount = (width - padding) ~/ 160;
    StreamerNotifier streamerNotifier = ref.read(streamerProvider.notifier);
    // streamers 裝著一個 HomeGridEntity的 List,
    //當裡面的List<HomeGridEntity> 更新的時候會觸法介面重構
    List<HomeGridEntity> streamers = ref.watch(streamerProvider);

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 45.0,
        vertical: 35.0,
      ),
      child: GridView.builder(
        itemCount: streamers.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount == 0 ? 1 : crossAxisCount,
            childAspectRatio: 1.114),
        itemBuilder: (context, index) {
          return FittedBox(
            fit: BoxFit.fitHeight,
            child: LiveCardView(
              roomId: streamers[index].roomId.toString(),
              title: streamers[index].title,
              isLive: streamers[index].isLive,
              coverUrl: streamers[index].coverUrl,
              userName: streamers[index].userName,
              onTap: () {},
              onLongPress: () {
                streamerNotifier.removeStreamer(
                  streamers[index].roomId.toString(),
                  streamers[index].shortId.toString(),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
