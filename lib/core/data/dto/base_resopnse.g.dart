// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_resopnse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponse _$BaseResponseFromJson(Map<String, dynamic> json) => BaseResponse(
      code: json['code'] as int,
      msg: json['msg'] as String?,
      message: json['message'] as String?,
      data: json['data'],
    );

Map<String, dynamic> _$BaseResponseToJson(BaseResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'msg': instance.msg,
      'message': instance.message,
      'data': instance.data,
    };
