import 'package:json_annotation/json_annotation.dart';

import 'room_info_response_badge.dart';
import 'room_info_response_frame.dart';

part 'room_info_response_new_pendants.g.dart';

@JsonSerializable()
class NewPendants {
  Frame? frame;
  Badge? badge;
  Frame? mobileFrame;
  var mobileBadge;

  NewPendants({this.frame, this.badge, this.mobileFrame, this.mobileBadge});

  factory NewPendants.fromJson(Map<String, dynamic> json) =>
      _$NewPendantsFromJson(json);

  Map<String, dynamic> toJson() => _$NewPendantsToJson(this);
}
