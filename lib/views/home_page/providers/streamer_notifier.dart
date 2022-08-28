import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:srk_monitor/views/home_page/constants/streamer.dart';

class StreamerNotifier extends StateNotifier<List<Streamer>> {
  StreamerNotifier() : super([]);

  void addStreamer(String uid) {
    String coverUrl = getCoverurl(uid);
    bool live = getLiveStatus(uid);
    Streamer streamer = Streamer(
      uid: uid,
      live: live,
      coverUrl: coverUrl,
    );
    state = [...state, streamer];
  }

  void removeStreamer(String uid) {
    state = [
      for (final streamer in state)
        if (streamer.uid != uid) streamer
    ];
  }

  String getCoverurl(String uid) {
    return 'subaoshi0.png';
  }

  bool getLiveStatus(String uid) {
    return true;
  }
}

final streamerProvider =
    StateNotifierProvider<StreamerNotifier, List<Streamer>>((ref) {
  return StreamerNotifier();
});
