import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:srk_monitor/views/home_page/constants/streamer.dart';
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
    List<Streamer> streamers = ref.watch(streamerProvider);

    debugPrint(streamers.toString());

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 45.0,
        vertical: 35.0,
      ),
      child: GridView.builder(
        itemCount: 33,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount == 0 ? 1 : crossAxisCount,
            childAspectRatio: 1.114),
        itemBuilder: (context, index) {
          return FittedBox(
            fit: BoxFit.fitHeight,
            child: LiveCardView(
              name: 'SuChen is $index',
              isLive: true,
              onTap: () {
                streamerNotifier.addStreamer(index.toString());
              },
            ),
          );
        },
      ),
    );
  }
}
