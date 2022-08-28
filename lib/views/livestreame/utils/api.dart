import 'dart:html';
import 'dart:io';
import 'package:http/http.dart' as http;

class LiveStreamApi {
  static Future getLiveStreamUrl(String roomid) async {
    String url =
        "https://api.live.bilibili.com/room/v1/Room/playUrl?build=5470400&device=android&cid=$roomid";
  }
  // todo api http response
}
