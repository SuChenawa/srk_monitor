class LiveUserDto {
  Info? info;
  Exp? exp;
  int? followerNum;
  int? roomId;
  String? medalName;
  int? gloryCount;
  String? pendant;
  int? linkGroupNum;
  RoomNews? roomNews;

  LiveUserDto(
      {info,
      exp,
      followerNum,
      roomId,
      medalName,
      gloryCount,
      pendant,
      linkGroupNum,
      roomNews});

  LiveUserDto.fromJson(Map<String, dynamic> json) {
    info = json['info'] != null ? Info.fromJson(json['info']) : null;
    exp = json['exp'] != null ? Exp.fromJson(json['exp']) : null;
    followerNum = json['follower_num'];
    roomId = json['room_id'];
    medalName = json['medal_name'];
    gloryCount = json['glory_count'];
    pendant = json['pendant'];
    linkGroupNum = json['link_group_num'];
    roomNews =
        json['room_news'] != null ? RoomNews.fromJson(json['room_news']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (info != null) {
      data['info'] = info!.toJson();
    }
    if (exp != null) {
      data['exp'] = exp!.toJson();
    }
    data['follower_num'] = followerNum;
    data['room_id'] = roomId;
    data['medal_name'] = medalName;
    data['glory_count'] = gloryCount;
    data['pendant'] = pendant;
    data['link_group_num'] = linkGroupNum;
    if (roomNews != null) {
      data['room_news'] = roomNews!.toJson();
    }
    return data;
  }
}

class Info {
  int? uid;
  String? uname;
  String? face;
  OfficialVerify? officialVerify;
  int? gender;

  Info({uid, uname, face, officialVerify, gender});

  Info.fromJson(Map<String, dynamic> json) {
    uid = json['uid'];
    uname = json['uname'];
    face = json['face'];
    officialVerify = json['official_verify'] != null
        ? OfficialVerify.fromJson(json['official_verify'])
        : null;
    gender = json['gender'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['uid'] = uid;
    data['uname'] = uname;
    data['face'] = face;
    if (officialVerify != null) {
      data['official_verify'] = officialVerify!.toJson();
    }
    data['gender'] = gender;
    return data;
  }
}

class OfficialVerify {
  int? type;
  String? desc;

  OfficialVerify({type, desc});

  OfficialVerify.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    desc = json['desc'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['type'] = type;
    data['desc'] = desc;
    return data;
  }
}

class Exp {
  MasterLevel? masterLevel;

  Exp({masterLevel});

  Exp.fromJson(Map<String, dynamic> json) {
    masterLevel = json['master_level'] != null
        ? MasterLevel.fromJson(json['master_level'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (masterLevel != null) {
      data['master_level'] = masterLevel!.toJson();
    }
    return data;
  }
}

class MasterLevel {
  int? level;
  int? color;
  List<int>? current;
  List<int>? next;

  MasterLevel({level, color, current, next});

  MasterLevel.fromJson(Map<String, dynamic> json) {
    level = json['level'];
    color = json['color'];
    current = json['current'].cast<int>();
    next = json['next'].cast<int>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['level'] = level;
    data['color'] = color;
    data['current'] = current;
    data['next'] = next;
    return data;
  }
}

class RoomNews {
  String? content;
  String? ctime;
  String? ctimeText;

  RoomNews({content, ctime, ctimeText});

  RoomNews.fromJson(Map<String, dynamic> json) {
    content = json['content'];
    ctime = json['ctime'];
    ctimeText = json['ctime_text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['content'] = content;
    data['ctime'] = ctime;
    data['ctime_text'] = ctimeText;
    return data;
  }
}
