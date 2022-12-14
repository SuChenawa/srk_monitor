import 'package:flutter/material.dart';
import 'package:srk_monitor/core/data/local_storage/live_stream/big1_small7/local_big1_small7_storage.dart';
import 'package:srk_monitor/feature/utils/live_stream/live_stream_util.dart';

import '../../../../../core/domain/entity/live_stream/live_stream_entity.dart';
import '../../widget/player.dart';

class BasePlayers extends StatelessWidget {
  final LocalBig1Small7StorageModel storageModel;
  final List<LiveStreamEntity> liveStreamEntitiesList;
  const BasePlayers({
    Key? key,
    required this.storageModel,
    required this.liveStreamEntitiesList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        SizedBox(
          width: width,
          height: height,
        ),
        // Main PLayer
        Positioned(
          top: 0,
          bottom: height * 0.25,
          left: 0,
          right: width * 0.25,
          child: StreamPlayer(
            key: const ValueKey('player1'),
            playSound: true,
            playerId: 1,
            liveStreamEntity: LiveStreamUtil.getLiveUrlsFromEntity(
              liveStreamEntitiesList,
              storageModel,
              1,
            ),
          ),
        ),
        // small PLayer
        // 竪著那一排
        Positioned(
          top: 0,
          bottom: 3 * (height / 4),
          left: width * 0.75,
          right: 0,
          child: StreamPlayer(
            key: const ValueKey('player2'),
            playSound: false,
            playerId: 2,
            liveStreamEntity: LiveStreamUtil.getLiveUrlsFromEntity(
              liveStreamEntitiesList,
              storageModel,
              2,
            ),
          ),
        ),
        Positioned(
          top: 3 * (height / 4),
          bottom: 2 * (height / 4),
          left: width * 0.75,
          right: 0,
          child: StreamPlayer(
            key: const ValueKey('player3'),
            playSound: false,
            playerId: 3,
            liveStreamEntity: LiveStreamUtil.getLiveUrlsFromEntity(
              liveStreamEntitiesList,
              storageModel,
              3,
            ),
          ),
        ),
        Positioned(
          top: 2 * (height / 4),
          bottom: 1 * (height / 4),
          left: width * 0.75,
          right: 0,
          child: StreamPlayer(
            key: const ValueKey('player4'),
            playSound: false,
            playerId: 4,
            liveStreamEntity: LiveStreamUtil.getLiveUrlsFromEntity(
              liveStreamEntitiesList,
              storageModel,
              4,
            ),
          ),
        ),
        Positioned(
          top: 1 * (height / 4),
          bottom: 0 * (height / 4),
          left: width * 0.75,
          right: 0,
          child: StreamPlayer(
            key: const ValueKey('player5'),
            playSound: false,
            playerId: 5,
            liveStreamEntity: LiveStreamUtil.getLiveUrlsFromEntity(
              liveStreamEntitiesList,
              storageModel,
              5,
            ),
          ),
        ),
        // 橫著那一排
        Positioned(
          top: height * 0.75,
          bottom: 0,
          left: 0 * (width / 4),
          right: 3 * (width / 4),
          child: StreamPlayer(
            key: const ValueKey('player6'),
            playSound: false,
            playerId: 6,
            liveStreamEntity: LiveStreamUtil.getLiveUrlsFromEntity(
              liveStreamEntitiesList,
              storageModel,
              6,
            ),
          ),
        ),
        Positioned(
          top: height * 0.75,
          bottom: 0,
          left: 1 * (width / 4),
          right: 2 * (width / 4),
          child: StreamPlayer(
            key: const ValueKey('player7'),
            playSound: false,
            playerId: 7,
            liveStreamEntity: LiveStreamUtil.getLiveUrlsFromEntity(
              liveStreamEntitiesList,
              storageModel,
              7,
            ),
          ),
        ),
        Positioned(
          top: height * 0.75,
          bottom: 0,
          left: 2 * (width / 4),
          right: 3 * (width / 4),
          child: StreamPlayer(
            key: const ValueKey('player8'),
            playSound: false,
            playerId: 8,
            liveStreamEntity: LiveStreamUtil.getLiveUrlsFromEntity(
              liveStreamEntitiesList,
              storageModel,
              8,
            ),
          ),
        ),
      ],
    );
  }
}
