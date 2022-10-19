import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:srk_monitor/views/home_page/providers/streamer_notifier.dart';

import '../../../core/domain/entity/home_page/home_grid_entity.dart';
import '../providers/live_user_notifier.dart';
import 'live_card_view.dart';

class HomeGridView extends ConsumerWidget {
  final double padding = 448;
  const HomeGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double width = MediaQuery.of(context).size.width;
    int crossAxisCount = (width - padding) ~/ 160;
    StreamerNotifier streamerNotifier = ref.read(streamerProvider.notifier);
    // streamers 裝著一個Roomid 的 List
    List<HomeGridEntity> streamers = ref.watch(streamerProvider);
    List<HomeGridEntity> liveUser = ref.watch(liveUserProvider);

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
          String userName = 'Loading...';
          try {
            userName = liveUser[index].info?.uname ?? 'Loading...';
          } catch (_) {}
          return FittedBox(
            fit: BoxFit.fitHeight,
            child: LiveCardView(
              roomId: streamers[index].roomId.toString(),
              title: streamers[index].title,
              isLive: streamers[index].liveStatus,
              coverUrl: streamers[index].userCover,
              // 他媽的主播名字還要另一條api才能拿到
              userName: userName,
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
