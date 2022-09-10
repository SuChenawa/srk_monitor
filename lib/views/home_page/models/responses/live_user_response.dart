class LiveUserResponse {
  Info? info;
  Exp? exp;
  int? followerNum;
  int? roomId;
  String? medalName;
  int? gloryCount;
  String? pendant;
  int? linkGroupNum;
  RoomNews? roomNews;

  LiveUserResponse(
      {this.info,
      this.exp,
      this.followerNum,
      this.roomId,
      this.medalName,
      this.gloryCount,
      this.pendant,
      this.linkGroupNum,
      this.roomNews});

  LiveUserResponse.fromJson(Map<String, dynamic> json) {
    info = json['info'] != null ? new Info.fromJson(json['info']) : null;
    exp = json['exp'] != null ? new Exp.fromJson(json['exp']) : null;
    followerNum = json['follower_num'];
    roomId = json['room_id'];
    medalName = json['medal_name'];
    gloryCount = json['glory_count'];
    pendant = json['pendant'];
    linkGroupNum = json['link_group_num'];
    roomNews = json['room_news'] != null
        ? new RoomNews.fromJson(json['room_news'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.info != null) {
      data['info'] = this.info!.toJson();
    }
    if (this.exp != null) {
      data['exp'] = this.exp!.toJson();
    }
    data['follower_num'] = this.followerNum;
    data['room_id'] = this.roomId;
    data['medal_name'] = this.medalName;
    data['glory_count'] = this.gloryCount;
    data['pendant'] = this.pendant;
    data['link_group_num'] = this.linkGroupNum;
    if (this.roomNews != null) {
      data['room_news'] = this.roomNews!.toJson();
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

  Info({this.uid, this.uname, this.face, this.officialVerify, this.gender});

  Info.fromJson(Map<String, dynamic> json) {
    uid = json['uid'];
    uname = json['uname'];
    face = json['face'];
    officialVerify = json['official_verify'] != null
        ? new OfficialVerify.fromJson(json['official_verify'])
        : null;
    gender = json['gender'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uid'] = this.uid;
    data['uname'] = this.uname;
    data['face'] = this.face;
    if (this.officialVerify != null) {
      data['official_verify'] = this.officialVerify!.toJson();
    }
    data['gender'] = this.gender;
    return data;
  }
}

class OfficialVerify {
  int? type;
  String? desc;

  OfficialVerify({this.type, this.desc});

  OfficialVerify.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    desc = json['desc'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['desc'] = this.desc;
    return data;
  }
}

class Exp {
  MasterLevel? masterLevel;

  Exp({this.masterLevel});

  Exp.fromJson(Map<String, dynamic> json) {
    masterLevel = json['master_level'] != null
        ? new MasterLevel.fromJson(json['master_level'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.masterLevel != null) {
      data['master_level'] = this.masterLevel!.toJson();
    }
    return data;
  }
}

class MasterLevel {
  int? level;
  int? color;
  List<int>? current;
  List<int>? next;

  MasterLevel({this.level, this.color, this.current, this.next});

  MasterLevel.fromJson(Map<String, dynamic> json) {
    level = json['level'];
    color = json['color'];
    current = json['current'].cast<int>();
    next = json['next'].cast<int>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['level'] = this.level;
    data['color'] = this.color;
    data['current'] = this.current;
    data['next'] = this.next;
    return data;
  }
}

class RoomNews {
  String? content;
  String? ctime;
  String? ctimeText;

  RoomNews({this.content, this.ctime, this.ctimeText});

  RoomNews.fromJson(Map<String, dynamic> json) {
    content = json['content'];
    ctime = json['ctime'];
    ctimeText = json['ctime_text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['content'] = this.content;
    data['ctime'] = this.ctime;
    data['ctime_text'] = this.ctimeText;
    return data;
  }
}
