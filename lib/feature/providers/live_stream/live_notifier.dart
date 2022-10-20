import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/domain/entity/live_stream/live_stream_entity.dart';

class LiveNotifier extends StateNotifier<List<LiveStreamEntity>> {
  LiveNotifier() : super([]);
}

final liveNotifierProvider =
    StateNotifierProvider<LiveNotifier, List<LiveStreamEntity>>(
  (ref) {
    return LiveNotifier();
  },
);
