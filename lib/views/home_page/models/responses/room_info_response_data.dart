import 'package:json_annotation/json_annotation.dart';

import 'room_info_response_new_pendants.dart';
import 'room_info_response_studioinfo.dart';

part 'room_info_response_data.g.dart';

@JsonSerializable()
class Data {
  int? uid;
  int? roomId;
  int? shortId;
  int? attention;
  int? online;
  bool? isPortrait;
  String? description;
  int? liveStatus;
  int? areaId;
  int? parentAreaId;
  String? parentAreaName;
  int? oldAreaId;
  String? background;
  String? title;
  String? userCover;
  String? keyframe;
  bool? isStrictRoom;
  String? liveTime;
  String? tags;
  int? isAnchor;
  String? roomSilentType;
  int? roomSilentLevel;
  int? roomSilentSecond;
  String? areaName;
  String? pendants;
  String? areaPendants;
  List<String>? hotWords;
  int? hotWordsStatus;
  String? verify;
  NewPendants? newPendants;
  String? upSession;
  int? pkStatus;
  int? pkId;
  int? battleId;
  int? allowChangeAreaTime;
  int? allowUploadCoverTime;
  StudioInfo? studioInfo;

  Data(
      {this.uid,
      this.roomId,
      this.shortId,
      this.attention,
      this.online,
      this.isPortrait,
      this.description,
      this.liveStatus,
      this.areaId,
      this.parentAreaId,
      this.parentAreaName,
      this.oldAreaId,
      this.background,
      this.title,
      this.userCover,
      this.keyframe,
      this.isStrictRoom,
      this.liveTime,
      this.tags,
      this.isAnchor,
      this.roomSilentType,
      this.roomSilentLevel,
      this.roomSilentSecond,
      this.areaName,
      this.pendants,
      this.areaPendants,
      this.hotWords,
      this.hotWordsStatus,
      this.verify,
      this.newPendants,
      this.upSession,
      this.pkStatus,
      this.pkId,
      this.battleId,
      this.allowChangeAreaTime,
      this.allowUploadCoverTime,
      this.studioInfo});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
