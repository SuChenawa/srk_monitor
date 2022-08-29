import 'package:json_annotation/json_annotation.dart';

part 'room_info_response_studioinfo.g.dart';

@JsonSerializable()
class StudioInfo {
  int? status;
  List? masterList;

  StudioInfo({this.status, this.masterList});

  factory StudioInfo.fromJson(Map<String, dynamic> json) =>
      _$StudioInfoFromJson(json);

  Map<String, dynamic> toJson() => _$StudioInfoToJson(this);
}
