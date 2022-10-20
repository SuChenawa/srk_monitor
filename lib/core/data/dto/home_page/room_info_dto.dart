class RoomInfoDto {
  RoomInfoDto({
    required this.uid,
    required this.roomId,
    required this.shortId,
    required this.attention,
    required this.online,
    required this.isPortrait,
    required this.description,
    required this.liveStatus,
    required this.areaId,
    required this.parentAreaId,
    required this.parentAreaName,
    required this.oldAreaId,
    required this.background,
    required this.title,
    required this.userCover,
    required this.keyframe,
    required this.isStrictRoom,
    required this.liveTime,
    required this.tags,
    required this.isAnchor,
    required this.roomSilentType,
    required this.roomSilentLevel,
    required this.roomSilentSecond,
    required this.areaName,
    required this.pendants,
    required this.areaPendants,
    required this.hotWords,
    required this.hotWordsStatus,
    required this.verify,
    required this.upSession,
    required this.pkStatus,
    required this.pkId,
    required this.battleId,
    required this.allowChangeAreaTime,
    required this.allowUploadCoverTime,
  });
  late final int uid;
  late final int roomId;
  late final int shortId;
  late final int attention;
  late final int online;
  late final bool isPortrait;
  late final String description;
  late final int liveStatus;
  late final int areaId;
  late final int parentAreaId;
  late final String parentAreaName;
  late final int oldAreaId;
  late final String background;
  late final String title;
  late final String userCover;
  late final String keyframe;
  late final bool isStrictRoom;
  late final String liveTime;
  late final String tags;
  late final int isAnchor;
  late final String roomSilentType;
  late final int roomSilentLevel;
  late final int roomSilentSecond;
  late final String areaName;
  late final String pendants;
  late final String areaPendants;
  late final List<String> hotWords;
  late final int hotWordsStatus;
  late final String verify;
  late final String upSession;
  late final int pkStatus;
  late final int pkId;
  late final int battleId;
  late final int allowChangeAreaTime;
  late final int allowUploadCoverTime;

  RoomInfoDto.fromJson(Map<String, dynamic> json) {
    uid = json['uid'];
    roomId = json['room_id'];
    shortId = json['short_id'];
    attention = json['attention'];
    online = json['online'];
    isPortrait = json['is_portrait'];
    description = json['description'];
    liveStatus = json['live_status'];
    areaId = json['area_id'];
    parentAreaId = json['parent_area_id'];
    parentAreaName = json['parent_area_name'];
    oldAreaId = json['old_area_id'];
    background = json['background'];
    title = json['title'];
    userCover = json['user_cover'];
    keyframe = json['keyframe'];
    isStrictRoom = json['is_strict_room'];
    liveTime = json['live_time'];
    tags = json['tags'];
    isAnchor = json['is_anchor'];
    roomSilentType = json['room_silent_type'];
    roomSilentLevel = json['room_silent_level'];
    roomSilentSecond = json['room_silent_second'];
    areaName = json['area_name'];
    pendants = json['pendants'];
    areaPendants = json['area_pendants'];
    hotWords = List.castFrom<dynamic, String>(json['hot_words']);
    hotWordsStatus = json['hot_words_status'];
    verify = json['verify'];
    upSession = json['up_session'];
    pkStatus = json['pk_status'];
    pkId = json['pk_id'];
    battleId = json['battle_id'];
    allowChangeAreaTime = json['allow_change_area_time'];
    allowUploadCoverTime = json['allow_upload_cover_time'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['uid'] = uid;
    data['room_id'] = roomId;
    data['short_id'] = shortId;
    data['attention'] = attention;
    data['online'] = online;
    data['is_portrait'] = isPortrait;
    data['description'] = description;
    data['live_status'] = liveStatus;
    data['area_id'] = areaId;
    data['parent_area_id'] = parentAreaId;
    data['parent_area_name'] = parentAreaName;
    data['old_area_id'] = oldAreaId;
    data['background'] = background;
    data['title'] = title;
    data['user_cover'] = userCover;
    data['keyframe'] = keyframe;
    data['is_strict_room'] = isStrictRoom;
    data['live_time'] = liveTime;
    data['tags'] = tags;
    data['is_anchor'] = isAnchor;
    data['room_silent_type'] = roomSilentType;
    data['room_silent_level'] = roomSilentLevel;
    data['room_silent_second'] = roomSilentSecond;
    data['area_name'] = areaName;
    data['pendants'] = pendants;
    data['area_pendants'] = areaPendants;
    data['hot_words'] = hotWords;
    data['hot_words_status'] = hotWordsStatus;
    data['verify'] = verify;
    data['up_session'] = upSession;
    data['pk_status'] = pkStatus;
    data['pk_id'] = pkId;
    data['battle_id'] = battleId;
    data['allow_change_area_time'] = allowChangeAreaTime;
    data['allow_upload_cover_time'] = allowUploadCoverTime;
    return data;
  }
}
