class RoomInfoResponse {
  RoomInfoResponse({
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

  RoomInfoResponse.fromJson(Map<String, dynamic> json) {
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
    final _data = <String, dynamic>{};
    _data['uid'] = uid;
    _data['room_id'] = roomId;
    _data['short_id'] = shortId;
    _data['attention'] = attention;
    _data['online'] = online;
    _data['is_portrait'] = isPortrait;
    _data['description'] = description;
    _data['live_status'] = liveStatus;
    _data['area_id'] = areaId;
    _data['parent_area_id'] = parentAreaId;
    _data['parent_area_name'] = parentAreaName;
    _data['old_area_id'] = oldAreaId;
    _data['background'] = background;
    _data['title'] = title;
    _data['user_cover'] = userCover;
    _data['keyframe'] = keyframe;
    _data['is_strict_room'] = isStrictRoom;
    _data['live_time'] = liveTime;
    _data['tags'] = tags;
    _data['is_anchor'] = isAnchor;
    _data['room_silent_type'] = roomSilentType;
    _data['room_silent_level'] = roomSilentLevel;
    _data['room_silent_second'] = roomSilentSecond;
    _data['area_name'] = areaName;
    _data['pendants'] = pendants;
    _data['area_pendants'] = areaPendants;
    _data['hot_words'] = hotWords;
    _data['hot_words_status'] = hotWordsStatus;
    _data['verify'] = verify;
    _data['up_session'] = upSession;
    _data['pk_status'] = pkStatus;
    _data['pk_id'] = pkId;
    _data['battle_id'] = battleId;
    _data['allow_change_area_time'] = allowChangeAreaTime;
    _data['allow_upload_cover_time'] = allowUploadCoverTime;
    return _data;
  }
}
