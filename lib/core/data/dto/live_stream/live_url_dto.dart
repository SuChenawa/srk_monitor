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
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['message'] = this.message;
    data['ttl'] = this.ttl;
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
        qualityDescription!.add(new QualityDescription.fromJson(v));
      });
    }
    if (json['durl'] != null) {
      durl = <Durl>[];
      json['durl'].forEach((v) {
        durl!.add(new Durl.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['current_quality'] = this.currentQuality;
    data['accept_quality'] = this.acceptQuality;
    data['current_qn'] = this.currentQn;
    if (this.qualityDescription != null) {
      data['quality_description'] =
          this.qualityDescription!.map((v) => v.toJson()).toList();
    }
    if (this.durl != null) {
      data['durl'] = this.durl!.map((v) => v.toJson()).toList();
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['qn'] = this.qn;
    data['desc'] = this.desc;
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['url'] = this.url;
    data['length'] = this.length;
    data['order'] = this.order;
    data['stream_type'] = this.streamType;
    data['p2p_type'] = this.p2pType;
    return data;
  }
}
