import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:srk_monitor/services/base_resopnse.dart';

import '../services/home_page_services.dart';

class StreamerNotifier extends StateNotifier<List<String>> {
  late SharedPreferences prefs;
  // 關注的房間list
  StreamerNotifier() : super([]) {
    // initialize shared_preferences
    initpref();
  }

  void addStreamer(BuildContext context, String roomId) async {
    if (await checkRoomValid(roomId)) {
      state = [...state, roomId];
      prefs.setStringList('subscripe', state);
    } else {
      const snackBar = SnackBar(
        content: Text('Yay! A SnackBar!'),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  void removeStreamer(String roomId) {
    state = [
      for (final id in state)
        if (id != roomId) id
    ];
  }

  Future<bool> checkRoomValid(String roomId) async {
    BaseResponse respons = await HomePageServices().getRoomInfo(roomId);
    debugPrint(respons.code.toString());
    if (respons.code == 0) {
      return true;
    } else {
      return false;
    }
  }

  String getCoverurl(String uid) {
    return 'subaoshi0.png';
  }

  bool getLiveStatus(String uid) {
    return true;
  }

  void initpref() async {
    prefs = await SharedPreferences.getInstance();
    state = prefs.getStringList('subscripe') ?? [];
  }
}

final streamerProvider =
    StateNotifierProvider<StreamerNotifier, List<String>>((ref) {
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
