import 'package:json_annotation/json_annotation.dart';

part 'room_info_response_frame.g.dart';

@JsonSerializable()
class Frame {
  String? name;
  String? value;
  int? position;
  String? desc;
  int? area;
  int? areaOld;
  String? bgColor;
  String? bgPic;
  bool? useOldArea;

  Frame(
      {this.name,
      this.value,
      this.position,
      this.desc,
      this.area,
      this.areaOld,
      this.bgColor,
      this.bgPic,
      this.useOldArea});

  factory Frame.fromJson(Map<String, dynamic> json) => _$FrameFromJson(json);

  Map<String, dynamic> toJson() => _$FrameToJson(this);
}
