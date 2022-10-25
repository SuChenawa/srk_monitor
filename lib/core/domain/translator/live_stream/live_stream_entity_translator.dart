import '../../../data/dto/live_stream/live_url_dto.dart';
import '../../entity/live_stream/live_stream_entity.dart';

class LiveStreamEntityTranslator {
  static LiveStreamEntity mapDtoToEntity(String roomId, LiveStreamUrlDto dto) {
    final List<String> urls = [];
    dto.data?.durl?.forEach((element) {
      urls.add(_replaceSpecialCharacters(element.url ?? ''));
    });
    return LiveStreamEntity(
      roomId: roomId,
      isLive: false,
      urls: urls,
    );
  }

  static String _replaceSpecialCharacters(String url) {
    return url.replaceAll(RegExp(r'\u0026'), '&');
  }
}
