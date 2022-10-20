import 'package:flutter/cupertino.dart';

class Api {
  static String getRoomInfoUrl() {
    const url = 'http://api.live.bilibili.com/room/v1/Room/get_info';
    debugPrint('getRoomInfoUrl: $url');
    return url;
  }

  static String getLiveUserInfoUrl() {
    const url = 'http://api.live.bilibili.com/live_user/v1/Master/info';
    debugPrint('getRoomInfoUrl: $url');
    return url;
  }

  static String getLiveStreamUrl(String roomId, bool useM3u8) {
    String url = '';
    if (useM3u8) {
      url =
          'https://api.live.bilibili.com/room/v1/Room/playUrl?cid=$roomId&platform=h5';
    } else {
      url =
          'https://api.live.bilibili.com/room/v1/Room/playUrl?cid=$roomId&platform=web';
    }

    debugPrint('getLiveStreamUrl: $url');
    return url;
  }
}
