// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room_info_response_new_pendants.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewPendants _$NewPendantsFromJson(Map<String, dynamic> json) => NewPendants(
      frame: json['frame'] == null
          ? null
          : Frame.fromJson(json['frame'] as Map<String, dynamic>),
      badge: json['badge'] == null
          ? null
          : Badge.fromJson(json['badge'] as Map<String, dynamic>),
      mobileFrame: json['mobileFrame'] == null
          ? null
          : Frame.fromJson(json['mobileFrame'] as Map<String, dynamic>),
      mobileBadge: json['mobileBadge'],
    );

Map<String, dynamic> _$NewPendantsToJson(NewPendants instance) =>
    <String, dynamic>{
      'frame': instance.frame,
      'badge': instance.badge,
      'mobileFrame': instance.mobileFrame,
      'mobileBadge': instance.mobileBadge,
    };
