class HomeGridEntity {
  HomeGridEntity({
    required this.roomId,
    required this.title,
    required this.isLive,
    required this.coverUrl,
    required this.userName,
    required this.shortId,
  });
  final String roomId;
  final String title;
  final int isLive;
  final String coverUrl;
  final String userName;
  final String shortId;
}
