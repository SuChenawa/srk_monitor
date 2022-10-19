import 'package:flutter/cupertino.dart';
import 'package:srk_monitor/core/data/http_services/http_services.dart';

import '../../dto/live_stream/live_url_dto.dart';
import '../../../../views/live_stream/utils/api.dart';

class LiveStreamDataSource {
  static LiveStreamDataSource? _instance;
  factory LiveStreamDataSource() => _instance ??= LiveStreamDataSource._();
  LiveStreamDataSource._();

  // TODO next step: create providers
  Future<List<String>?> getStreamUrlList(String roomId) async {
    try {
      final String url = LiveStreamApi.getLiveStreamUrl(roomId);
      final jsonResponse = await HttpService().get(url);
      LiveStreamUrlDto response = LiveStreamUrlDto.fromJson(jsonResponse);
      List<String> urlList = [];
      response.data?.durl?.forEach((element) {
        urlList.add(element.url ?? '');
      });
      return urlList;
    } catch (e) {
      debugPrint('LiveStreamServices.getStreamUrlList error:  $e');
    }
  }
}
