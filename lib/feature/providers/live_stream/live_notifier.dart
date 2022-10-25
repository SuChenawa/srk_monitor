import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:srk_monitor/feature/providers/home_page/streamer_notifier.dart';

import '../../../core/domain/entity/home_page/home_grid_entity.dart';
import '../../../core/domain/entity/live_stream/live_stream_entity.dart';
import '../../../core/domain/use_case/live_stream/live_stream_use_case.dart';

class LiveNotifier extends StateNotifier<List<LiveStreamEntity>> {
  LiveNotifier(
    this.homeGridEntities,
  ) : super([]);
  final List<HomeGridEntity>? homeGridEntities;

  LiveStreamUseCase useCase = LiveStreamUseCase();

// TODO: create add rooms logic. implementation TBC.
  List<String> roomIds = ['4506805', '550335'];
  bool useM3u8 = false;

  void getLiveStreamVideo() async {
    final liveStreamEntities =
        await useCase.getLiveStreamEntityList(roomIds, useM3u8: useM3u8);
    if (liveStreamEntities != null) {
      _setLiveStatus(liveStreamEntities);
    }
  }

  void _setLiveStatus(List<LiveStreamEntity> liveEntities) {
    final List<LiveStreamEntity> finalList = [];
    for (var liveEntity in liveEntities) {
      homeGridEntities?.forEach((homeGridEntity) {
        if (homeGridEntity.roomId == liveEntity.roomId) {
          LiveStreamEntity entity = liveEntity;
          if (homeGridEntity.isLive == 1) {
            entity = liveEntity.copyWith(isLive: true);
          }
          finalList.add(entity);
        }
      });
    }
    state = finalList;
  }
}

final liveNotifierProvider =
    StateNotifierProvider<LiveNotifier, List<LiveStreamEntity>>(
  (ref) {
    // TODO: decide whether to fetch live data by live notifier itself or pass from outside.
    final List<HomeGridEntity>? homeGridEntities = ref.watch(streamerProvider);
    return LiveNotifier(homeGridEntities);
  },
);
