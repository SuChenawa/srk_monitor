// QNMD api格式還不統一， 我base response白寫了
class LiveStreamUrlDto {
  int? code;
  String? message;
  int? ttl;
  Data? data;

  LiveStreamUrlDto({this.code, this.message, this.ttl, this.data});

  LiveStreamUrlDto.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
    ttl = json['ttl'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = code;
    data['message'] = message;
    data['ttl'] = ttl;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  int? currentQuality;
  List<String>? acceptQuality;
  int? currentQn;
  List<QualityDescription>? qualityDescription;
  List<Durl>? durl;

  Data(
      {this.currentQuality,
      this.acceptQuality,
      this.currentQn,
      this.qualityDescription,
      this.durl});

  Data.fromJson(Map<String, dynamic> json) {
    currentQuality = json['current_quality'];
    acceptQuality = json['accept_quality'].cast<String>();
    currentQn = json['current_qn'];
    if (json['quality_description'] != null) {
      qualityDescription = <QualityDescription>[];
      json['quality_description'].forEach((v) {
        qualityDescription!.add(QualityDescription.fromJson(v));
      });
    }
    if (json['durl'] != null) {
      durl = <Durl>[];
      json['durl'].forEach((v) {
        durl!.add(Durl.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['current_quality'] = currentQuality;
    data['accept_quality'] = acceptQuality;
    data['current_qn'] = currentQn;
    if (qualityDescription != null) {
      data['quality_description'] =
          qualityDescription!.map((v) => v.toJson()).toList();
    }
    if (durl != null) {
      data['durl'] = durl!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class QualityDescription {
  int? qn;
  String? desc;

  QualityDescription({this.qn, this.desc});

  QualityDescription.fromJson(Map<String, dynamic> json) {
    qn = json['qn'];
    desc = json['desc'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['qn'] = qn;
    data['desc'] = desc;
    return data;
  }
}

class Durl {
  String? url;
  int? length;
  int? order;
  int? streamType;
  int? p2pType;

  Durl({this.url, this.length, this.order, this.streamType, this.p2pType});

  Durl.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    length = json['length'];
    order = json['order'];
    streamType = json['stream_type'];
    p2pType = json['p2p_type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['url'] = url;
    data['length'] = length;
    data['order'] = order;
    data['stream_type'] = streamType;
    data['p2p_type'] = p2pType;
    return data;
  }
}
