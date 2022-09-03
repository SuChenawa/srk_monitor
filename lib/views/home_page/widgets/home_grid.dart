import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:srk_monitor/views/home_page/providers/streamer_notifier.dart';

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
    List<String> streamers = ref.watch(streamerProvider);

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
              name: streamers[index],
              isLive: true,
              onTap: () {},
            ),
          );
        },
      ),
    );
  }
}
