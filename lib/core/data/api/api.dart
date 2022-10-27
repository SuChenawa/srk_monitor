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

  /// quality can only be one of the following values
  /// 2：流畅 <== Default value
  /// 3：高清
  /// 4：原画
  static String getLiveStreamUrl(
    String roomId,
    bool useM3u8,
    int quality,
  ) {
    Map<String, dynamic> queryParams = {
      'cid': roomId,
      'platform': useM3u8 ? 'h5' : 'web',
      'quality': quality.toString(),
    };
    final urlParams = Uri(queryParameters: queryParams).query;
    String url =
        'https://api.live.bilibili.com/room/v1/Room/playUrl？$urlParams';
    debugPrint('getLiveStreamUrl: $url');
    return url;
  }
}
