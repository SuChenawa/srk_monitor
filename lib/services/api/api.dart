import 'package:flutter/cupertino.dart';

String getRoomInfoUrl() {
  const url = 'http://api.live.bilibili.com/room/v1/Room/get_info';
  debugPrint('getRoomInfoUrl: $url');
  return url;
}

String getLiveUserInfoUrl() {
  const url = 'http://api.live.bilibili.com/live_user/v1/Master/info';
  debugPrint('getRoomInfoUrl: $url');
  return url;
}
