// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RoomInfo _$RoomInfoFromJson(Map<String, dynamic> json) => RoomInfo(
      code: json['code'] as int?,
      msg: json['msg'] as String?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RoomInfoToJson(RoomInfo instance) => <String, dynamic>{
      'code': instance.code,
      'msg': instance.msg,
      'message': instance.message,
      'data': instance.data,
    };
