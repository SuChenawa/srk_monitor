import 'package:flutter/cupertino.dart';
import 'package:srk_monitor/services/http_services.dart';

import '../model/responses/live_url_response.dart';
import '../utils/api.dart';

class LiveStreamServices {
  static LiveStreamServices? _instance;
  factory LiveStreamServices() => _instance ??= LiveStreamServices._();
  LiveStreamServices._();

  // TODO next step: create providers
  Future<List<String>?> getStreamUrlList(String roomId) async {
    try {
      final String url = LiveStreamApi.getLiveStreamUrl(roomId);
      final jsonResponse = await HttpService().get(url);
      LiveStreamUrlResponse response =
          LiveStreamUrlResponse.fromJson(jsonResponse);
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
