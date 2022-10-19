class LiveStreamApi {
  static getLiveStreamUrl(String roomid) {
    String url =
        "https://api.live.bilibili.com/room/v1/Room/playUrl?build=5470400&device=android&cid=$roomid";
  }
}
