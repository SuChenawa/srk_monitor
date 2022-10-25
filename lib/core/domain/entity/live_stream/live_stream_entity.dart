class LiveStreamEntity {
  LiveStreamEntity({
    required this.roomId,
    required this.isLive,
    this.urls,
  });
  final String roomId;
  final bool isLive;
  final List<String>? urls;

  LiveStreamEntity copyWith({
    String? roomId,
    bool? isLive,
    List<String>? urls,
  }) {
    return LiveStreamEntity(
      roomId: roomId ??= this.roomId,
      isLive: isLive ??= this.isLive,
      urls: urls ??= this.urls,
    );
  }
}
