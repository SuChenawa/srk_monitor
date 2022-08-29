import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:srk_monitor/views/home_page/constants/streamer.dart';

import '../services/home_page_services.dart';

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

// TODO 我有空再refactor吧<Ev0>
Future<Post> fetchPost(String) async {
  HomePageServices().getRoomInfo('4506805');
  // TODO change return data into real data
  return Post(code: 1, message: '2', msg: '3');
}

class Post {
  final int code;
  final String msg;
  final String message;

  Post({
    required this.code,
    required this.msg,
    required this.message,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      code: json['code'],
      msg: json['msg'],
      message: json['message'],
    );
  }
}
