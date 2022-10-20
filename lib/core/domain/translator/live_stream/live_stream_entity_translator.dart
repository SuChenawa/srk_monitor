import '../../../data/dto/live_stream/live_url_dto.dart';
import '../../entity/live_stream/live_stream_entity.dart';

class LiveStreamEntityTranslator {
  static LiveStreamEntity mapDtoToEntity(LiveStreamUrlDto dto) {
    final List<String> urls = [];
    dto.data?.durl?.forEach((element) {
      urls.add(element.url ?? '');
    });
    return LiveStreamEntity(urls: urls);
  }
}
