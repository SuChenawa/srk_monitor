import 'package:flutter/foundation.dart';
import 'package:srk_monitor/core/data/data_source/live_stream/live_stream_data_source.dart';

import '../../../data/dto/live_stream/live_url_dto.dart';

class LiveStreamRepository {
  LiveStreamDataSource dataSource = LiveStreamDataSource();

  Future<LiveStreamUrlDto?> getLiveStreamDto(
    String roomId, {
    required bool useM3u8,
  }) async {
    try {
      final LiveStreamUrlDto? dto = await dataSource.getStreamUrlDto(
        roomId,
        useM3u8: useM3u8,
      );
      if (dto?.code == 0) {
        return dto;
      }
      return null;
    } catch (e) {
      debugPrint('LiveStreamRepository.getLiveStreamDto error: $e');
      return null;
    }
  }
}
