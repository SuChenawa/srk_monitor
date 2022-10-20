import 'package:json_annotation/json_annotation.dart';

part 'base_resopnse.g.dart';

@JsonSerializable()
class BaseResponse {
  final int code;
  final String? msg;
  final String? message;
  dynamic data;

  BaseResponse({
    required this.code,
    this.msg,
    this.message,
    this.data,
  });

  factory BaseResponse.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseFromJson(json);

  factory BaseResponse.fromSuccess(Map<String, dynamic> json, dynamic data) =>
      BaseResponse(
        code: json['code'] ?? 0,
        msg: json['msg'],
        message: json['message'],
        data: data,
      );

  factory BaseResponse.fromFail(
    Map<String, dynamic> jsonData,
    dynamic data,
  ) =>
      BaseResponse(
        code: jsonData['code'] ?? 1,
        msg: jsonData['msg'] ?? '',
        message: jsonData['message'] ?? '',
        data: data,
      );

  Map<String, dynamic> toJson() => _$BaseResponseToJson(this);
}
