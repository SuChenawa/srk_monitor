// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room_info_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      uid: json['uid'] as int?,
      roomId: json['roomId'] as int?,
      shortId: json['shortId'] as int?,
      attention: json['attention'] as int?,
      online: json['online'] as int?,
      isPortrait: json['isPortrait'] as bool?,
      description: json['description'] as String?,
      liveStatus: json['liveStatus'] as int?,
      areaId: json['areaId'] as int?,
      parentAreaId: json['parentAreaId'] as int?,
      parentAreaName: json['parentAreaName'] as String?,
      oldAreaId: json['oldAreaId'] as int?,
      background: json['background'] as String?,
      title: json['title'] as String?,
      userCover: json['userCover'] as String?,
      keyframe: json['keyframe'] as String?,
      isStrictRoom: json['isStrictRoom'] as bool?,
      liveTime: json['liveTime'] as String?,
      tags: json['tags'] as String?,
      isAnchor: json['isAnchor'] as int?,
      roomSilentType: json['roomSilentType'] as String?,
      roomSilentLevel: json['roomSilentLevel'] as int?,
      roomSilentSecond: json['roomSilentSecond'] as int?,
      areaName: json['areaName'] as String?,
      pendants: json['pendants'] as String?,
      areaPendants: json['areaPendants'] as String?,
      hotWords: (json['hotWords'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      hotWordsStatus: json['hotWordsStatus'] as int?,
      verify: json['verify'] as String?,
      newPendants: json['newPendants'] == null
          ? null
          : NewPendants.fromJson(json['newPendants'] as Map<String, dynamic>),
      upSession: json['upSession'] as String?,
      pkStatus: json['pkStatus'] as int?,
      pkId: json['pkId'] as int?,
      battleId: json['battleId'] as int?,
      allowChangeAreaTime: json['allowChangeAreaTime'] as int?,
      allowUploadCoverTime: json['allowUploadCoverTime'] as int?,
      studioInfo: json['studioInfo'] == null
          ? null
          : StudioInfo.fromJson(json['studioInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'uid': instance.uid,
      'roomId': instance.roomId,
      'shortId': instance.shortId,
      'attention': instance.attention,
      'online': instance.online,
      'isPortrait': instance.isPortrait,
      'description': instance.description,
      'liveStatus': instance.liveStatus,
      'areaId': instance.areaId,
      'parentAreaId': instance.parentAreaId,
      'parentAreaName': instance.parentAreaName,
      'oldAreaId': instance.oldAreaId,
      'background': instance.background,
      'title': instance.title,
      'userCover': instance.userCover,
      'keyframe': instance.keyframe,
      'isStrictRoom': instance.isStrictRoom,
      'liveTime': instance.liveTime,
      'tags': instance.tags,
      'isAnchor': instance.isAnchor,
      'roomSilentType': instance.roomSilentType,
      'roomSilentLevel': instance.roomSilentLevel,
      'roomSilentSecond': instance.roomSilentSecond,
      'areaName': instance.areaName,
      'pendants': instance.pendants,
      'areaPendants': instance.areaPendants,
      'hotWords': instance.hotWords,
      'hotWordsStatus': instance.hotWordsStatus,
      'verify': instance.verify,
      'newPendants': instance.newPendants,
      'upSession': instance.upSession,
      'pkStatus': instance.pkStatus,
      'pkId': instance.pkId,
      'battleId': instance.battleId,
      'allowChangeAreaTime': instance.allowChangeAreaTime,
      'allowUploadCoverTime': instance.allowUploadCoverTime,
      'studioInfo': instance.studioInfo,
    };
