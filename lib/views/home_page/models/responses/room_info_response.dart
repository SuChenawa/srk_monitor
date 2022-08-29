import 'package:json_annotation/json_annotation.dart';

import 'room_info_response_data.dart';

part 'room_info_response.g.dart';

@JsonSerializable()
class RoomInfo {
  int? code;
  String? msg;
  String? message;
  Data? data;

  RoomInfo({this.code, this.msg, this.message, this.data});

  factory RoomInfo.fromJson(Map<String, dynamic> json) =>
      _$RoomInfoFromJson(json);

  Map<String, dynamic> toJson() => _$RoomInfoToJson(this);
}
