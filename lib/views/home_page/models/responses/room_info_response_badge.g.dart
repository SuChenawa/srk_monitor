// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room_info_response_badge.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Badge _$BadgeFromJson(Map<String, dynamic> json) => Badge(
      name: json['name'] as String?,
      position: json['position'] as int?,
      value: json['value'] as String?,
      desc: json['desc'] as String?,
    );

Map<String, dynamic> _$BadgeToJson(Badge instance) => <String, dynamic>{
      'name': instance.name,
      'position': instance.position,
      'value': instance.value,
      'desc': instance.desc,
    };
