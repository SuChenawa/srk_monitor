import 'package:srk_monitor/core/data/http_services/http_services.dart';

import '../../api/api.dart';
import '../../dto/live_stream/live_url_dto.dart';

class LiveStreamDataSource {
  static LiveStreamDataSource? _instance;
  factory LiveStreamDataSource() => _instance ??= LiveStreamDataSource._();
  LiveStreamDataSource._();

  Future<LiveStreamUrlDto?> getStreamUrlDto(
    String roomId, {
    required bool useM3u8,
  }) async {
    try {
      final String url = Api.getLiveStreamUrl(roomId, useM3u8);
      final jsonResponse = await HttpService().get(url);
      LiveStreamUrlDto response = LiveStreamUrlDto.fromJson(jsonResponse);
      return response;
    } catch (e) {
      return null;
    }
  }
}
