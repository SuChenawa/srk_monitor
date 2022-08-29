import 'package:json_annotation/json_annotation.dart';

part 'room_info_response_badge.g.dart';

@JsonSerializable()
class Badge {
  String? name;
  int? position;
  String? value;
  String? desc;

  Badge({
    this.name,
    this.position,
    this.value,
    this.desc,
  });

  factory Badge.fromJson(Map<String, dynamic> json) => _$BadgeFromJson(json);

  Map<String, dynamic> toJson() => _$BadgeToJson(this);
}
