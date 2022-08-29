// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room_info_response_frame.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Frame _$FrameFromJson(Map<String, dynamic> json) => Frame(
      name: json['name'] as String?,
      value: json['value'] as String?,
      position: json['position'] as int?,
      desc: json['desc'] as String?,
      area: json['area'] as int?,
      areaOld: json['areaOld'] as int?,
      bgColor: json['bgColor'] as String?,
      bgPic: json['bgPic'] as String?,
      useOldArea: json['useOldArea'] as bool?,
    );

Map<String, dynamic> _$FrameToJson(Frame instance) => <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
      'position': instance.position,
      'desc': instance.desc,
      'area': instance.area,
      'areaOld': instance.areaOld,
      'bgColor': instance.bgColor,
      'bgPic': instance.bgPic,
      'useOldArea': instance.useOldArea,
    };
