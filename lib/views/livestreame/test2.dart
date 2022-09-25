import 'package:dio/dio.dart';
import 'test.dart';

class LiveApi {
  static Future getLivePlayUrl(String roomid) async {
    String url =
        "https://api.live.bilibili.com/room/v1/Room/playUrl?build=5470400&device=android&cid=$roomid";
    Dio dio = Dio();
    try {
      Response res = await dio.get(url,
          options: Options(
            receiveTimeout: 5000,
            sendTimeout: 5000,
          ));

      if (res.data["data"]["durl"] != null) {
        List<String> list = [];
        for (Map<String, dynamic> i in res.data["data"]["durl"]) {
          if (i != null && i["url"] != null) {
            list.add(i["url"]);
          }
        }
        return list;
      }
      return null;
    } catch (e) {
      print(e.toString());
      print("获取播放列表失败");
      return null;
    }
  }
}
