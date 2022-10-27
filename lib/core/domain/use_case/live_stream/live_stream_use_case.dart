import 'package:srk_monitor/core/data/dto/live_stream/live_url_dto.dart';
import 'package:srk_monitor/core/domain/entity/live_stream/live_stream_entity.dart';
import 'package:srk_monitor/core/domain/repository/live_stream/live_stream_repository.dart';
import 'package:srk_monitor/core/domain/translator/live_stream/live_stream_entity_translator.dart';

class LiveStreamUseCase {
  final LiveStreamRepository repository = LiveStreamRepository();
  final LiveStreamEntity errorModel =
      LiveStreamEntity(roomId: '0', isLive: false, urls: ['error']);

  /// quality can only be one of the following values
  ///
  /// 2：流畅 <== Default value
  ///
  /// 3：高清
  ///
  /// 4：原画
  Future<List<LiveStreamEntity>?> getLiveStreamEntityList(
    List<String> roomIds, {
    required bool useM3u8,
    int quality = 2,
  }) async {
    List<LiveStreamEntity>? list = [];
    for (var element in roomIds) {
      list.add((await _getLiveStreamEntity(
            element,
            useM3u8: useM3u8,
            quality: quality,
          )) ??
          errorModel);
    }
    if (list.isNotEmpty) {
      return list;
    }
    return null;
  }

  Future<LiveStreamEntity?> _getLiveStreamEntity(
    String roomId, {
    required bool useM3u8,
    required int quality,
  }) async {
    final LiveStreamUrlDto? dto = await repository.getLiveStreamDto(
      roomId,
      useM3u8: useM3u8,
      quality: quality,
    );
    if (dto != null) {
      return LiveStreamEntityTranslator.mapDtoToEntity(roomId, dto);
    }
    return null;
  }
}
