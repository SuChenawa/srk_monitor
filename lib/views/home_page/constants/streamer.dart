class Streamer {
  final String uid;
  final bool live;
  final String coverUrl;
  const Streamer({
    required this.uid,
    required this.live,
    required this.coverUrl,
  });
  Streamer copyWith({
    required String uid,
    required bool live,
    required String coverUrl,
  }) {
    return Streamer(uid: uid, live: live, coverUrl: coverUrl);
  }
}
