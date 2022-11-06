class LocalBig1Small7StorageModel {
  List<Big1Small7>? big1Small7;

  LocalBig1Small7StorageModel({this.big1Small7});

  LocalBig1Small7StorageModel.fromJson(Map<String, dynamic> json) {
    if (json['big1Small7'] != null) {
      big1Small7 = <Big1Small7>[];
      json['big1Small7'].forEach((v) {
        big1Small7!.add(Big1Small7.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (big1Small7 != null) {
      data['big1Small7'] = big1Small7!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Big1Small7 {
  int? playerId;
  String? roomId;

  Big1Small7({this.playerId, this.roomId});

  Big1Small7.fromJson(Map<String, dynamic> json) {
    playerId = json['playerId'];
    roomId = json['roomId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['playerId'] = playerId;
    data['roomId'] = roomId;
    return data;
  }
}
