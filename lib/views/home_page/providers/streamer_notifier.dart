import 'dart:convert';
import 'package:http/http.dart' as http;
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

// ignore: todo
// TODO: get JSON file

Future<Post> fetchPost(String) async {
  final response = await http.get(Uri.parse(
      'http://api.live.bilibili.com/room/v1/Room/get_info?room_id=4506805'));
  final responseJson = json.decode(response.body);

  return Post.fromJson(responseJson);
}

class Post {
  final int code;
  final String msg;
  final String message;
  // final data;

  Post({
    required this.code,
    required this.msg,
    required this.message,
    // required this.data,
    // required livestatus,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      code: json['code'],
      msg: json['msg'],
      message: json['message'],
    );
  }
}


// http://api.live.bilibili.com/room/v1/Room/get_info